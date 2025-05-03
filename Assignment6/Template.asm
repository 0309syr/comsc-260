; Assignment6.asm
;/**
;* Description: shifting, multiplication and division
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 4/28/2025
;* Creation date: 4/27/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
byteArray BYTE 81h, 20h, 33h

wordArray WORD 810Dh, 0C064h, 93ABh

val1 DWORD ?
val2 DWORD 2
val3 DWORD 3
val4 DWORD 4

.code
main proc
;Write a sequence of instructions that shift three memory bytes to the right by 1 bit position. Use the following test data:
;byteArray BYTE 81h,20h,33h
shr byteArray, 1     ;40
shr byteArray[1], 1  ;10
shr byteArray[2], 1  ;19

;Write a sequence of instructions that shift three memory words to the left by 1 bit position. Use the following test data:
;wordArray WORD 810Dh, 0C064h,93ABh
shl wordArray, 1 ;021A
shl wordArray[TYPE WORD*1], 1 ;80C8
shl wordArray[TYPE WORD*2], 1 ;2756

;Implement the following C++ expression in assembly language, using 32-bit unsigned operands:
;val1 = (val2 * val3) / (val4 ? 3)
mov eax, val2
mul val3           ;eax = (val2 * val3)
mov ebx, val4
sub ebx, 3         ;ebx = val4 - 3
div ebx            ;eax = eax/ebx
mov val1, eax      ;val1 = 6

;Implement the following C++ expression in assembly language, using 32-bit signed operands:
;val1 = (val2 / val3) * (val1 + val2)
mov eax, val2
div val3 ;eax = (val2/val3)
mov ebx, val1 
add ebx, val2 ;(val1 + val2)
mul ebx
mov val1, eax

	invoke ExitProcess,0
main endp
end main