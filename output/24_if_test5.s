.Ltext0:
	.text
	.global if_if_Else
	.type if_if_Else,@function
if_if_Else:
.if_if_Else_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	li a0,5
	sw a0,-24(s0)
	li a0,10
	sw a0,-28(s0)
	lw a0, -24(s0)
	li a1,5
	sext.w a2,a0
	beq a2,a1,.if_if_Else_LBB_6
	j .if_if_Else_LBB_11
.if_if_Else_LBB_6:
	lw a0, -28(s0)
	li a2,10
	sext.w a1,a0
	beq a1,a2,.if_if_Else_LBB_9
	j .if_if_Else_LBB_10
.if_if_Else_LBB_9:
	li a0,25
	sw a0,-24(s0)
	j .if_if_Else_LBB_10
.if_if_Else_LBB_10:
	j .if_if_Else_LBB_14
.if_if_Else_LBB_11:
	lw a0, -24(s0)
	li a1,15
	addw a2,a0,a1
	sw a2,-24(s0)
	j .if_if_Else_LBB_14
.if_if_Else_LBB_14:
	lw a1, -24(s0)
	sw a1,-20(s0)
	j .if_if_Else_LBB_16
.if_if_Else_LBB_16:
	lw a1, -20(s0)
	mv a0,a1
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
	call if_if_Else()
	sw a0,-20(s0)
	j .main_LBB_3
.main_LBB_3:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
