.text   
main: 
	li 	$t1, 5
	li 	$t2, 2
	sll 	$t3, $t1, 2	# 20
	sll 	$t2, $t2, 2	# 8
	add	$t2, $t2, $t3	# Final Result
	jr $ra