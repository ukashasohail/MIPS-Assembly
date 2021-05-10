.data

    my_double: .double 5.605
    zero_double: .double 0.0
.text

.globl main
.ent main

main:

    ldc1 $f2, my_double #load double coprocessor 1
    ldc1 $f0, zero_double #load double coprocessor 1

    li $v0, 3
    add.d $f12, $f2, $f0
    syscall

    jr $ra

.end main