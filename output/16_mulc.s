.Ltext0:
	.globl a
	.align 2
	.type a, @object
	.size a, 4
a:
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
	li a0,25
	sw a0,-20(s0)
	j .main_LBB_2
.main_LBB_2:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
