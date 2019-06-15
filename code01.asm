# RISC Assembly language 
# playstation used mips

.data
    msg: .asciiz "Hello Assembly \n"


.text

.globl main
.ent main

main:
    li $v0, 4
    la $a0, ,msg
    syscall

jr $ra
.end main