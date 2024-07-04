@ label: similar to the function concept 
@ global says that the label is available
@ to every part of the program
.global _start
_start:
	@ MOV A, B: moves data into locations. 
	@ A is the destination and B is the source.
	@ #number places the number in decimal. 
	@ #Oxnumber places the number in hexadecimal.
	MOV R0, #30 
	
	@ moves into R7 (system calls register),
	@ the decimal 1, that is related to the program exit.
	MOV R7, #1
	@ SWI is a Software Interrupt
	SWI 0
	