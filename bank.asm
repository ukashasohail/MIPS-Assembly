.data
    string: .asciiz "Welcome to Bank Management System\n"

    array: .word 1000, 500
           .word 1001, 900
           .word 1002, 1500
           .word 1003, 5000
           .word 1004, 3000

    input1: .asciiz "\nPress 1 for operation \nPress 2 to create account: "

    choice: .asciiz "\nEnter 1 to deposit amount,\n2 to withdraw amount, \n3 for transfer : "
    
    input2: .asciiz "\nEnter account number: "

    input3: .asciiz "\nEnter amount to deposit"