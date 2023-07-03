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
	lw a0, -24(s0)
	li a1,2
	mulw a2,a0,a1
	li a1,1
	addw a0,a2,a1
	sw a0,-20(s0)
	j .main_LBB_6
.main_LBB_6:
	lw a1, -20(s0)
	mv a0,a1
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
