.data


.text

.globl main
.ent main

main:

    addi $a1, $0, 55 #first argument is 50
    addi $a2, $0, 145 # second argument is 145 

    jal addnum

    li $v0, 1
    addi $a0, $v1, 0
    syscall 

    li $v0, 10
    syscall

    #fucntion add
    addnum:

        add $v1, $a1, $a2 #by convention v is for return values

    jr $ra
    .end addnum

.end main