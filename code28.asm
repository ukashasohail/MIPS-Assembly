.data

    list: .word 100:5
    space: .asciiz "\n"
.text

.globl main
.ent main

main:

    addi $t0, $0, 0

    while:
        beq $t0, 20, exit

        lw $t6, list($t0)

        #print current number
        li $v0, 1
        move $a0, $t6
        syscall

        li $v0,4
        la $a0,space
        syscall

        addi $t0, $t0, 4
        
        j while

    exit:

    li $v0, 10
    syscall

.end main