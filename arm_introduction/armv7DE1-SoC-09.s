.global _start
_start:
 	MOV R0, #1
	MOV R1, #3
	
	@ BL = Branch and Link
	@ Places into lr (link register) 
	@ the next location in memory
	@ that follows this branch call
	BL add2
	
	MOV R3, #4
	
add2:
	ADD R2, R0, R1
	@ BX = Branch and Exchange
	@ It will return the control flow
	@ to the location at the stack
	@ stored in lr
	BX LR