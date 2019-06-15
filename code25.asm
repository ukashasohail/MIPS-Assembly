.data

    name: .asciiz "ukasha\n"

.text

.globl main
.ent main

main:

    addi $t0, $0, 0 # i=0

    while:

        bgt $t0, 10, out

        li $v0, 4
        la $a0, name
        syscall

        li $v0, 1
        move $a0, $t0
        syscall

        addi $t0, $t0, 1

        j while

    out:

    li $v0, 10
    syscall

.end main