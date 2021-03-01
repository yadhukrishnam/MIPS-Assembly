.text
.globl main
main:
	li	$t1, 5		# i 
	li	$t2, 5		# j
	bne 	$t1, $2, dec_j	# Decrement j if not eq

inc_i:	
	add	$t1, $t1, 1
	j	end

dec_j:	
	sub	$t2, $t2, 1
	
end:
	add	$t1, $t1, $t2