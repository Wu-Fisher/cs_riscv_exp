
## ʹ��32-bit �Ĵ���

start:
addi a0,x0,20
jal ra,fib
add s3,x0,a0
jal x0,over

fib:
# ��ʼ�����õݹ��������
.L1:
addi s0,x0,1
addi s1,x0,2

# fib��Ҫ���򲿷�
.L2:
# �ж��Ƿ�ݹ鵽�յ�
beq a0,s0,.L3
beq a0,s1,.L3
# callee �������߷�ֹ����
addi sp,sp,-8
sw s6,4(sp)
sw s5,0(sp)

# caller �����߷�ֹ����
addi sp,sp,-8
sw a0,4(sp)
sw ra,0(sp)

# ����fib(n-1)
addi a0,a0,-1
jal ra,.L2
# ��������s5
add s5,x0,a0

# ����fib(n-2)
lw a0,4(sp)
addi a0,a0,-2
jal ra,.L2

#��������s6
add s6,x0,a0

# caller ���������µ���
lw ra,0(sp)
lw a0,4(sp)
addi sp,sp,8

# a0����ֵ
add a0,s5,s6

# callee �����������µ���
lw s5,0(sp)
lw s6,4(sp)
addi sp,sp,8

# ����
ret

# �ݹ��յ㷵�ؽ��
.L3:
addi a0,x0,1
ret

over: