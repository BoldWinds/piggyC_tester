.Ltext0:
	.globl a
	.align 2
	.type a, @object
	.size a, 4
a:
	.word 10
	.text
	.global main
	.type main,@function
main:
.main_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	li a0,2
	sw a0,-24(s0)
	lw a0, -24(s0)
	li a1,10
	subw a2, a0, a1
	sw a2,-20(s0)
	j .main_LBB_5
.main_LBB_5:
	lw a1, -20(s0)
	mv a0,a1
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
