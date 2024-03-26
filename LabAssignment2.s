		;		Lexington Carey 3/14/2024
		;		CS130 Spring 2024 Section 15316 Lab Assignment 2
		;		Enter year - 1980 into r0
		;		Enter month number into r1
		;		Enter day number into r2
		mov		r0, #43
		mov		r1, #10
		mov		r2, #17
		
		cmp		r0, #127
		bgt		error
		
		cmp		r1, #12
		bgt		error
		
		cmp		r2, #31
		bgt		error
		
		cmp		r0, #0
		blt		error
		
		cmp		r1, #0
		blt		error
		bne		keepMonth
		mov		r1, #1
		
keepMonth	cmp		r2, #0
		blt		error
		bne		keepDay
		mov		r2, #1
		
keepDay	lsl		r0, r0, #4
		add		r0, r0, r1
		lsl		r0, r0, #5
		add		r0, r0, r2
		end
		
error	mov		r0, #-1
