.data


.text

.globl main
.ent main

main:

    addi $t0, $0, 50 # t0=50
    addi $t1, $0, 10 # t1=10

    div $s0, $t0, $t1 # s0 = t0/t1

    li $v0,1
    move $a0, $s0
    syscall

    jr $ra

.end main