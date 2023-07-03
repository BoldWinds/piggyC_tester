.Ltext0:
	.globl a
	.align 2
	.type a, @object
	.size a, 4
a:
	.word 0
	.globl b
	.align 2
	.type b, @object
	.size b, 4
b:
	.word 0
	.globl c
	.align 2
	.type c, @object
	.size c, 4
c:
	.word 0
	.globl d
	.align 2
	.type d, @object
	.size d, 4
d:
	.word 0
	.globl e
	.align 2
	.type e, @object
	.size e, 4
e:
	.word 0
	.text
	.global main
	.type main,@function
main:
.main_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	call getint()
	lui a0,%hi(a)
	sw a0, %lo(a)(a0)
	call getint()
	lui a0,%hi(b)
	sw a0, %lo(b)(a0)
	call getint()
	lui a0,%hi(c)
	sw a0, %lo(c)(a0)
	call getint()
	lui a0,%hi(d)
	sw a0, %lo(d)(a0)
	call getint()
	lui a0,%hi(e)
	sw a0, %lo(e)(a0)
	li a0,0
	sw a0,-24(s0)
	lui a0,%hi(a)
	lw a1,%lo(a)(a0)
	lui a0,%hi(b)
	lw a2,%lo(b)(a0)
	lui a0,%hi(c)
	lw a3,%lo(c)(a0)
	mulw a0,a2,a3
	subw a3, a1, a0
	lui a0,%hi(d)
	lw a1,%lo(d)(a0)
	lui a0,%hi(a)
	lw a2,%lo(a)(a0)
	lui a0,%hi(c)
	lw a4,%lo(c)(a0)
	divw a0, a2, a4
	subw a4, a1, a0
	sext.w a0,a3
	sext.w a3,a4
	bne a0,a3,.main_LBB_39
	j .main_LBB_19
.main_LBB_19:
	lui a4,%hi(a)
	lw a3,%lo(a)(a4)
	lui a4,%hi(b)
	lw a0,%lo(b)(a4)
	mulw a4,a3,a0
	lui a0,%hi(c)
	lw a3,%lo(c)(a0)
	divw a0, a4, a3
	lui a3,%hi(e)
	lw a4,%lo(e)(a3)
	lui a3,%hi(d)
	lw a1,%lo(d)(a3)
	addw a3,a4,a1
	sext.w a1,a0
	sext.w a0,a3
	beq a1,a0,.main_LBB_39
	j .main_LBB_29
.main_LBB_29:
	lui a3,%hi(a)
	lw a0,%lo(a)(a3)
	lui a3,%hi(b)
	lw a1,%lo(b)(a3)
	addw a3,a0,a1
	lui a1,%hi(c)
	lw a0,%lo(c)(a1)
	addw a1,a3,a0
	lui a0,%hi(d)
	lw a3,%lo(d)(a0)
	lui a0,%hi(e)
	lw a4,%lo(e)(a0)
	addw a0,a3,a4
	sext.w a4,a1
	sext.w a1,a0
	beq a4,a1,.main_LBB_39
	j .main_LBB_40
.main_LBB_39:
	li a0,1
	sw a0,-24(s0)
	j .main_LBB_40
.main_LBB_40:
	lw a0, -24(s0)
	sw a0,-20(s0)
	j .main_LBB_42
.main_LBB_42:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
