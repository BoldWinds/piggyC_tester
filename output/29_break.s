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
	li a0,0
	sw a0,-24(s0)
	li a0,0
	sw a0,-28(s0)
	j .main_LBB_4
.main_LBB_4:
	lw a0, -24(s0)
	li a1,100
	sext.w a2,a0
	blt a2,a1,.main_LBB_7
	j .main_LBB_17
.main_LBB_7:
	lw a0, -24(s0)
	li a2,50
	sext.w a1,a0
	beq a1,a2,.main_LBB_10
	j .main_LBB_11
.main_LBB_10:
	j .main_LBB_17
.main_LBB_11:
	lw a0, -28(s0)
	lw a1, -24(s0)
	addw a2,a0,a1
	sw a2,-28(s0)
	lw a1, -24(s0)
	li a0,1
	addw a2,a1,a0
	sw a2,-24(s0)
	j .main_LBB_4
.main_LBB_17:
	lw a0, -28(s0)
	sw a0,-20(s0)
	j .main_LBB_19
.main_LBB_19:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
