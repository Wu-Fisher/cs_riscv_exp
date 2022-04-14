main.o：     文件格式 elf64-littleriscv


Disassembly of section .text:

0000000000000000 <muti>:
   0:	fff5069b          	addiw	a3,a0,-1
   4:	8536                	mv	a0,a3
   6:	00d595bb          	sllw	a1,a1,a3
   a:	ce89                	beqz	a3,24 <.L2>
   c:	4781                	li	a5,0
   e:	4501                	li	a0,0

0000000000000010 <.L4>:
  10:	00f6573b          	srlw	a4,a2,a5
  14:	8b05                	andi	a4,a4,1
  16:	2785                	addiw	a5,a5,1
  18:	c311                	beqz	a4,1c <.L3>
  1a:	9d2d                	addw	a0,a0,a1

000000000000001c <.L3>:
  1c:	0015551b          	srliw	a0,a0,0x1
  20:	fed798e3          	bne	a5,a3,10 <.L4>

0000000000000024 <.L2>:
  24:	8082                	ret

Disassembly of section .rodata.str1.8:

0000000000000000 <.LC0>:
   0:	756e                	ld	a0,248(sp)
   2:	3a6d                	addiw	s4,s4,-5
   4:	6425                	lui	s0,0x9
   6:	632c                	ld	a1,64(a4)
   8:	6275                	lui	tp,0x1d
   a:	6465                	lui	s0,0x19
   c:	253a                	fld	fa0,392(sp)
   e:	0a64                	addi	s1,sp,284
	...

Disassembly of section .text.startup:

0000000000000000 <main>:
   0:	4781                	li	a5,0
   2:	4681                	li	a3,0
   4:	451d                	li	a0,7
   6:	02000593          	li	a1,32
   a:	6805                	lui	a6,0x1

000000000000000c <.L14>:
   c:	2785                	addiw	a5,a5,1
   e:	0016d69b          	srliw	a3,a3,0x1
  12:	00f5d73b          	srlw	a4,a1,a5
  16:	8636                	mv	a2,a3
  18:	8b05                	andi	a4,a4,1
  1a:	00a78e63          	beq	a5,a0,36 <.L26>

000000000000001e <.L16>:
  1e:	d77d                	beqz	a4,c <.L14>
  20:	00c806bb          	addw	a3,a6,a2
  24:	2785                	addiw	a5,a5,1
  26:	0016d69b          	srliw	a3,a3,0x1
  2a:	00f5d73b          	srlw	a4,a1,a5
  2e:	8636                	mv	a2,a3
  30:	8b05                	andi	a4,a4,1
  32:	fea796e3          	bne	a5,a0,1e <.L16>

0000000000000036 <.L26>:
  36:	4601                	li	a2,0
  38:	4781                	li	a5,0
  3a:	00100537          	lui	a0,0x100
  3e:	45bd                	li	a1,15

0000000000000040 <.L18>:
  40:	00f6d73b          	srlw	a4,a3,a5
  44:	8b05                	andi	a4,a4,1
  46:	2785                	addiw	a5,a5,1
  48:	c311                	beqz	a4,4c <.L17>
  4a:	9e29                	addw	a2,a2,a0

000000000000004c <.L17>:
  4c:	0016561b          	srliw	a2,a2,0x1
  50:	feb798e3          	bne	a5,a1,40 <.L18>
  54:	00000537          	lui	a0,0x0
  58:	02000593          	li	a1,32
  5c:	00050513          	mv	a0,a0
  60:	00000317          	auipc	t1,0x0
  64:	00030067          	jr	t1 # 60 <.L17+0x14>

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	4700                	lw	s0,8(a4)
   2:	203a4343          	fmadd.s	ft6,fs4,ft3,ft4,rmm
   6:	4728                	lw	a0,72(a4)
   8:	554e                	lw	a0,240(sp)
   a:	2029                	0x2029
   c:	2e39                	addiw	t3,t3,14
   e:	2e32                	fld	ft8,264(sp)
  10:	0030                	addi	a2,sp,8

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	3441                	addiw	s0,s0,-16
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	002a                	c.slli	zero,0xa
   e:	0000                	unimp
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3676                	fld	fa2,376(sp)
  16:	6934                	ld	a3,80(a0)
  18:	7032                	0x7032
  1a:	5f30                	lw	a2,120(a4)
  1c:	326d                	addiw	tp,tp,-5
  1e:	3070                	fld	fa2,224(s0)
  20:	615f 7032 5f30      	0x5f307032615f
  26:	3266                	fld	ft4,120(sp)
  28:	3070                	fld	fa2,224(s0)
  2a:	645f 7032 5f30      	0x5f307032645f
  30:	30703263          	0x30703263
