.Ltext0:
	.text
	.global deepWhileBr
	.type deepWhileBr,@function
deepWhileBr:
.deepWhileBr_LBB_2:
	addi sp,sp,-48
	sd ra,40(sp)
	sd s0,32(sp)
	addi s0,sp,48
	sw a0,-24(s0)
	sw a1,-28(s0)
	lw a0, -24(s0)
	lw a1, -28(s0)
	addw a2,a0,a1
	sw a2,-32(s0)
	j .deepWhileBr_LBB_12
.deepWhileBr_LBB_12:
	lw a1, -32(s0)
	li a0,75
	sext.w a2,a1
	blt a2,a0,.deepWhileBr_LBB_15
	j .deepWhileBr_LBB_34
.deepWhileBr_LBB_15:
	li a1,42
	sw a1,-36(s0)
	lw a1, -32(s0)
	li a2,100
	sext.w a0,a1
	blt a0,a2,.deepWhileBr_LBB_18
	j .deepWhileBr_LBB_33
.deepWhileBr_LBB_18:
	lw a1, -32(s0)
	lw a0, -36(s0)
	addw a2,a1,a0
	sw a2,-32(s0)
	lw a0, -32(s0)
	li a1,99
	sext.w a2,a0
	blt a1,a2,.deepWhileBr_LBB_24
	j .deepWhileBr_LBB_32
.deepWhileBr_LBB_24:
	lw a0, -36(s0)
	li a2,2
	mulw a1,a0,a2
	sw a1,-40(s0)
	li a2,1
	li a2,1
	beq a2,a2,.deepWhileBr_LBB_28
	j .deepWhileBr_LBB_31
.deepWhileBr_LBB_28:
	lw a2, -40(s0)
	li a0,2
	mulw a1,a2,a0
	sw a1,-32(s0)
	j .deepWhileBr_LBB_31
.deepWhileBr_LBB_31:
	j .deepWhileBr_LBB_32
.deepWhileBr_LBB_32:
	j .deepWhileBr_LBB_33
.deepWhileBr_LBB_33:
	j .deepWhileBr_LBB_12
.deepWhileBr_LBB_34:
	lw a0, -32(s0)
	sw a0,-20(s0)
	j .deepWhileBr_LBB_36
.deepWhileBr_LBB_36:
	lw a0, -20(s0)
	mv a0,a0
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
	li a0,2
	sw a0,-24(s0)
	lw a0, -24(s0)
	lw a1, -24(s0)
	mv a0,a0
	mv a1,a1
	call deepWhileBr(int, int)
	sw a0,-20(s0)
	j .main_LBB_6
.main_LBB_6:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
