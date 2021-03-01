.data
	msg1:	.asciiz "Enter no. of Integers \n"
	msg2:	.asciiz "Sum of integers : " 

.text
.globl main
main:
	# Input an integer
	li	$v0, 4
	la	$a0, msg1
	syscall
	
	li	$v0, 5
	syscall
	move 	$t0, $v0 
	
	li	$t1, 0		# Store Counter
	li	$t2, 0		# Store Sum

loop:
	addi	$t1, $t1, 1
	add	$t2, $t2, $t1
	beq	$t1, $t0, end
	j	loop
	
end:
	# Print String 
	li	$v0, 4
	la	$a0, msg2
	syscall
	
	# Print Integer
	li	$v0, 1
	move	$a0, $t2
	syscall
	
	jr $ra
	