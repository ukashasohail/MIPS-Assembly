.data


.text

.globl main
.ent main

main:

    addi $t0, $0, 50 # t0=50
    addi $t1, $0, 8 # t1=10

    div $t0, $t1 # t0/t1

    #quotient will go in low register
    # remainder will go in hi  register

    mflo $s0 # s0 = quotient
    mfhi $s1 # s1 = remainder


    li $v0,1
    move $a0, $s0
    syscall

    li $v0,1
    move $a0, $s1
    syscall

    jr $ra

.end main