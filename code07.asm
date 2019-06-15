.data

    num1: .word 20
    num2: .word -5 #can give values in -

.text

.globl main
.ent main

main:

    lw $s0, num1 #loading from RAM
    lw $s1, num2 #loading from RAM

    #functions are not able to overwrite s registers

    # t0 =s0-s1 = 15
    sub $t0, $s0, $s1 

     # t0 =s1-s0 = -15
    # sub $t0, $s1, $s0


    li $v0, 1
    move $a0, $t0
    syscall



    jr $ra

.end main