.data

    msg: .asciiz "the number is less"
    msg1: .asciiz "the number is not less"

.text

.globl main
.ent main

main:

    addi $t0, $0, 8
    addi $t1, $0, 7

    slt $t3, $t0, $t1

    bne $0, $t3, label

    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 10
    syscall

    label:
        li $v0, 4
        la $a0, msg
        syscall        

        li $v0, 10
        syscall

.end main