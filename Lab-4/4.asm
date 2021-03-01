.text
.globl main

main:
	li	$t1, 10		# I
	li	$t2, 10		# J
	li	$t3, 10		# K
	
	bne	$t1, $t2, ELSE
	bne	$t1, $t3, ELSE

	add	$t2, $t2, 1
	sub	$t1, $t1, 1
	jr	$ra
ELSE:	
	move	$t2, $t1
	add	$t2, $t2, $t3
	subi	$t2, $t2, 2
	jr	$ra
	
	