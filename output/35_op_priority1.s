.Ltext0:
	.text
	.global main
	.type main,@function
main:
.main_LBB_0:
	addi sp,sp,-48
	sd ra,40(sp)
	sd s0,32(sp)
	addi s0,sp,48
	li a0,10
	sw a0,-24(s0)
	li a0,4
	sw a0,-28(s0)
	li a0,2
	sw a0,-32(s0)
	li a0,2
	sw a0,-36(s0)
	lw a0, -32(s0)
	lw a1, -24(s0)
	lw a2, -28(s0)
	mulw a3,a1,a2
	addw a2,a0,a3
	lw a3, -36(s0)
	subw a0, a2, a3
	sw a0,-20(s0)
	j .main_LBB_13
.main_LBB_13:
	lw a3, -20(s0)
	mv a0,a3
	ld ra, 40(sp)
	ld s0, 32(sp)
	addi sp,sp,48
	ret
