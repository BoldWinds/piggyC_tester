.Ltext0:
	.globl a
	.align 2
	.type a, @object
	.size a, 4
a:
	.word 3
	.globl b
	.align 2
	.type b, @object
	.size b, 4
b:
	.word 5
	.text
	.global main
	.type main,@function
main:
.main_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	li a0,5
	sw a0,-24(s0)
	lw a0, -24(s0)
	lui a1,%hi(b)
	lw a2,%lo(b)(a1)
	addw a1,a0,a2
	sw a1,-20(s0)
	j .main_LBB_6
.main_LBB_6:
	lw a2, -20(s0)
	mv a0,a2
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
