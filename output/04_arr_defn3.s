.Ltext0:
	.text
	.global main
	.type main,@function
main:
.main_LBB_0:
	addi sp,sp,-192
	sd ra,184(sp)
	sd s0,176(sp)
	addi s0,sp,192
	sw zero,-56(s0)
	sw zero,-52(s0)
	sw zero,-48(s0)
	sw zero,-44(s0)
	sw zero,-40(s0)
	sw zero,-36(s0)
	sw zero,-32(s0)
	sw zero,-28(s0)
	sw zero,-88(s0)
	sw zero,-84(s0)
	sw zero,-80(s0)
	sw zero,-76(s0)
	sw zero,-72(s0)
	sw zero,-68(s0)
	sw zero,-64(s0)
	sw zero,-60(s0)
	sw zero,-120(s0)
	sw zero,-116(s0)
	sw zero,-112(s0)
	sw zero,-108(s0)
	sw zero,-104(s0)
	sw zero,-100(s0)
	sw zero,-96(s0)
	sw zero,-92(s0)
	sw zero,-152(s0)
	sw zero,-148(s0)
	sw zero,-144(s0)
	sw zero,-140(s0)
	sw zero,-136(s0)
	sw zero,-132(s0)
	sw zero,-128(s0)
	sw zero,-124(s0)
	sw zero,-184(s0)
	sw zero,-180(s0)
	sw zero,-176(s0)
	sw zero,-172(s0)
	sw zero,-168(s0)
	sw zero,-164(s0)
	sw zero,-160(s0)
	sw zero,-156(s0)
	li a0,0
	sw a0,0(s0)
	li a0,0
	sw a0,4(s0)
	li a0,0
	sw a0,8(s0)
	li a0,0
	sw a0,12(s0)
	li a0,0
	sw a0,16(s0)
	li a0,0
	sw a0,20(s0)
	li a0,0
	sw a0,24(s0)
	li a0,0
	sw a0,28(s0)
	li a0,1
	sw a0,0(s0)
	li a0,2
	sw a0,4(s0)
	li a0,3
	sw a0,8(s0)
	li a0,4
	sw a0,12(s0)
	li a0,5
	sw a0,16(s0)
	li a0,6
	sw a0,20(s0)
	li a0,7
	sw a0,24(s0)
	li a0,8
	sw a0,28(s0)
	li a0,1
	sw a0,0(s0)
	li a0,2
	sw a0,4(s0)
	li a0,3
	sw a0,8(s0)
	li a0,4
	sw a0,12(s0)
	li a0,5
	sw a0,16(s0)
	li a0,6
	sw a0,20(s0)
	li a0,7
	sw a0,24(s0)
	li a0,8
	sw a0,28(s0)
	li a0,1
	sw a0,0(s0)
	li a0,2
	sw a0,4(s0)
	li a0,3
	sw a0,8(s0)
	li a0,0
	sw a0,12(s0)
	li a0,5
	sw a0,16(s0)
	li a0,0
	sw a0,20(s0)
	li a0,7
	sw a0,24(s0)
	li a0,8
	sw a0,28(s0)
	lw a0, 20(s0)
	lw a1, 20(s0)
	sw a0,0(s0)
	sw a1,4(s0)
	li a0,3
	sw a0,8(s0)
	li a0,4
	sw a0,12(s0)
	li a0,5
	sw a0,16(s0)
	li a0,6
	sw a0,20(s0)
	li a0,7
	sw a0,24(s0)
	li a0,8
	sw a0,28(s0)
	lw a0, 28(s0)
	lw a1, 0(s0)
	addw a2,a0,a1
	lw a1, 4(s0)
	addw a0,a2,a1
	lw a1, 16(s0)
	addw a2,a0,a1
	sw a2,-20(s0)
	j .main_LBB_62
.main_LBB_62:
	lw a1, -20(s0)
	mv a0,a1
	ld ra, 184(sp)
	ld s0, 176(sp)
	addi sp,sp,192
	ret
