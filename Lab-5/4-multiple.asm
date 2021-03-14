.data
	input_a	: .asciiz "Enter first No. (a) :"
	input_b	: .asciiz "Enter second No. (b) :"
	a_is	: .asciiz "A is a multiple of B"
	b_is	: .asciiz "B is a multiple of A"
	noth	: .asciiz "A and B are not multiples"
   
.text
 main:
    	# Printing out the text
	li 	$v0, 4
	la 	$a0, input_a
	syscall

	# Getting user input
    	li 	$v0, 5
	syscall
	move 	$t0, $v0

    	
	# Printing out the text
	li 	$v0, 4
	la 	$a0, input_b
	syscall

	# Getting user input
    	li 	$v0, 5
	syscall
	move 	$t1, $v0

	# Check divisibility
	rem	$t2, $t1, $t0
	rem	$t3, $t0, $t1	

	beq	$t2, 0, bdiv
	beq	$t3, 0, adiv

nothing:	
	li 	$v0, 4
	la 	$a0, noth
	syscall
	
	j	exit
	
adiv:
	li 	$v0, 4
	la 	$a0, a_is
	syscall
	j	exit
	
bdiv:
	li 	$v0, 4
	la 	$a0, b_is
	syscall
	j	exit
	
exit:
	# End Program
	jr $ra
