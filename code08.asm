.data


.text

.globl main
.ent main

main:

    #3 ways
    #mul    takes 3 register
    #mult
    #sll

    addi $s0, $0, 10 # s0 = 10
    addi $s1, $0, 5 # s0 = 5

    mul $t0, $s0, $s1 # t0 = s0*s1 => 50

    #displaying the result
    li $v0, 1
    move $a0, $t0
    syscall

    jr $ra

.end main