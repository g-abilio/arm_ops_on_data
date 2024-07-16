# Logical Operations

Logical operations are the application of logical operators (AND, OR, XOR, NOT) in the bits level or in the level of a bit pattern. 
Let's talk about the application of logical operators in the bit level: 

### Bit level

Using the Boolean Algebra, that understand 0 as FALSE and 1 as TRUE, we can depict the behavior of each operator as following:

- AND: Operator with two inputs and one output. If one input is 0, the output is 0. The possible results are:

x | y | x AND y   
--- | --- | ---
1 | 1 | 1 
1 | 0 | 0      
0 | 1 | 0     
0 | 0 | 0    

- OR: Operator with two inputs and one output. If one input is 1, the output is 1. The possible results are:

x | y | x OR y 
--- | --- | ---  
1 | 1 | 1 
1 | 0 | 1  
0 | 1 | 1 
0 | 0 | 0 

- XOR: Operator with two inputs and one output. If the inputs are equal, the output is 0. Otherwise, it is 1. The possible results are:

x | y | x XOR y 
---|--- | ---
1 | 1 | 0 
1 | 0 | 1  
0 | 1 | 1 
0 | 0 | 0 

- NOT: Operator with one input and one output. Just flips the boolean value of the bit. The possible results are:

x | NOT X 
---|--- 
1 | 0 
0 | 1 

### Bit pattern level

Here, the behavior of the logical operations in the bit level is just extended to a whole bit pattern. Now, we have the operations of complementation, cleaning, marking and inversion: 

- Complementation: Using the NOT operator in a whole bit pattern. It just flips all the bits, showing the effect of complementation:

1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 |
---|---|---|---|---|---|---|---|  
0 | 1 | 1 | 0 | 0 | 1 | 1 | 1 | 

The first pattern turns into the second after the complementation, that is, the application of the NOT operator. See that it's a bitwise application, that is, NOT is applied in each bit, producing the pattern shown. 

- Cleaning: Using the AND operator in a whole bit pattern. It is used to "clean" bits, that is, give them the 0 (FALSE) value:

1 | 0 | 1 | 0 | 0 | 1 | 1 | 0 |
---|---|---|---|---|---|---|---|  
0 | 0 | 0 | 0 | 0 | 1 | 1 | 1 | 

Applying the AND operator to this two patterns bitwise, the result is the following pattern: 

0 0 0 0 0 1 1 0

Where there is an AND with one entry as a zero, the result is zero. So, using this property, the AND operator can clean specific bits using a personalized pattern (named mask), where zeros are placed in the positions correspondent to the bits that are being cleaned. 

- Marking: Using the OR operator in a whole bit pattern. It is used to "mark" bits, that is, give them the 1 (TRUE) value:

1 | 0 | 1 | 0 | 0 | 1 | 1 | 0 |
---|---|---|---|---|---|---|---|  
1 | 1 | 1 | 1 | 1 | 0 | 0 | 0 | 

Applying the OR operator to this two patterns bitwise, the result is the following pattern: 

1 1 1 1 1 1 1 0

Where there is an OR with one entry as a one, the result is one. So, using this property, the OR operator can mark specific bits using a mask, where ones are placed in the positions correspondent to the bits that are being marked. 

- Inversion: Using the XOR operator in a whole bit pattern. It is used to complement specific bits:

1 | 0 | 1 | 0 | 0 | 1 | 1 | 0 |
---|---|---|---|---|---|---|---|  
1 | 1 | 1 | 1 | 1 | 0 | 0 | 0 | 

Applying the XOR operator to this two patterns bitwise, the result is the following pattern: 

0 1 0 1 1 1 1 0

If the two entries are equal, the result is zero. Otherwise, it's one. So, using this property, the XOR operator can invert specific bits by using a mask with ones in the places correspondent to the bits that are going to be inverted.
