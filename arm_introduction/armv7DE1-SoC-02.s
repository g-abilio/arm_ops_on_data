.global _start
_start:
	
	/* Data in registers
	 Immediate addresing: Taking a immediate value
	 and placing it into a register.
	MOV R0, #5
	
	 Register direct addresing
	MOV R1, R0
	*/
	
	@ Load data from stack into register
	@ LDR register, data_in_the_stack
	LDR R0, =list
	@ [R0] means that we are
	@ accesing the value associated with the address
	@ in R0.
	LDR R1, [R0]
	@ Using a offset: R0 location + 4 bits gives the
	@ location of the next value in the list 
	@ [RO, #4]! means pre increment. It will increment r0 before
	@ changing the value of r2
	@ [RO], #4 means post increment. It increments r0 after
	@ changing the value of r2
	LDR R2, [R0], #4
	
	
@ stack memory
.data
@ like a variable name
list:
	@ every number that is after this will be treated
	@ as a word, that is, 32 bits number.
	.word 4, 5, -9, 1, 0, -2