; Assignment5-1.asm
;/**
;* Description: 1. FILLING AN ARRAY
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 4/16/2025
;* Creation date: 4/16/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc 

;1. FILLING AN ARRAY

;Create a procedure that fills an array of doublewords with N random integers,
;making sure the values fall within the range j...k, inclusive. When calling the procedure, 
;pass a pointer to the array that will hold the data, pass N, and pass the values of j and k.
;Preserve all register values between calls to the procedure (see pushad and popad). 
;Write a test program that calls the procedure twice, using different values for j and k. 
;You may use the RandomRange and Randomize procedures.

.data 
array DWORD 20 DUP(?)
N DWORD 10 ;number of elements
j DWORD 1 ;minimum
k DWORD 10 ;maximum

.code
main proc
call  Randomize 
mov eax, offset array
mov ebx, N
mov ecx, j
mov edx, K
call fillsAnArray

mov eax, offset array
mov ebx, N
mov ecx, j
mov edx, k
call fillsAnArray

	invoke ExitProcess,0
main endp

fillsAnArray PROC USES eax ebx ecx edx esi
    pushad
	mov ecx, N ;loop counter
	mov esi, eax

fill_loop:
	mov eax, k
	sub eax, j
	inc eax
	call RandomRange
	add eax, j

	mov [esi], eax
	add esi, 4

	loop fill_loop

	popad
	ret

fillsAnArray endp

end main