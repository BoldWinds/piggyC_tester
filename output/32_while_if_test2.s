.Ltext0:
	.text
	.global ifWhile
	.type ifWhile,@function
ifWhile:
.ifWhile_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	li a0,0
	sw a0,-24(s0)
	li a0,3
	sw a0,-28(s0)
	lw a0, -24(s0)
	li a1,5
	sext.w a2,a0
	beq a2,a1,.ifWhile_LBB_6
	j .ifWhile_LBB_16
.ifWhile_LBB_6:
	j .ifWhile_LBB_7
.ifWhile_LBB_7:
	lw a0, -28(s0)
	li a2,2
	sext.w a1,a0
	beq a1,a2,.ifWhile_LBB_10
	j .ifWhile_LBB_13
.ifWhile_LBB_10:
	lw a0, -28(s0)
	li a1,2
	addw a2,a0,a1
	sw a2,-28(s0)
	j .ifWhile_LBB_7
.ifWhile_LBB_13:
	lw a1, -28(s0)
	li a0,25
	addw a2,a1,a0
	sw a2,-28(s0)
	j .ifWhile_LBB_26
.ifWhile_LBB_16:
	j .ifWhile_LBB_17
.ifWhile_LBB_17:
	lw a0, -24(s0)
	li a1,5
	sext.w a2,a0
	blt a2,a1,.ifWhile_LBB_20
	j .ifWhile_LBB_25
.ifWhile_LBB_20:
	lw a0, -28(s0)
	li a2,2
	mulw a1,a0,a2
	sw a1,-28(s0)
	lw a2, -24(s0)
	li a0,1
	addw a1,a2,a0
	sw a1,-24(s0)
	j .ifWhile_LBB_17
.ifWhile_LBB_25:
	j .ifWhile_LBB_26
.ifWhile_LBB_26:
	lw a0, -28(s0)
	sw a0,-20(s0)
	j .ifWhile_LBB_28
.ifWhile_LBB_28:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
	.global main
	.type main,@function
main:
.main_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	call ifWhile()
	sw a0,-20(s0)
	j .main_LBB_3
.main_LBB_3:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
