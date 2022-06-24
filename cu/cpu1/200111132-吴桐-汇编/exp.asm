	# 初始化操作
	lui   s1,0xFFFFF # 初始化灯地址
	addi  s5,x0,1 # s5 = b01
	addi  s6,x0,2 # s6 = b10 s5，s6用于booth判断
        
# 取指令操作

# 后续运算操作全部是先将8位数看作补码取出，并符号扩展为32位后进行运算
RED:
	lw  s0,0x70(s1) # 读取此时拨码开关地址
	andi s2,s0,0xff # 与操作得到最后八位
	slli s2,s2,24	
	srai s2,s2,24	# s2 = A 并且 通过位移 进行符号拓展

	srai s3,s0,8	# 先将[15:8]移到末尾 andi有立即数范围限制
	andi s3,s3,0xff	# 与操作得到原来指令[15:8]八位
	slli s3,s3,24
	srai s3,s3,24	# s3 = B 并且通过 位移 进行符号拓展

	srai s4,s0,21
	andi s4,s4,0x7	# s4 = CONDUCTOR

# 判断指令运算类型
	add t0,x0,x0 # t0作为计数器，用于判断当前是否是第i条操作
	beq s4,t0,NON # 如果CONDUCTOR = 000 则为无运算
	addi t0,t0,1
	beq s4,t0,ADD	# 如果CONDUCTOR = 001 则为加法运算
	addi t0,t0,1
	beq s4,t0,SUB	# 如果CONDUCTOR = 010 则为减法运算
	addi t0,t0,1
	beq s4,t0,AND	# 如果CONDUCTOR = 011 则为与运算
	addi t0,t0,1
	beq s4,t0,OR	# 如果CONDUCTOR = 100 则为或运算
	addi t0,t0,1
	beq s4,t0,LEFT	# 如果CONDUCTOR = 101 则为左移运算
	addi t0,t0,1
	beq s4,t0,RIGHT # 如果CONDUCTOR = 110 则为右移运算
	addi t0,t0,1
	beq s4,t0,MUT	# 如果CONDUCTOR = 111 则为异或运算
	j NON # 出现非法输入 设定为NON操作
	j RED



NON:
	# 如果CONDUCTOR为0，则显示结果全灭
	add t0,x0,x0
	sw x0,0x60(s1)
	sw x0,0x00(s1)
	jal x0,RED 

ADD:
	# 如果CONDUCTOR为1，则显示结果A+B
	add t1,s2,s3
	sw t1,0x60(s1)
	sw t1,0x00(s1)
	add t0,x0,x0
	j RED


SUB:
	# 如果CONDUCTOR为2，则显示A-B
	sub t1,s2,s3
	sw t1,0x60(s1)
	sw t1,0x00(s1)
	add t0,x0,x0
	j RED

AND:
	# 这里操作的是两个八位数符号拓展后的结果
	# 如果CONDUCTOR为3，则显示A&B
	and t1,s2,s3
	sw t1,0x60(s1)
	sw t1,0x00(s1)
	add t0,x0,x0
	j RED

OR:
	# 这里操作的是两个八位数符号拓展后的结果
	# 如果CONDUCTOR为4，则显示A|B
	or t1,s2,s3
	sw t1,0x60(s1)
	sw t1,0x00(s1)
	add t0,x0,x0 # 计数器归零
	j RED	# 返回到RED

LEFT:
	# 如果CONDUCTOR为5，则显示A<<B
	sll t1,s2,s3
	sw t1,0x60(s1)
	sw t1,0x00(s1)
	add t0,x0,x0 #计数器归0
	j RED	# 跳转到RED


RIGHT:

	# 如果CONDUCTOR为6，则显示A>>B
	sra t1,s2,s3
	sw t1,0x60(s1)
	sw t1,0x00(s1)
	add t0,x0,x0 #计数器归0
	j RED # 跳转到RED

MUT:
	# 如果CONDUCTOR为7，则显示A*B
	# 我的booth逻辑上看是  [ 加 ，（位移+加）*7 ] 
	addi t1,x0,0 # 初始化t1，后续保存结果
	sub t2,x0,s2 # t2 存 -A 补码
	slli t2,t2,8 # t2 存 -A << 8
	slli t3,s2,8 # t3 存 A << 8
	addi t5,x0,0	# t5 存 0 记录运算（位移）次数
	addi s10,x0,7 # s10 存 7 n=7 booth算法位移次数上限
	andi t4,s3,0x1 # t4 存 B 的最低位
	beq t4,x0,MUTONE # 如果B的最低位为0（即一开始00，不做加法），则跳转到MUTONE
	add t1,t1,t2 # 如果B的最低位为1，则相当于一开始10，则需要加上-A补，再跳转到MUTONE
MUTONE:
	beq t5,s10,MUTTHREE # 如果位移次数已经达到上限，则跳转到MUTTHREE
	srai t1,t1,1 # 将t1算数向右移动一位
	sra t6,s3,t5	# t6 存 B >> t5，用于后续booth判断当前最后两位
	andi t6,t6,0x3 # t6 存 B booth 意义上 的最低两位
	beq t6,s5,MUTADDO # 如果B的最低两位为01，则跳转到MUTADDO
	beq t6,s6,MUTADDF # 如果B的最低两位为10，则跳转到MUTADDF
MUTTWO:
	addi t5,t5,1 # 增加位移次数
	beq x0,x0,MUTONE # 设置的一个用于跳转的统一地址（无论需不需要加）

MUTTHREE:
	srai t1,t1,1 # 将t1算数向右移动一位（因为此时结果在[16:1]当然前面还有符号扩充在[31:17]）
	sw t1,0x60(s1) # 显示运算结果
	sw t1,0x00(s1)	# 显示运算结果
	add t0,x0,x0 # 计数器归0
	j RED	# 跳转到RED

MUTADDO:
	add t1,t1,t3 # 加上A补
	j MUTTWO	# 跳转到MUTTWO


MUTADDF:
	add t1,t1,t2 # 加上-A补
	j MUTTWO # 跳转到MUTTWO





	
	

