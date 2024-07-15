@ ff200040 is the location of the switches in the
@ stack memory. The number of each switch represents 
@ a power of the binary system. If the 3 first switches are
@ on, we are going to have 7 in decimal: 2^0 + 2^1 + 2^2 = 7
.equ SWITCH, 0xff200040
@ ff200000 is the location of the LEDs at the stack. 
@ The rightmost LED represents the power 0 of the binary system
@ and the powers grow going from right to left. 
.equ LEDs, 0xff200000
.global _start
_start:
	@ =SWITCH -> The value stored in the constant
	LDR R0, =SWITCH
	LDR R2, =LEDs
	
	@ Seeing the result, we can understand the switches
	@ as users input.
	LDR R1, [R0]
	
	@ Store the data that is in R1 into the location of R2
	@ LED's working as outputs
	STR R1, [R2]
	
	@ Switches and LED's -> IO