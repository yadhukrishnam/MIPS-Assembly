.data
	label		.asciiz "Input String : "
	input_string: 	.asciiz "The Quick Brown Fox Jumped Over The Lazy Dog..!"
   	
.text
 main:
 	li	$v0, 4
 	la	$a0, label
 	syscall
 	
 	li	$v0, 4
 	la	$a0, input_string
 	syscall
 	
 	
 	 	
