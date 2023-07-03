.Ltext0:
	.globl a
	.align 2
	.type a, @object
	.size a, 4
a:
	.word 0
	.text
	.global func
	.type func,@function
func:
.func_LBB_1:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	sw a0,-24(s0)
	lw a0, -24(s0)
	li a1,1
	subw a2, a0, a1
	sw a2,-24(s0)
	lw a1, -24(s0)
	sw a1,-20(s0)
	j .func_LBB_7
.func_LBB_7:
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
	li a0,10
	lui a1,%hi(a)
	sw a0, %lo(a)(a1)
	lui a1,%hi(a)
	lw a0,%lo(a)(a1)
	mv a0,a0
	call func(int)
	sw a0,-24(s0)
	lw a1, -24(s0)
	sw a1,-20(s0)
	j .main_LBB_6
.main_LBB_6:
	lw a1, -20(s0)
	mv a0,a1
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
