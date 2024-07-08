.global _start
_start:
	 MOV R0, #10
	 MOV R1, R0
	 MOV R2, R0
	 MOV R3, #15
	 MOV R4, R3
	 
	 @ Logical shift to the left: 
	 @ LSL Register, Number of shifts
	 LSL R1, #1
	 
	 @ Logical shift to the right:
	 @ LSR Register, Number of shifts
	 LSR R2, #1
	 
	 @ Can be done in the following way:
	 @ MOV R1, RO, LSL #1 
	 @ MOV R2, R0, LSR #1

	 @ Rotation to the right
	 @ ROR Register, Number of rotations
	 @ 0000 ... 01111 (in hex, 0000000f) becomes
	 @ 1000 ... 00111 (in hex, 80000007)
	 @ each digit in hex corresponds to 4 bits
	 ROR R3, #1
	 
	 @ Rotation to the left = 32 - n ROR
	 @ 32 because our word is 32 bits
	 @ n is the number of rotations 
	 @ One rotation to the left:
	 @ 0000 .... 01111 (0000000f in hex)
	 @ becomes 0000 .... 11110 (0000001e in hex)
	 ROR R4, #31
	 
	 
	 
	 
	