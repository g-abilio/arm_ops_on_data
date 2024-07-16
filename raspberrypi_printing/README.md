# Printing strings into the terminal using emulated ARM device

This directory contains a file that prints "hello world" into the terminal of a emulated ARM device using ARM assembly language. 

The emulated device here is a RaspberryPi emulated using QEMU into a Linux distribution (Ubuntu VM by VirtualBox) using SSH. Inside the RaspberryPi, the ARM assembly was used to print the message into the terminal: 

![hello world into emulated RaspberryPi]("rasp_py.png")

Also, we try out debugging the assembly code with gdb, showing the layout asm: 

![debugging arm assembly]("gdb_arm.png")