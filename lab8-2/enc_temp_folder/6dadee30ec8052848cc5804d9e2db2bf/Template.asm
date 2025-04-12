; Lab8-2.asm
;/**
;* Description: This module implements matrix operations on matrices and vectors.... It returns a vector...
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 04/08/2025
;* Creation date: 04/08/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

;Write a sequence of statements that display a subroutineÅfs return address. 
;Hint: the esp register points to the return address stored on the call stack. 
;You can call procedure WriteHex. This can be solved in 2 lines of code.

.data 

.code
main proc
call displayReturnAddress
	invoke ExitProcess,0
main endp

displayReturnAddress PROC
mov eax, [esp]
	call WriteHex
	ret
displayReturnAddress endp

end main