.data

    prompt: .asciiz "enter value of e: "

.text

.globl main
.ent main

main:

    li $v0, 4 
    la $a0, prompt
    syscall

    #reading float from user

    li $v0, 7 #double will be stored in f0 and f1
    syscall

    #displaying output
    li $v0, 3
    add.d $f12, $f0, $f10
    syscall

    li $v0, 10
    syscall

.end main