.data

    msg: .asciiz "hi how are you?\nim ukasha\n"

.text

.globl main
.ent main

#this is caller
main:

    jal displaymsg

    #exit
    li $v0, 10
    syscall

    #this is callee
    displaymsg:
        li $v0, 4
        la $a0, msg
        syscall

        jr $ra

    .end displaymsg


.end main