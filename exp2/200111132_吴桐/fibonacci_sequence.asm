
## 使用32-bit 寄存器

start:
addi a0,x0,20
jal ra,fib
add s3,x0,a0
jal x0,over

fib:
# 初始化设置递归结束条件
.L1:
addi s0,x0,1
addi s1,x0,2

# fib主要程序部分
.L2:
# 判断是否递归到终点
beq a0,s0,.L3
beq a0,s1,.L3
# callee 被调用者防止覆盖
addi sp,sp,-8
sw s6,4(sp)
sw s5,0(sp)

# caller 调用者防止覆盖
addi sp,sp,-8
sw a0,4(sp)
sw ra,0(sp)

# 调用fib(n-1)
addi a0,a0,-1
jal ra,.L2
# 保存结果在s5
add s5,x0,a0

# 调用fib(n-2)
lw a0,4(sp)
addi a0,a0,-2
jal ra,.L2

#储存结果在s6
add s6,x0,a0

# caller 调用者重新弹出
lw ra,0(sp)
lw a0,4(sp)
addi sp,sp,8

# a0返回值
add a0,s5,s6

# callee 被调用者重新弹出
lw s5,0(sp)
lw s6,4(sp)
addi sp,sp,8

# 返回
ret

# 递归终点返回结果
.L3:
addi a0,x0,1
ret

over: