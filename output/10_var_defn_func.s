.Ltext0:
	.text
	.global defn
	.type defn,@function
defn:
.defn_LBB_0:
	addi sp,sp,-32
	sd ra,24(sp)
	sd s0,16(sp)
	addi s0,sp,32
	li a0,4
	sw a0,-20(s0)
	j .defn_LBB_2
.defn_LBB_2:
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
	call defn()
	sw a0,-24(s0)
	lw a0, -24(s0)
	sw a0,-20(s0)
	j .main_LBB_5
.main_LBB_5:
	lw a0, -20(s0)
	mv a0,a0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp,sp,32
	ret
