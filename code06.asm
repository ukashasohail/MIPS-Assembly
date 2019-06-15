.data

    number1: .word 5
    number2: .word 25

.text

.globl main
.ent main

main:

    # lw $t0, number1
    # lw $t1, number2
    lw $t0, number1($zero)
    lw $t1, number2($zero)

    # adding register t0 and t1
    add $t2, $t0, $t1   # t2 = t0 + t1 

    #printing answer
    li $v0, 1
    move $a0, $t2
    syscall

    jr $ra

.end main