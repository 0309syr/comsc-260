; Template.asm
;/**
;* Description: write a sequence of instructions that generate a bit string in EAX that represents members in SetX that are not members of SetY.
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 04/15/2025
;* Creation date: 04/14/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

;Given two bit-mapped sets named SetX and SetY, 
;write a sequence of instructions that generate a bit string in EAX that represents members in SetX that are not members of SetY.

.data 
SetX DWORD  10000000000011110000000000000111b
SetY DWORD  10000010101000000000111011000011b
;xoreax     00000010101011110000111011000100b
;andeax     00000000000011110000000000000100b


.code
main proc
mov eax, SetX ;move SetX to eax
xor eax, SetY ;only x or y is 1 remainds 1 in eax
and eax, SetX ;only x is 1 remains 1 in eax

	invoke ExitProcess,0
main endp
end main