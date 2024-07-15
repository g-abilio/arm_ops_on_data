.global _start
_start:
	@ r0 and r1 -> global variables
	mov r0, #1
	mov r1, #3
	@ push r0 and r1 into the stack memory
	@ the stack pointer (sp) assumes the value of the
	@ first register pushed into memory
	push {r0, r1}
	bl get_value
	@ pop r0 and r1 of the stack, preserving the original values
	@ this creates the local and global variables dynamic.
	pop {r0, r1}
	b end
	
get_value:
	@ r0 and r1 -> local variables
	mov r0, #5
	mov r1, #7
	add r2, r0, r1
	bx lr
	
end: