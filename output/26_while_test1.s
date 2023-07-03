.Ltext0:
	.text
	.global doubleWhile
	.type doubleWhile,@function
doubleWhile:
.doubleWhile_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	li a0,5
	sw a0,-24(s0)
	li a0,7
	sw a0,-28(s0)
	j .doubleWhile_LBB_4
.doubleWhile_LBB_4:
	lw a0, -24(s0)
	li a1,100
	sext.w a2,a0
	blt a2,a1,.doubleWhile_LBB_7
	j .doubleWhile_LBB_19
.doubleWhile_LBB_7:
	lw a0, -24(s0)
	li a2,30
	addw a1,a0,a2
	sw a1,-24(s0)
	j .doubleWhile_LBB_10
.doubleWhile_LBB_10:
	lw a2, -28(s0)
	li a0,100
	sext.w a1,a2
	blt a1,a0,.doubleWhile_LBB_13
	j .doubleWhile_LBB_16
.doubleWhile_LBB_13:
	lw a2, -28(s0)
	li a1,6
	addw a0,a2,a1
	sw a0,-28(s0)
	j .doubleWhile_LBB_10
.doubleWhile_LBB_16:
	lw a1, -28(s0)
	li a2,100
	subw a0, a1, a2
	sw a0,-28(s0)
	j .doubleWhile_LBB_4
.doubleWhile_LBB_19:
	lw a2, -28(s0)
	sw a2,-20(s0)
	j .doubleWhile_LBB_21
.doubleWhile_LBB_21:
	lw a2, -20(s0)
	mv a0,a2
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
	call doubleWhile()
	sw a0,-20(s0)
	j .main_LBB_3
.main_LBB_3:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
