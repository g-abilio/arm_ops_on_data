.global _start
_start:
 	mov r0, #2
	mov r1, #4
	cmp r0, r1
	
	@ conditional instruction: 
	@ add less than: will only add
	@ if cmp returns a negative, that is,
	@ if r0 is less than r1
	addlt r2, r2, #1
	
	@ move if greater or equal to:
	movge r3, #5