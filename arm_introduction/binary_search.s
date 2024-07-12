.global _start
.equ endlist, 0xaaaaaaaa
_start:
	@ R0 is the list address at the stack
	LDR R0, =list
	
	@ R1 is the next address after the end of the list
	LDR R1, =endlist
	
	@ R2 will show the values of the list
	LDR R2, [R0]
	
	@ R3 will store the lenght of the list
	
	@ R4 will store the value that will be searched
	MOV R4, #6
	
	@ Branch and Link to length
	BL length
	
	@ Initialize R0 to the beginning of the list
	LDR R0, =list
	
	@ R5 will be store the beginning of the sublist
	@ R6 will store the end
	@ R10 will store the value in bits of one hex digit: 4
	
	MOV R10, #4
	MOV R5, R0
	MUL R6, R3, R10
	ADD R6, R6, R0 
	SUB R6, #8
	@ R8 will make a test of the extremes
	LDR R8, [R5]
	CMP R8, R4
	BEQ binary_search_result
	LDR R8, [R6, #4]
	CMP R8, R4
	BEQ binary_search_result
    
	BAL binary_search

length:
	LDR R2, [R0], #4
	CMP R2, R1
	BXEQ LR
	ADD R3, R3, #1
	BAL length
	
binary_search:
	@ R7 will be the param used to determine the ways of the search
	@ R8 will make some checking as well:
	LDR R8, [R5, #4]
	CMP R8, R4
	BEQ binary_search_result
	MOV R8, R6
	SUB R8, #4
	LDR R8, [R8]
	CMP R8, R4
	BEQ binary_search_result
	ADD R7, R5, R6
	LSR R7, #1
	@ R8 will store the value on the address contained in R7
	LDR R8, [R7]
	CMP R4, R8
	BLT binary_search_minor
	BGT binary_search_major
	BEQ binary_search_result
	
binary_search_minor:
	MOV R6, R7
	BAL binary_search
	
binary_search_major:
	MOV R5, R7
	BAL binary_search
	
binary_search_result:
	@ R9 will store the result
	MOV R9, R8
	
.data
list:
	.word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10