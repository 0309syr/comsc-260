; Assignment3-4.asm
;/**
;* Description: 4. Write a sequence of MOV instructions that will exchange the upper and lower words in a doubleword variable named three
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 3/12/2025
;* Creation date: 3/12/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

;4. Write a sequence of MOV instructions that will exchange the upper and lower words in a doubleword variable named three

.data
three DWORD 12345678h

.code
main proc
mov DX, word ptr three ;store lower-16bits from three in DX
mov AX, word ptr three+2 ;store upper-16bits from three in AX
mov word ptr three +2, DX ;store DX in upper-16bits of three
mov word ptr three, ax ;store AX in lower-16bits of three


invoke ExitProcess, 0
main endp
end main
