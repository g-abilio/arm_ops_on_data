.global _start
_start:
	
	@ ARITHMETIC SHIFTS
	@ Remember: ASR divides by 2 and ASL multiplies by 2.
	@ ASR -> R0, ASL -> R1, OVERFLOW -> R2, UNDERFLOW -> R3
	
	MOV R0, #0b10000000000000000000000000011001
	MOV R1, #0b00000000000000000000000001011001
	MOV R2, #0b01111111111111111111111111111111
	MOV R3, #0b10000000000000000000000000000000
	
	BL ASR
	BL ASL
	BL OVERFLOW

@ Arithmetic shift to the right
ASR:
	@ R4 will store the leftmost bit:
	AND R4, R0, #0x80000000
	LSR R0, #1
	@ Conditional to fix the first bit
	CMP R4, #0x80000000
	ORREQ R0, R0, #0x80000000
	BX lr
	
@ Arithmetic shift to the left
ASL: 
	LSL R1, #1
	BX lr
	
OVERFLOW: 
	@ Placing the value of R2 into R1:
	MOV R1, R2
	BL ASL
	@ So, the result is clearly an overflow
	B UNDERFLOW 
	
UNDERFLOW: 
	@ Placing the value of R3 into R1:
	MOV R1, R3
	BL ASL 
	@ The result is clearly an underflow
	B exit
	
exit: 
	
	
	