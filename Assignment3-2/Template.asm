; Assignment3-2.asm
;/**
;* Description: 2. FIBONACCI NUMBERS
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date:3/12/2025
;* Creation date: 3/11/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
numbers DWORD 1, 1, 0, 0, 0, 0, 0  ;Store first two Fibonacci numbers and placeholders for others
count DWORD 5  

.code
main proc

;2. FIBONACCI NUMBERS
;Write a program that uses a loop to calculate the first seven values of the Fibonacci number sequence

mov ECX, count ;loop counter
mov EAX, 2 * TYPE numbers ;index
 
L1:
	mov EBX, numbers[EAX - 1 * TYPE numbers]
	mov EDX, numbers[EAX - 2 * TYPE numbers]
	add EBX, EDX
	mov numbers[EAX], EBX
	add EAX, TYPE numbers ;increment index
	Loop L1

	invoke ExitProcess,0
main endp
end main