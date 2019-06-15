.data

    rollnum: .word 105 #this is integer

.text

.globl main
.ent main

main:

    li $v0, 1
    lw $a0, rollnum #lw load word into a
    syscall 

    jr $ra

.end main