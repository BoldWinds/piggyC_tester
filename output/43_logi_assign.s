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
	lui a0,%hi(a)
	lw a1,%lo(a)(a0)
	lui a0,%hi(b)
	lw a2,%lo(b)(a0)
	sext.w a0,a1
	sext.w a1,a2
	beq a0,a1,.main_LBB_8
	j .main_LBB_12
.main_LBB_8:
	lui a2,%hi(a)
	lw a1,%lo(a)(a2)
	li a2,3
	sext.w a0,a1
	bne a0,a2,.main_LBB_11
	j .main_LBB_12
.main_LBB_11:
	li a1,1
	sw a1,-24(s0)
	j .main_LBB_13
.main_LBB_12:
	li a1,0
	sw a1,-24(s0)
	j .main_LBB_13
.main_LBB_13:
	lw a1, -24(s0)
	sw a1,-20(s0)
	j .main_LBB_15
.main_LBB_15:
	lw a1, -20(s0)
	mv a0,a1
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
