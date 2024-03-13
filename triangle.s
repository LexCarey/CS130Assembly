; isValidTriangle
; A = r3, B = r4, C = r5
; is A < B+C
add r0, r4, r5
cmp r0, r3
ble notValid
; is AB< A+C
add r0, r3, r5
cmp r0, r4
ble notValid
; is C < A+B
add r0, r3, r4
cmp r0, r5
ble notValid

notValid:
	mov r1, #1;
	
