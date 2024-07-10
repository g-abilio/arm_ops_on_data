.global _start
.equ endlist, 0xaaaaaaaa
_start:
	LDR R0, =list
	LDR R3, =endlist
	LDR R1, [R0]
	@ R2 is the lenght of the list
	ADD R2, R2, #1
	
loop_lenght:
	LDR R1, [R0, #4]!
	CMP R1, R3
	BEQ invert_list
	ADD R2, R2, #1
	BAL loop_lenght
	
invert_list:
	SUB R0, R0, #4
	LDR R1, [R0]
	CMP R2, #0
	BEQ exit
	SUB R2, R2, #1
	BAL invert_list
	
exit:
	
.data
list:
	.word 1,2,3,4,5,6,7,8,9,10