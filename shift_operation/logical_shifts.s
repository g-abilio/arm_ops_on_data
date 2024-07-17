.global _start
_start:
	
	@ LOGICAL SHIFTS
	@ LSL -> R0; LSR -> R1; ROR -> R2; ROL -> R3
	
	@ Bit pattern that will be logical shifted
	MOV R0, #0b10011000
	MOV R1, #0b10011000
	
	@ Bit patterns that will be rotated
	MOV R2, #0b10011000
	MOV R3, #0b10100101
	
	BL logical_shift_to_left
	BL logical_shift_to_right
	BL rotation_to_right
	B rotation_to_left
	
logical_shift_to_left:
	LSL R0, #1
	BX lr
	
logical_shift_to_right:
	LSR R1, #1
	BX lr

rotation_to_right: 
	ROR R2, #1
	BX lr
	
rotation_to_left: 
	@ There is not a rotation to the left in ARM ASM.
	@ So, we use a ROR 32 - n times to perform a ROL n times.
	@ 0bs: 32 in this case because is the lenght of the word in a
	@ 32 bit system.
	B ROL
	
ROL: 
	ROR R3, #31
	B exit
	
exit: 
	