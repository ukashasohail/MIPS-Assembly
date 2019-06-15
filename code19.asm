.data

    prompt: .asciiz "enter value of pi: "
    zerofloat: .float 0.0

.text

.globl main
.ent main

main:

    lwc1 $f4, zerofloat

    #displaying message
    li $v0, 4 
    la $a0, prompt
    syscall

    #reading float
    li $v0, 6 #input of float moved to #$f0
    syscall

    #display value
    li $v0, 2
    add.s $f12, $f0, $f4
    syscall

    li $v0, 10
    syscall

.end main