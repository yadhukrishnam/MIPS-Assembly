.data
    width: .word 0
    height: .word 0
    area: .word 0
    perimeter: .word 0

    widthPrompt: .asciiz "Enter width :"
    heightPrompt: .asciiz "Enter height :"
    areaIs: .asciiz "Area of rectangle is:"
    perimeterIs: .asciiz "Perimeter of rectange is:"
    nextLine: .asciiz "\n"

.text
main:
    # Prompt for Width
    la $a0, widthPrompt 
    addi $v0, $0, 4
    syscall

    # Input Width into $1
    addi $v0, $0, 5
    syscall
    add $8, $0, $v0

    # Prompt for Height 
    la $a0, heightPrompt
    addi $v0, $0, 4
    syscall

    # Input Height into $2
    addi $v0, $0, 5
    syscall
    add $9, $0, $v0

    # Multiply $1 and $2 
    mult	$8, $9		# $1 * $2 = Hi and Lo registers
    mflo	$10         # copy Lo to $t2

    # Display Area is 
    la $a0, areaIs
    addi $v0, $0, 4
    syscall

    # Print Calculated Value
    addi $v0, $0, 1
    add $a0, $0, $10
    syscall

    # Display Next Line 
    la $a0, nextLine
    addi $v0, $0, 4
    syscall

    # Calculate Perimeter
    add $8, $8, $9
    mul $8, $8, 2

    # Display Perimeter Is    
    la $a0, perimeterIs
    addi $v0, $0, 4
    syscall

    # Output calculated value of perimeter
    addi $v0, $0, 1
    add $a0, $0, $8
    syscall
    jr $ra