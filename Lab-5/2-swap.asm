.data
    a: .asciiz "Enter first No. (a) :"
    b: .asciiz "Enter second No. (b) :"
    c: .asciiz "The values after swapping a="
    d: .asciiz ", b="
   
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

    # Swap Values in $t1 and $t0 using $t2
	move	$t2, $t0
	move 	$t0, $t1
	move 	$t1, $t2

    # Printing out result
	li 	$v0, 4
	la 	$a0, c
	syscall    
	
	# Print t0
    	li 	$v0, 1
	move 	$a0, $t0
	syscall
    

    	li 	$v0, 4
	la 	$a0, d
	syscall    

    	# Print t1
    	li 	$v0, 1
	move 	$a0, $t1
	syscall
    
    # End Program
    li $v0, 10
    syscall
