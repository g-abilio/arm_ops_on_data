.global _start
_start:
	MOV R0, #0
	MOV R1, #1
	@ Logical operator AND: places the result of 
	@ R0 AND R1 into R2:
	AND R2, R0, R1
	@ ORR:  Logical operator OR. Places the result
	@ of R0 OR R1 into R3:
	ORR R3, R0, R1
	@ EOR: Exclusive OR -> XOR. Place the result of
	@ RO XOR R1 into R4:
	EOR R4, R0, R1
	@ MVN: Moves the negation (NOT) of the source R1
	@ into the destination R5. The negation is 15 (f) - bit.
	MVN R5, R1