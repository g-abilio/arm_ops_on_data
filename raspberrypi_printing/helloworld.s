.global _start
_start:
    @ places the output into the std output
    MOV R0, #1
    LDR R1, =message
    LDR R2, =len
    @ R7 is a special porpouse register, and it
    @ keeps track of what we want the OS to do
    @ #4 tells the OS that we want to print something to the screen
    MOV R7, #4
    SWI 0

    @ #1 tells the OS to terminate the program
    MOV R7, #1
    SWI 0

.data
message:
    @ declares a string (.string) with a null terminator at the end
    @ so we can now know where the string actually ends
    .asciz "hello world \n"
    @ .-message is the lenght of the string
    len = .-message