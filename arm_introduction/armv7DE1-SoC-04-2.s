@ The logical operations are done in the binary form of the numbers
@ The MVN operation is the complement done in the hexadecimal form of
@ the numbers
.global _start
_start:
	
	@ #0b represents bunary numbers
	MOV R0, #0b10110011
	MOV R1, #0b00101101
	
	@ 00100001
	AND R2, R0, R1
	
	@ 10111111
	ORR R3, R0, R1
	
	@ 10011110
	EOR R4, R0, R1
	
	@ Result is done in respect of the hex value
	@ To solve this, we can pass a mask to the value
	@ so that only the binary is evaluated. 
	@ Result: 01001100
	MVN R5, R0
	AND R5, R5, #0b00000000000000000000000011111111
	@ Result with the mask: 00000000000000000000000001001100
	
	@ The same here:
	@ Result: 11010010
	MVN R6, R1
	AND R6, R6, #0b00000000000000000000000011111111
	@ Result with the mask: 00000000000000000000000011010010
	
	@ The mask uses the word concept: the size, in bits, that fills
	@ a register. Only the two rightmost bits are used, in this case.
	@ So, the 8 rightmost bits are 1, and the rest is 0, to clean the
	@ rest of the bits.