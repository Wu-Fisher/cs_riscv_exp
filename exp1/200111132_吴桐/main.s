	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	muti
	.type	muti, @function
muti:
	addiw	a3,a0,-1
	mv	a0,a3
	sllw	a1,a1,a3
	beq	a3,zero,.L2
	li	a5,0
	li	a0,0
.L4:
	srlw	a4,a2,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	beq	a4,zero,.L3
	addw	a0,a1,a0
.L3:
	srliw	a0,a0,1
	bne	a5,a3,.L4
.L2:
	ret
	.size	muti, .-muti
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"num:%d,cubed:%d\n"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	li	a5,0
	li	a3,0
	li	a0,7
	li	a1,32
	li	a6,4096
.L14:
	addiw	a5,a5,1
	srliw	a3,a3,1
	srlw	a4,a1,a5
	mv	a2,a3
	andi	a4,a4,1
	beq	a5,a0,.L26
.L16:
	beq	a4,zero,.L14
	addw	a3,a6,a2
	addiw	a5,a5,1
	srliw	a3,a3,1
	srlw	a4,a1,a5
	mv	a2,a3
	andi	a4,a4,1
	bne	a5,a0,.L16
.L26:
	li	a2,0
	li	a5,0
	li	a0,1048576
	li	a1,15
.L18:
	srlw	a4,a3,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	beq	a4,zero,.L17
	addw	a2,a0,a2
.L17:
	srliw	a2,a2,1
	bne	a5,a1,.L18
	lui	a0,%hi(.LC0)
	li	a1,32
	addi	a0,a0,%lo(.LC0)
	tail	printf
	.size	main, .-main
	.ident	"GCC: (GNU) 9.2.0"
