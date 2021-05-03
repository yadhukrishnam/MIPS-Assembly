.data
    	in: 	.asciiz 	"Enter a number (n):"
    	out: 	.asciiz		"The no of ones in its binary representation are: "
   
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

	# Initialize counter variable 
	move	$t3, $zero
	move	$t4, $zero	
loop:
	beq	$t0, 0, exit
	
	# t4 = t & 1 
	andi	$t4, $t0, 1
	
	# count = count + t4
	add	$t3, $t3, $t4
	
	# t0 = t0 >> 1
	srl	$t0, $t0, 1
	
	j	loop
	
exit:	
	# Print result is
	li	$v0, 4
 	la	$a0, out
 	syscall
 	
	# Print sum stored in $t3
	li 	$v0, 1
	move 	$a0, $t3
	syscall  
	
 	# End Program
	li	$v0, 10
	syscall