.Ltext0:
	.globl a
	.align 3
	.type a, @object
	.size a, 400
a:
	.zero 400
	.text
	.global main
	.type main,@function
main:
.main_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	li a0,0
	sw a0,-20(s0)
	j .main_LBB_2
.main_LBB_2:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
