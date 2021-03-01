.text
.globl main
main:
	li	$t1, 7		# i
	li	$t2, 7		# j
	bne	$t1, $t2, end	# i != j => Skip to End
	add	$t1, $t1, 1	# Increment I
end:
	sub	$t2, $t2, 1	# Decrement J


	