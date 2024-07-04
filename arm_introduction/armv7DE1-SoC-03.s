.global _start
_start:
	MOV R0, #0xFFFFFFFF
	MOV R1, #7
	@ ADD: adds R0 and R1 and puts the result into R2
	@ adding S flag activates againd the flags in CPSR
	@ that can show, as well, overflow or carry. carry 
	@ -> C (first bit is 2)
	ADDS R2, R0, R1 
	@ SUB: subtracts R1 from R0 and places the result into R3
	@ Adding the S flag adds an operation and CPSR register
	@ shows us if the result is negative or positive:
	@ negative -> N (first bit is 8)
	SUBS R3, R0, R1
	@ MUL: places the product of R0 and R1 into R4
	MUL R4, R0, R1