.data


.text

.globl main
.ent main

main:

    addi $t0, $0, 10000 # t0 = 1500
    addi $t1, $0, 15 # t1 = 15

    mult $t0, $t1 # t0*t1

    #move from low register to s0
    mflo $s0

    li $v0, 1
    move $a0, $s0
    syscall

    jr $ra

.end main