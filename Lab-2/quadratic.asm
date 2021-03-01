.data
    width: .word 0
    height: .word 0
    area: .word 0
    perimeter: .word 0

    promptA: .asciiz "\nEnter A :"
    promptB: .asciiz "\nEnter B :"
    ab2: .asciiz "\n2*A*B = "
    a2: .asciiz "\nA^2 = "
    b2: .asciiz "\nB^2 = "
    result: .asciiz "\nA^2 + 2AB + B^2 = "

.text
main:
    # Prompt for A
    la $a0, promptA 
    addi $v0, $0, 4
    syscall

    # Input A into $8
    addi $v0, $0, 5
    syscall
    add $8, $0, $v0

    # Prompt for B 
    la $a0, promptB
    addi $v0, $0, 4
    syscall

    # Input B into $9
    addi $v0, $0, 5
    syscall
    add $9, $0, $v0

    # Calc 2*A*B
    mul $10, $8, $9
    mul $10, $10, 2

    # 2*AB = ?    
    la $a0, ab2
    addi $v0, $0, 4
    syscall

    addi $v0, $0, 1
    add $a0, $0, $10
    syscall

    # Calculate a^2 and b^2
    mul $8, $8, $8
    mul $9, $9, $9

    # Calculate Sum of A^2 + 2AB + B^2
    add $10, $10, $9
    add $10, $10, $8
    
    # A^2 = ?    
    la $a0, a2
    addi $v0, $0, 4
    syscall

    addi $v0, $0, 1
    add $a0, $0, $8
    syscall

    # B^2 = ? 
    la $a0, b2
    addi $v0, $0, 4
    syscall

    addi $v0, $0, 1
    add $a0, $0, $9
    syscall

    # A^2+2AB+B2 = ?
    la $a0, result
    addi $v0, $0, 4
    syscall

    addi $v0, $0, 1
    add $a0, $0, $10
    syscall
   
    jr $ra