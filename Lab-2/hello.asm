        .data
msg:    .asciiz "Hello, MIPS\n"

        .text   
    .globl main
main: 
    la $a0, msg
    li $v0, 4
    syscall
    jr $ra