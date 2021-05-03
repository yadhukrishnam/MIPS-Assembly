.data
    in: .asciiz "Enter a number (n):"
    d: .asciiz "The first n fibonacii series are: "
    space: .asciiz " "
   
.text
 main:
 	# Print "Enter a num"
 	li	$v0, 4
 	la	$a0, in
 	syscall
 	
 	# Take user input into t0
    	li 	$v0, 5
	syscall
	move 	$t0, $v0
	
	# Initialize a, b
	li	$t1, 0
	li	$t2, 1
	
	# Set loop variable to 0
	li	$t4, 0
		
loop:	
	beq	$t0, $t4, exit
	
	# Print t1 and a space
	li 	$v0, 1
	move 	$a0, $t1
	syscall    	
	
	li	$v0, 4
	la	$a0, space
	syscall

	# Next = t1 + t2
	move	$t3, $0	
	add	$t3, $t1, $t2
	
	# t1 = t2
	move	$t1, $t2
	# t2 = Next
	move	$t2, $t3
	
	# Increment loop var and go to condition
	addi	$t4, $t4, 1
	j	loop

exit:	
 		
 	# End Program
	li	$v0, 10
	syscall