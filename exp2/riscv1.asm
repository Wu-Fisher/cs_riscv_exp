.text
start:

# 将学号读取到 a0 寄存器中
	lui t0,0x00002
	lw a0,0x0(t0)
	
# 调用子程序toHex函数进行十六进制转换	
	jal x1,toHex

# 按照题目要求将返回值写入到s3寄存器中
	add s3,x0,a0

# 程序执行完毕，跳转到over
	jal x0,over

toHex:
	# 初步分配寄存器
	# t0存放学号以及后续除以16的结果
	# t1用于存放转为16进制的结果
	# t3用于记录当前取余获得的数在结果的位数上（从0开始）
	# s1用于储存常数16
	add t0,x0,a0
	add t1,x0,x0
	add t3,x0,x0
	addi s1,x0,16

	# 直接法主要操作部分
.L1:
	# 如果当前操作数为0，则运算结束，跳转到返回值操作.L2	
	beq t0,x0,.L2
	# 对操作数取余16 结果储存在t2
	rem t2,t0,s1
	# 将当前所在位数（t3）*4，得到实际偏移位数（二进制意义下）
	slli t4,t3,2
	# 将t2左移到实际位数，用于下一步相加
	sll t2,t2,t4
	# 将t1加上新获得下一位位数的结果
	add t1,t1,t2
	# 将t0除以16，得到下一位的操作数
	srli t0,t0,4
	# 将当前位数加1
	addi t3,t3,1
	# 跳转，进入下一次循环
	jal x0,.L1
	
.L2:
	# 将t1的值返回到x0
	add a0,x0,t1
	# 返回
	jalr x0,0x0(x1)

over:	
			
.data
	#本人学号
	number: .word 200111132
	