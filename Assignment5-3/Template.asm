; Assignment5-3.asm
;/**
;* Description: 3. Implement the following pseudocode in assembly language. Assume that X is a 32-bit variable.
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 04/16/2025
;* Creation date: 4/16/2025
;**/

;3. Implement the following pseudocode in assembly language. Assume that X is a 32-bit variable.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;if( ebx > ecx AND ebx > edx) OR ( edx > eax )
;   X = 1
;else
;   X = 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
X DWORD ?

.code
main proc
mov ebx, 2
mov ecx, 3
mov edx, 1
mov eax, 0

cmp ebx, ecx ;ebx-ecx
jl l3
cmp ebx, edx ; ebx-edx
jl l3
mov X, 1
jmp done

l3:
cmp edx, eax
jg l4
mov X, 1
jmp done

l4:
mov X, 2

done:
	invoke ExitProcess,0
main endp
end main