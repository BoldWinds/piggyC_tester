.Ltext0:
	.text
	.global whileIf
	.type whileIf,@function
whileIf:
.whileIf_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	li a0,0
	sw a0,-24(s0)
	li a0,0
	sw a0,-28(s0)
	j .whileIf_LBB_4
.whileIf_LBB_4:
	lw a0, -24(s0)
	li a1,100
	sext.w a2,a0
	blt a2,a1,.whileIf_LBB_7
	j .whileIf_LBB_22
.whileIf_LBB_7:
	lw a0, -24(s0)
	li a2,5
	sext.w a1,a0
	beq a1,a2,.whileIf_LBB_10
	j .whileIf_LBB_11
.whileIf_LBB_10:
	li a0,25
	sw a0,-28(s0)
	j .whileIf_LBB_19
.whileIf_LBB_11:
	lw a0, -24(s0)
	li a1,10
	sext.w a2,a0
	beq a2,a1,.whileIf_LBB_14
	j .whileIf_LBB_15
.whileIf_LBB_14:
	li a0,42
	sw a0,-28(s0)
	j .whileIf_LBB_18
.whileIf_LBB_15:
	lw a0, -24(s0)
	li a2,2
	mulw a1,a0,a2
	sw a1,-28(s0)
	j .whileIf_LBB_18
.whileIf_LBB_18:
	j .whileIf_LBB_19
.whileIf_LBB_19:
	lw a2, -24(s0)
	li a0,1
	addw a1,a2,a0
	sw a1,-24(s0)
	j .whileIf_LBB_4
.whileIf_LBB_22:
	lw a0, -28(s0)
	sw a0,-20(s0)
	j .whileIf_LBB_24
.whileIf_LBB_24:
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
	call whileIf()
	sw a0,-20(s0)
	j .main_LBB_3
.main_LBB_3:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
