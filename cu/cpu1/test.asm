	# addi s1,s1,3
	lui   s1,0xFFFFF
	addi  s5,0,1 # s5 = b01
	addi  s6,0,2 # s6 = b10
            
# switled:                          # Test led and switch
# 	lw   s0,0x70(s1)          # read switch
# 	sw   s0,0x60(s1)          # write led	
#     sw   s0,0x00(s1)
# 	jal switled

RED:
	lw  s0,0x70(s2)

	andi s2,s0,0xff 
	slli s2,s2,24
	srai s2,s2,24			# s2 = A 并且进行符号拓展

	srai s3,s0,8
	andi s3,s0,0xff
	slli s3,s3,24
	srai s3,s3,24			# s3 = B 并且进行符号拓展

	srai s4,s0,21
	andi s4,s0,0x7			# s4 = CONDUCTOR


	addi t0,t0,0
	beq s4,t0,NON
	addi t0,t0,1
	beq s4,t0,ADD
	addi t0,t0,1
	beq s4,t0,SUB
	addi t0,t0,1
	beq s4,t0,AND
	addi t0,t0,1
	beq s4,t0,OR
	addi t0,t0,1
	beq s4,t0,LEFT
	addi t0,t0,1
	beq s4,t0,RIGHT
	addi t0,t0,1
	beq s4,t0,MUT
	j NON # 出现非法输入 设定为NON操作
	j RED



NON:
	# 如果CONDUCTOR为0，则显示全灭
	add t0,x0,x0
	sw x0,0x60(s1)
	sw x0,0x00(s1)
	jal x0,RED 

ADD:
	# 如果CONDUCTOR为1，则显示A+B
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
	add t0,x0,x0
	j RED

LEFT:
	# 如果CONDUCTOR为5，则显示A<<B
	sll t1,s2,s3
	sw t1,0x60(s1)
	sw t1,0x00(s1)
	add t0,x0,x0
	j RED


RIGHT:

	# 如果CONDUCTOR为6，则显示A>>B
	sra t1,s2,s3
	sw t1,0x60(s1)
	sw t1,0x00(s1)
	add t0,x0,x0
	j RED

MUT:
	# 如果CONDUCTOR为7，则显示A*B
	addi t1,x0,0
	sub t2,0,s2 # t2 存 -A 补码
	slli t2,t2,8 # t2 存 -A << 8
	slli t3,s2,8 # t3 存 A << 8
	addi t5,x0,0
	addi s10,x0,7
	andi t4,s3,0x1 # t4 存 B 的最低位
	beq t3,x0,MUTONE
	add t1,t1,t2
MUTONE:
	beq t5,s10,MUTTHREE
	srai t1,t1,1
	sll t6,s3,t5
	andi t6,t6,0x3 # t6 存 B booth 意义上 的最低两位
	beq t6,s5,MUTADDO
	beq t6,s6,MUTADDF
MUTTWO:
	addi t5,t5,1
	beq x0,x0,MUTONE

MUTTHREE:
	srai t1,t1,1
	sw t1,0x60(s1)
	sw t1,0x00(s1)
	add t0,x0,x0
	j RED

MUTADDO:
	add t1,t1,t3
	j MUTTWO


MUTADDF:
	add t1,t1,t2
	j MUTTWO





	
	

