; lab10.asm
;/**
;* Description: Write a test program that passes 5 integers between 50 and 100, inclusive.For each integer used as test, pass it to the CalcGrade procedure.
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date:4/18/2025
;* Creation date: 4/17/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc 

;Create a procedure named CalcGrade that receives an integer value
;between 0 and 100, and returns a single capital letter in the AL register.
;Preserve any register values that are necessary (specifically the ecx loop counter register) between calls to the procedure.
;The letter returned by the procedure should be according to the following ranges:

;Score Range Letter Grade
;-------------------------
;90 to 100 A
;80 to 89 B
;70 to 79 C
;60 to 69 D
;0 to 59 F

;Write a test program that passes 5 integers between 50 and 100, inclusive.
;For each integer used as test, pass it to the CalcGrade procedure.

.data 
scores BYTE 100, 89, 79, 69, 59


.code
main proc
mov ecx, 5 ;loop counter
mov esi, OFFSET scores

l1:
	mov al, [esi]
	call CalcGrade
	inc esi ;points next elements
loop l1

	invoke ExitProcess,0
main endp

CalcGrade proc 
	
	cmp al, 100
	jg done
	cmp al, 90
	
	;90 to 100 A
	jg gradeA
	

	;80 to 89 B
	cmp al, 80
	jg gradeB
	

	;70 to 79 C 
	cmp al, 70
	jg gradeC
	

	;60 to 69 D
	cmp al, 60
	jg gradeD
	
				
	;0 to 59 F
	mov al, 'F'
	call WriteChar
	
	gradeA:
	mov AL, 'A'
	call WriteChar
	ret
	
	gradeB:
	mov al, 'B'
	call WriteChar
	ret
	
	gradeC:
	mov al, 'C'
	call WriteChar
	ret
	
	gradeD:
	mov al, 'D'
	call WriteChar
	ret

	done:
	ret
CalcGrade endp
end main