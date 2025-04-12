; Lab 5.asm
;/**
;* Description: This module implements matrix operations on matrices and vectors.... It returns a vector...
;* Author names: 
;* Author emails: 
;* Last modified date:
;* Creation date: 
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
array DWORD 0, 1, 2, 3

.code
main proc

;1. EXCHANGING PAIRS OF ARRAY VALUES
;Write a program with a loop and indexed addressing that exchanges every pair of values in an array with an even number of elements. 
;Therefore, item i will exchange with item i+1, and item i+2 will exchange with item i+3, and so on.

mov EAX, array[0]
mov EBX, array[2 * TYPE array] 

xchg EAX, array[1 * TYPE array]
xchg EBX, array[3 * TYPE array]


	invoke ExitProcess,0
main endp
end main