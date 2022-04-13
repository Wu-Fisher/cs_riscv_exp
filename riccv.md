### 常用指令

预编译
riscv64-unknown-elf-gcc -E main.c -o main.i

编译得到汇编文件
riscv64-unknown-elf-gcc -S main.i -o main.s  -O2

汇编

riscv64-unknown-elf-gcc -c main.s -o main.o

直接生存可执行
riscv64-unknown-elf-gcc main.c -o main

查看机械玛
riscv64-unknown-elf-objdump -D main.o

执行
spike pk main 