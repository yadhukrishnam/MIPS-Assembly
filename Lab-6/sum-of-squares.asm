.data
    	result_is : .asciiz "Sum of squares of first 20 numbers are: "
   
.text
 main:
 	# Set i = 0
	move	$t1, $zero
	
	# Initialize sum = 0
	move	$t2, $zero

loop:	
	# if i == 20, exit 
	beq	$t1, 20, exit
	addi	$t1, $t1, 1
	
	# Set t3 = t1 * t1 and add it to sum variable
	mul	$t3, $t1, $t1
	add	$t2, $t2, $t3
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