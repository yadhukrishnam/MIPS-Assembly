.data
	input		:	.asciiz "Enter value of n "
    	result_is 	: 	.asciiz "Sum of first n numbers are: "
   
.text
 main:
  	# Print "Enter a num"
 	li	$v0, 4
 	la	$a0, input
 	syscall
 	
 	# Take user input into t0
    	li 	$v0, 5
	syscall
	move 	$t0, $v0
	
 	# Set i = 0
	move	$t1, $zero
	
	# Initialize sum = 0
	move	$t2, $zero

loop:	
	# if i == t0, exit 
	beq	$t1, $t0, exit
	addi	$t1, $t1, 1
	
	add	$t2, $t2, $t1
	j	loop

exit:	
	
	li	$v0, 4
 	la	$a0, result_is
 	syscall
 	
	# Print sum stored in $t2
	li 	$v0, 1
	move 	$a0, $t2
	syscall  
	
 	# End Program
	li	$v0, 10
	syscall