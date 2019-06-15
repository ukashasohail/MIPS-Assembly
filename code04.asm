# prinitng a float -> 6 digits precision

.data

    pi: .float 3.14

.text

.globl main
.ent main

main:

    li $v0, 2
    lwc1 $f12, pi #lwc1 -> load word co processor 1 for float registers, b/c f12 is in cp1
    syscall
    

    jr $ra

.end main