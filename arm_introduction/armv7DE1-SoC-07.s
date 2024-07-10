.global _start
@ constant endlist definided:
@ it represents a empty slot in memory
@ and it will be used to iterate until
@ the end of the list, that is, until
@ an empty slot is reached.
.equ endlist, 0xaaaaaaaa
_start:
	@ Load list into register R0
	LDR R0, =list
	
	@ Load the endlist constant into R3:
	LDR R3, =endlist
	
	@ Place the value inside R0 into R1
	@ using indirect addressing
	LDR R1, [R0]
	
	ADD R2, R2, R1
	
loop:
	LDR R1, [R0, #4]!
	CMP R1, R3
	BEQ exit
	ADD R2, R2, R1
	BAL loop
	
exit:
	
@ defining a list of numbers in the stack
.data
list:
	.word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10