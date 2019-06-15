.data

    array: .word 1000, 500, 1000
           .word 1001, 900, 1565
           .word 1002, 500, 600

    size: .word 3

    #defining constant
    # .eqv DATA_SIZE 4

.text

.globl main
.ent main

main:

addi $t9, $0, 4

    la $a0, array
    lw $a1, size

    jal sum

    move $a0, $v0
    li $v0, 1
    syscall

    li $v0, 10
    syscall

sum:
    li $v0, 0 #sum = 0

    li $t0, 0 # t0 is index

    sumloop:

        mul $t1, $t0, $a1 # t1 = rowindex * column size
        add $t1, $t1, $t0 #  + column index
        mul $t1, $t1, $t9 # *data size
        add $t1, $t1, $a0 # + base address

        lw $t2, ($t1)

        add $v0, $v0, $t2 # sum = sum + array[i][i]

        addi $t0, $t0, 1 # i = i+1

        blt $t0, $a1, sumloop # if i<size, loop again

        jr $ra


.end main