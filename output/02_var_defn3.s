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
	li a0,1
	sw a0,-24(s0)
	li a0,2
	sw a0,-28(s0)
	li a0,3
	sw a0,-32(s0)
	lw a0, -28(s0)
	lw a1, -32(s0)
	addw a2,a0,a1
	sw a2,-20(s0)
	j .main_LBB_8
.main_LBB_8:
	lw a1, -20(s0)
	mv a0,a1
	ld ra, 40(sp)
	ld s0, 32(sp)
	addi sp,sp,48
	ret
