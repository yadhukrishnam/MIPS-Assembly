.data
msg1:   .asciiz "ENTER LENGTH : "
msg2:   .asciiz "ENTER BREADTH : "
star:   .asciiz "* "
n:   .asciiz "\n"

.text

    .globl  main
main:   

    li      $v0,4       
    la      $a0, msg1   
    syscall

    li      $v0,5       
    syscall 
    move    $t0,$v0     

    li      $v0,4       
    la      $a0, msg2   
    syscall

    li      $v0,5       
    syscall 
    move    $t1,$v0 

    
    li $t2, 0

loop1 : beq     $t2, $t1, Exit
        addi    $t2, $t2, 1
        li $t3, 0
        loop2 : beq     $t3, $t0, loop3
                li      $v0,4       
                la      $a0, star  
                syscall
                addi    $t3, $t3, 1
                j loop2
        loop3 : li      $v0,4       
                la      $a0, n
                syscall
                j loop1
        
Exit : jr $ra
