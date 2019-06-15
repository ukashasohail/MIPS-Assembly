.data

    prompt: .asciiz "enter value of pi: "

.text

.globl main
.ent main

main:

    li $v0, 10
    syscall

.end main