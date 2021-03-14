.data
nl:     .asciiz	"\n"

.text
	.globl	main
main:	
	# Sets t0 to 0 and t1 to 10;	
	# int $t0=0, $t1=10;
	li    	$t0, 0  
	li    	$t1, 10
	
loop: 
	# Set $t0 = $t0 + 1;
	addi  	$t0, $t0, 1                
	# loop until $t0 == $t1  
	bne   	$t1, $t0, loop 
	
	# Sets $t0 = $t1 left shifted by 2 bits
	sll   	$t0, $t1, 2
	
	# Print integer $t0
	li	$v0,1		
	move	$a0, $t0	
	syscall
	
	# Print \n charecter
	li	$v0,4		
	la	$a0, nl
	syscall
	
	# return 
	li	$v0,10		
	syscall	
