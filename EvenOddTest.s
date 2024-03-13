		;		determine if a number is odd or even, return 1 if even or 0 if odd
		;		0 if off in register 0
		;		input is in register 0
		MOV		R0, #12
isEven	MOV		R1, R0
		TST		R1, #1
		BEQ		ItIsEven
ItIsOdd	MOV		R0, #0
		B		Return
ItIsEven	MOV		R0, #1
Return	END
