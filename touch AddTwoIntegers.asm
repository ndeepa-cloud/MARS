#============================================================
# Program: AddTwoIntegers.asm
#============================================================

.data
prompt1: .asciiz "Enter the first integer: "
prompt2: .asciiz "Enter the second integer: "
resultMsg: .asciiz "The sum is: "

.text
.globl main
main:
    li $v0, 4
    la $a0, prompt1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, prompt2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    add $t2, $t0, $t1

    li $v0, 4
    la $a0, resultMsg
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall
