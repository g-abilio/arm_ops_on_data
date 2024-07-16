.global _start
.equ true, 0b1
.equ false, 0b0
_start:
	@ BIT LEVEL OPERATIONS:
	@ R0 -> true; R1 -> false; R2 -> AND;
	@ R3 -> OR; R4 -> XOR; R5 -> NOT
	
	ldr r0, =true
	@ not nedded, as the default value of the registers
	@ is zero, but done as redundancy
	ldr r1, =false
	
	BL and
	BL or
	BL xor
	BL not
	B exit

@ AND operations
and:
	@ The whole truth table
	AND R2, R0, R1
	AND R2, R1, R0
	AND R2, R1, R1
	AND R2, R0, R0
	BX lr
	
@ OR operations
or: 
 	@ The whole truth table
	ORR R3, R0, R1
	ORR R3, R1, R0
	ORR R3, R1, R1
	ORR R3, R0, R0	
	BX lr
	
@ XOR operations
xor:
	@ The whole truth table
	EOR R4, R0, R1
	EOR R4, R1, R0
	EOR R4, R1, R1
	EOR R4, R0, R0
	BX lr

@ NOT operations
not: 
	@ The whole truth table
	MVN R5, R0
	@ Cleaning bits here because the NOT operations is extended
	@ to the wholw word (32 bits). So, the mask here clean all the
	@ bits, except the rightmost one, which is the one in focus
	AND R5, R5, #0b00000000000000000000000000000001
	MVN R5, R1
	@ Also cleaning bits here
	AND R5, R5, #0b00000000000000000000000000000001
	BX lr
	
exit: 