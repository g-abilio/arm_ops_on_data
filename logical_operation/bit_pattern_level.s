.global _start
@ constant that represents the pattern that will be used here
.equ pattern, 0b10100110
_start:	
	@ BIT PATTERN LEVEL
	@ R0 -> pattern, R1 -> Complementation, R2 -> Cleaning
	@ R3 -> Marking, R4 -> Inversion
	
	ldr R0, =pattern
	
	BL complementation
	BL cleaning
	BL marking
	BL inversion
	B exit	
	
complementation: 
	MVN R1, R0
	@ applying the cleaning to maintain only the 8 rightmost bits
	AND R1, R1, #0b00000000000000000000000011111111
	@ the result is the one's complement of the pattern
	BX lr

cleaning:
	@ here, we are going to clean the 5 leftmost bits, maintaining 
	@ the others intact
	AND R2, R0, #0b00000111
	BX lr
	
marking: 
	@ here, we are going to mark the 5 leftmost bits, maintaining
	@ the others intact
	ORR R3, R0, #0b11111000
	BX lr
	
inversion: 
	@ here, we are going to invert the 5 leftmost bits only
	EOR R4, R0, #0b11111000
	BX lr

exit: 