# Logical shifts

Logical shifts are a subset of the shift operations, that are divided between logical shifts and arithmetic shifts.

## Logical shifts

Logical shifts are also divided between two sets: the standard logical shift and the circular logical shift, know as rotation.

### Standard logical shift

- Standard logical shift to the left: All the bits in a bit pattern are shifted to the left. The leftmost bit is lost, and the rightmost bit place is filled with a zero: 

1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 |
---|---|---|---|---|---|---|---|  
0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 | 

The second pattern is after the shift.

- Standard logical shift to the right: All the bits in a bit pattern are shifted to the right. The rightmost bit is lost, and the leftmost bit place is filled with a zero: 

1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 |
---|---|---|---|---|---|---|---|  
0 | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 

The second pattern is after the shift.

### Rotation

- Rotation to the left: All the bits in a bit pattern are shifted to the left. Now, the leftmost bit is going to the rightmost bit place: 

1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 |
---|---|---|---|---|---|---|---|  
0 | 0 | 1 | 1 | 0 | 0 | 0 | 1 | 

The second pattern is after the rotation.

- Rotation to the right: All the bits in a bit pattern are shifted to the right. Now, the rightmost bit is going to the leftmost bit place: 

1 | 0 | 1 | 0 | 0 | 1 | 0 | 1 |
---|---|---|---|---|---|---|---|  
1 | 1 | 0 | 1 | 0 | 0 | 1 | 0 | 

The second pattern is after the rotation.

## Arithmetic shifts

The arithmetic shifts are done to multiply or divide a number by 2:

- Arithmetic shift to the right: Fix the leftmost bit, and shift all the others to the right. The rightmost bit is lost and the fixed bit is placed on the second leftmost bit place:

1 | 0 | 0 | 1 | 1 | 0 | 0 | 0 |
---|---|---|---|---|---|---|---|  
1 | 1 | 0 | 0 | 1 | 1 | 0 | 0 | 

It's important to note that this operation divides a number by 2. The leftmost bit is fixed to maintain the number's signal.

- Arithmetic shift to the left: The same operation as the Standard logical shift to the left. This operation multiplies a number by 2. 

It's important to note the leftmost bit, that is responsible for the number's signal. There are some cases where multiplying by 2 gives raises to an overflow/underflow: 

0 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
---|---|---|---|---|---|---|---|  
1 | 1 | 1 | 1 | 1 | 1 | 1 | 0 | 

The number after the operation is -2, because after multiplying by 2, the result is 254, which cannot be represented by 8 bits with the two's complement representation. It's an example of an overflow. 


