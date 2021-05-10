# save registers to stack

.data

    newline: .asciiz "\n"

.text

.globl main
.ent main

main:

    addi $s0, $0, 10

    jal increase

    #printing new line

    li $v0, 4
    la $a0, newline
    syscall

    jal printvalue

    #exiting
    li $v0,10
    syscall

    increase:
        addi $sp, $sp, -8
        sw $s0, 0($sp)
        sw $ra, 4($sp)

        addi $s0, $s0, 30

        jal printvalue

        lw $s0, 0($sp)
        lw $ra, 4($sp)
        
        addi $sp, $sp, 8

        jr $ra

    .end increase

    #print the value
    printvalue:

        li $v0, 1
        move $a0, $s0
        syscall

        jr $ra
    .end printvalue

.end main