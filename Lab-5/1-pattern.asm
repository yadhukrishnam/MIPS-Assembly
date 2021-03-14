.data
	a	: .asciiz "Enter length  :"
	b	: .asciiz "Enter breadth :"
	star	: .asciiz "*"
	space	: .asciiz "*"
	next	: .asciiz "\n"
   
.text
 main:
    	# Printing out the text
	li 	$v0, 4
	la 	$a0, a
	syscall

	# Getting user input
    	li 	$v0, 5
	syscall
	move 	$t0, $v0
	
	# Printing out the text
	li 	$v0, 4
	la 	$a0, b
	syscall

	# Getting user input
    	li 	$v0, 5
	syscall
	move 	$t1, $v0
	
	li	$t3, 0
	
outerLoop:
	addi	$t3, $t3, 1
	bne	$t3, $t0, outerLoop
	
	jr $ra
	
	