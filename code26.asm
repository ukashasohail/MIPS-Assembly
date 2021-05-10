.data

    list: .space 20

.text

.globl main
.ent main

main:

    #3 numbers
    addi $s0, $0, 10
    addi $s1, $0, 20
    addi $s2, $0, 30


    #indexes
    addi $t0, $0, 0

    sw $s0, list($t0)
        addi $t0, $t0, 4

    sw $s1, list($t0)
        addi $t0, $t0, 4
    
    sw $s2, list($t0)


    #retrieving info from array
    lw $t6, list($0)
    
    li $v0, 1
    move  $a0, $t6
    syscall


    li $v0, 10
    syscall

.end main