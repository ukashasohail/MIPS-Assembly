.data

    msg: .asciiz "HI!"

.text

.globl main
.ent main

main:

    addi $t0, $0, 40
    addi $t1, $0, 30

    # bgt $t0, $t1, label
    # blt $t1, $t0, label
    bgtz $t0, label

    li $v0, 10
    syscall

    label:

        li $v0, 4
        la $a0, msg
        syscall

        li $v0, 10
        syscall

.end main