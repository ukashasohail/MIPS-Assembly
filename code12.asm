.data


.text

.globl main
.ent main

main:

    addi $t0, $0, 50 # t0=50
    addi $t1, $0, 10 # t1=10

    div $s0, $t0, 5 # s0 = t0/5

    li $v0,1
    move $a0, $s0
    syscall

    jr $ra

.end main