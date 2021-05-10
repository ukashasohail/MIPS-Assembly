.data

    mycharacter: .byte 'u' # 1 character is 1 byte

.text

.globl main
.ent main

main:

    li $v0, 4
    la $a0, mycharacter
    syscall

    jr $ra

.end main