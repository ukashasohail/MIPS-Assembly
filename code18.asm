.data

    prompt: .asciiz "enter your age: "
    prompt0: .asciiz "\nyour age is: "

.text

.globl main
.ent main

main:

    #showing prompt
    li $v0,4
    la $a0, prompt
    syscall

    #reading input
    li $v0, 5
    syscall

    #store age in t0
    move $t0, $v0

    #displaying message
    li $v0, 4 
    la $a0, prompt0
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0,10
    syscall

.end main