# LOAC 2022.2
# Roteiro 07 - Problema 01: Fatorial
# (c) Alexandre B. Corlet dos Santos, 119210883
# This program computes the factorial of 5 in Assembly RISC-V.

		addi a1, zero, 1			# assign value 1 to register a1 (a1 := 1)
    	addi a2, zero, 1			# assign value 1 to registet a2 (a2 := 1)
    	addi a3, zero, 6			# assign value 1 to register s1 (a3 := 6)
loop:	bge  a2, a3, done			# if a2 >= a3, then exit loop and go to done
		mul a1, a1, a2				# compute a1 * a2, and assign result to a1 (a1 := a1 * a2)
		addi a2, a2, 1				# increment value of a2 by one
        j loop						# jump to loop header
done: 	nop							# finish program execution
