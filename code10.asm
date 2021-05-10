.data


.text

.globl main
.ent main

main:

    addi $s0, $0, 5 # s0=4
    
    # sll $t0, $s0, 2 # this will multiply by 4
    sll $t0, $s0, 3 # this will multiply by 8


    #printing result
    li $v0,1
    move $a0, $t0
    syscall

    jr $ra

.end main