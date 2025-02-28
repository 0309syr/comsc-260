;*
;* Description: Lab Worksheet Week 3 - Assembly Fundamentals
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 02/25/2025
;* Creation date: 02/25/2025
;
; lab-3.asm

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	; 1. Declare an array of 120 uninitialized unsigned doubleword values.
	array1 DWORD 120 dup(?)

	; 2. Declare an array of byte and initialize it to the first 5 letters of the alphabet.
	array2 BYTE 'a', 'b', 'c', 'd', 'e'

.code
main proc

	invoke ExitProcess,0
main endp
end main
