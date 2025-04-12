; lab8-1.asm
;/**
;* Description: Write a sequence of statements using indexed addressing that copies an element in a doubleword array, 
;which is pointed to by esi, to the previous position in the same array.
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date:04/08/2025
;* Creation date: 04/08/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

;Write a sequence of statements using indexed addressing that copies an element in a doubleword array, 
;which is pointed to by esi, to the previous position in the same array. 
;Hint: you can use the edi (destination) and esi (source) registers. This can be solved in 3-4 lines of assembly code.

.data 
array DWORD 1, 2, 3, 4

.code
main proc
mov edi, OFFSET array ;move the address of the array of the first element
mov ecx, 4 ;loop counter
L1:
mov esi, [edi+4] ;move the next element to esi
mov [edi], esi ;move the next elemrnt to the address of edi points to
add edi, 4 ;increase the address 4 byte
loop L1



	invoke ExitProcess,0
main endp
end main