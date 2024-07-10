.global _start
_start:
	MOV R0, #1
	MOV R1, #2
	
	@ Comparator: Does the following operation:
	@ R0 - R1. With that it's possible to determine
	@ wheter R0 is greater, less or equal to R1.
	CMP R0, R1
	
	@ Branch Greater Than: Jumps to another
	@ part of your code. greater is a label
	@ in this case. It's called when CMP returns
	@ a value > 0.
	BGT greater
	@ immediate addressing just to make
	@ the call of BGT clear
	@ MOV R2, #2
	@ Branch Always: Always jumps to 
	@ other piece of code in the program.
	@ It's always called.
	BAL default
	
greater:
	MOV R2, #1
	
default:
	MOV R2, #2
	
@ obs: Another common branches: 
@ BGE -> Branch Greater or Equal to
@ BLT -> Branch Less Than
@ BLE -> Branch Less or Equal to
@ BEQ -> Branch Equal to
@ BNE -> Branch Not Equal to