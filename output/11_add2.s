.Ltext0:
	.text
	.global main
	.type main,@function
main:
.main_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	li a0,10
	sw a0,-24(s0)
	li a0,-1
	sw a0,-28(s0)
	lw a0, -24(s0)
	lw a1, -28(s0)
	addw a2,a0,a1
	sw a2,-20(s0)
	j .main_LBB_7
.main_LBB_7:
	lw a1, -20(s0)
	mv a0,a1
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
