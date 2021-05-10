.data

    msg: .asciiz "the numbers are equal"
    msg2: .asciiz "the numbers are not equal"

.text

.globl main
.ent main

main:

    #branch conditions are
    # beq
    # bne
    # b

    addi $t0, $0, 5
    addi $t1, $0, 5

    beq $t0, $t1, label

    b label

    li $v0, 4
    la $a0, msg2
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