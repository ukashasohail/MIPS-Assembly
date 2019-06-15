.data
    
    name: .asciiz "Enter your name: "
    msg: .asciiz "\nHello, "
    userinput: .space 20

.text

.globl main
.ent main

main:

    li $v0, 4
    la $a0, name
    syscall

    li $v0, 8 #getting user input in string
    la $a0, userinput #address where string to be stored
    li $a1, 20 #telling max no of chars
    syscall

    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 4
    la $a0, userinput
    syscall

    li $v0, 10
    syscall

.end main