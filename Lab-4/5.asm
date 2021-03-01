.text
.globl main

main:
	li	$t1, 10		# I
	li	$t2, 10		# J
	li	$t3, 10		# K
	
	beq 	$t1, $t2, IF
	beq	$t1, $t3, IF
	j	ELSE
	
IF:
	add	$t1, $t1, 1
	sub	$t2, $t2, 1
	jr	$ra

ELSE:	
	move	$t2, $t1
	add	$t2, $t2, $t3
	jr	$ra

	