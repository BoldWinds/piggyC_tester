.Ltext0:
	.globl g
	.align 2
	.type g, @object
	.size g, 4
g:
	.word 0
	.globl h
	.align 2
	.type h, @object
	.size h, 4
h:
	.word 0
	.globl f
	.align 2
	.type f, @object
	.size f, 4
f:
	.word 0
	.globl e
	.align 2
	.type e, @object
	.size e, 4
e:
	.word 0
	.text
	.global EightWhile
	.type EightWhile,@function
EightWhile:
.EightWhile_LBB_0:
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
	j .EightWhile_LBB_6
.EightWhile_LBB_6:
	lw a0, -24(s0)
	li a1,20
	sext.w a2,a0
	blt a2,a1,.EightWhile_LBB_9
	j .EightWhile_LBB_75
.EightWhile_LBB_9:
	lw a0, -24(s0)
	li a2,3
	addw a1,a0,a2
	sw a1,-24(s0)
	j .EightWhile_LBB_12
.EightWhile_LBB_12:
	lw a2, -28(s0)
	li a0,10
	sext.w a1,a2
	blt a1,a0,.EightWhile_LBB_15
	j .EightWhile_LBB_72
.EightWhile_LBB_15:
	lw a2, -28(s0)
	li a1,1
	addw a0,a2,a1
	sw a0,-28(s0)
	j .EightWhile_LBB_18
.EightWhile_LBB_18:
	lw a1, -32(s0)
	li a2,7
	sext.w a0,a1
	beq a0,a2,.EightWhile_LBB_21
	j .EightWhile_LBB_69
.EightWhile_LBB_21:
	lw a1, -32(s0)
	li a0,1
	subw a2, a1, a0
	sw a2,-32(s0)
	j .EightWhile_LBB_24
.EightWhile_LBB_24:
	lw a0, -36(s0)
	li a1,20
	sext.w a2,a0
	blt a2,a1,.EightWhile_LBB_27
	j .EightWhile_LBB_66
.EightWhile_LBB_27:
	lw a0, -36(s0)
	li a2,3
	addw a1,a0,a2
	sw a1,-36(s0)
	j .EightWhile_LBB_30
.EightWhile_LBB_30:
	lui a2,%hi(e)
	lw a0,%lo(e)(a2)
	li a2,1
	sext.w a1,a0
	blt a2,a1,.EightWhile_LBB_33
	j .EightWhile_LBB_63
.EightWhile_LBB_33:
	lui a0,%hi(e)
	lw a1,%lo(e)(a0)
	li a0,1
	subw a2, a1, a0
	lui a0,%hi(e)
	sw a2, %lo(e)(a0)
	j .EightWhile_LBB_36
.EightWhile_LBB_36:
	lui a0,%hi(f)
	lw a2,%lo(f)(a0)
	li a0,2
	sext.w a1,a2
	blt a0,a1,.EightWhile_LBB_39
	j .EightWhile_LBB_60
.EightWhile_LBB_39:
	lui a2,%hi(f)
	lw a1,%lo(f)(a2)
	li a2,2
	subw a0, a1, a2
	lui a2,%hi(f)
	sw a0, %lo(f)(a2)
	j .EightWhile_LBB_42
.EightWhile_LBB_42:
	lui a2,%hi(g)
	lw a0,%lo(g)(a2)
	li a2,3
	sext.w a1,a0
	blt a1,a2,.EightWhile_LBB_45
	j .EightWhile_LBB_57
.EightWhile_LBB_45:
	lui a0,%hi(g)
	lw a1,%lo(g)(a0)
	li a0,10
	addw a2,a1,a0
	lui a0,%hi(g)
	sw a2, %lo(g)(a0)
	j .EightWhile_LBB_48
.EightWhile_LBB_48:
	lui a0,%hi(h)
	lw a2,%lo(h)(a0)
	li a0,10
	sext.w a1,a2
	blt a1,a0,.EightWhile_LBB_51
	j .EightWhile_LBB_54
.EightWhile_LBB_51:
	lui a2,%hi(h)
	lw a1,%lo(h)(a2)
	li a2,8
	addw a0,a1,a2
	lui a2,%hi(h)
	sw a0, %lo(h)(a2)
	j .EightWhile_LBB_48
.EightWhile_LBB_54:
	lui a2,%hi(h)
	lw a0,%lo(h)(a2)
	li a2,1
	subw a1, a0, a2
	lui a2,%hi(h)
	sw a1, %lo(h)(a2)
	j .EightWhile_LBB_42
.EightWhile_LBB_57:
	lui a2,%hi(g)
	lw a1,%lo(g)(a2)
	li a2,8
	subw a0, a1, a2
	lui a2,%hi(g)
	sw a0, %lo(g)(a2)
	j .EightWhile_LBB_36
.EightWhile_LBB_60:
	lui a2,%hi(f)
	lw a0,%lo(f)(a2)
	li a2,1
	addw a1,a0,a2
	lui a2,%hi(f)
	sw a1, %lo(f)(a2)
	j .EightWhile_LBB_30
.EightWhile_LBB_63:
	lui a2,%hi(e)
	lw a1,%lo(e)(a2)
	li a2,1
	addw a0,a1,a2
	lui a2,%hi(e)
	sw a0, %lo(e)(a2)
	j .EightWhile_LBB_24
.EightWhile_LBB_66:
	lw a2, -36(s0)
	li a0,1
	subw a1, a2, a0
	sw a1,-36(s0)
	j .EightWhile_LBB_18
.EightWhile_LBB_69:
	lw a0, -32(s0)
	li a2,1
	addw a1,a0,a2
	sw a1,-32(s0)
	j .EightWhile_LBB_12
.EightWhile_LBB_72:
	lw a2, -28(s0)
	li a0,2
	subw a1, a2, a0
	sw a1,-28(s0)
	j .EightWhile_LBB_6
.EightWhile_LBB_75:
	lw a0, -24(s0)
	lw a2, -28(s0)
	lw a1, -36(s0)
	addw a3,a2,a1
	addw a1,a0,a3
	lw a3, -32(s0)
	addw a0,a1,a3
	lui a3,%hi(e)
	lw a1,%lo(e)(a3)
	lw a3, -36(s0)
	addw a2,a1,a3
	lui a3,%hi(g)
	lw a1,%lo(g)(a3)
	subw a3, a2, a1
	lui a1,%hi(h)
	lw a2,%lo(h)(a1)
	addw a1,a3,a2
	subw a2, a0, a1
	sw a2,-20(s0)
	j .EightWhile_LBB_91
.EightWhile_LBB_91:
	lw a1, -20(s0)
	mv a0,a1
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
	li a0,1
	lui a1,%hi(g)
	sw a0, %lo(g)(a1)
	li a1,2
	lui a0,%hi(h)
	sw a1, %lo(h)(a0)
	li a0,4
	lui a1,%hi(e)
	sw a0, %lo(e)(a1)
	li a1,6
	lui a0,%hi(f)
	sw a1, %lo(f)(a0)
	call EightWhile()
	sw a0,-20(s0)
	j .main_LBB_3
.main_LBB_3:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
