.Ltext0:
	.text
	.global FourWhile
	.type FourWhile,@function
FourWhile:
.FourWhile_LBB_0:
	addi sp,sp,-48
	sd ra,40(sp)
	sd s0,32(sp)
	addi s0,sp,48
	li a0,5
	sw a0,-24(s0)
	li a0,6
	sw a0,-28(s0)
	li a0,7
	sw a0,-32(s0)
	li a0,10
	sw a0,-36(s0)
	j .FourWhile_LBB_6
.FourWhile_LBB_6:
	lw a0, -24(s0)
	li a1,20
	sext.w a2,a0
	blt a2,a1,.FourWhile_LBB_9
	j .FourWhile_LBB_39
.FourWhile_LBB_9:
	lw a0, -24(s0)
	li a2,3
	addw a1,a0,a2
	sw a1,-24(s0)
	j .FourWhile_LBB_12
.FourWhile_LBB_12:
	lw a2, -28(s0)
	li a0,10
	sext.w a1,a2
	blt a1,a0,.FourWhile_LBB_15
	j .FourWhile_LBB_36
.FourWhile_LBB_15:
	lw a2, -28(s0)
	li a1,1
	addw a0,a2,a1
	sw a0,-28(s0)
	j .FourWhile_LBB_18
.FourWhile_LBB_18:
	lw a1, -32(s0)
	li a2,7
	sext.w a0,a1
	beq a0,a2,.FourWhile_LBB_21
	j .FourWhile_LBB_33
.FourWhile_LBB_21:
	lw a1, -32(s0)
	li a0,1
	subw a2, a1, a0
	sw a2,-32(s0)
	j .FourWhile_LBB_24
.FourWhile_LBB_24:
	lw a0, -36(s0)
	li a1,20
	sext.w a2,a0
	blt a2,a1,.FourWhile_LBB_27
	j .FourWhile_LBB_30
.FourWhile_LBB_27:
	lw a0, -36(s0)
	li a2,3
	addw a1,a0,a2
	sw a1,-36(s0)
	j .FourWhile_LBB_24
.FourWhile_LBB_30:
	lw a2, -36(s0)
	li a0,1
	subw a1, a2, a0
	sw a1,-36(s0)
	j .FourWhile_LBB_18
.FourWhile_LBB_33:
	lw a0, -32(s0)
	li a2,1
	addw a1,a0,a2
	sw a1,-32(s0)
	j .FourWhile_LBB_12
.FourWhile_LBB_36:
	lw a2, -28(s0)
	li a0,2
	subw a1, a2, a0
	sw a1,-28(s0)
	j .FourWhile_LBB_6
.FourWhile_LBB_39:
	lw a0, -24(s0)
	lw a2, -28(s0)
	lw a1, -36(s0)
	addw a3,a2,a1
	addw a1,a0,a3
	lw a3, -32(s0)
	addw a0,a1,a3
	sw a0,-20(s0)
	j .FourWhile_LBB_47
.FourWhile_LBB_47:
	lw a3, -20(s0)
	mv a0,a3
	ld ra, 40(sp)
	ld s0, 32(sp)
	addi sp,sp,48
	ret
	.global main
	.type main,@function
main:
.main_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	call FourWhile()
	sw a0,-20(s0)
	j .main_LBB_3
.main_LBB_3:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
