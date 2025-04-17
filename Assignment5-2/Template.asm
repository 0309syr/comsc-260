; Assignment5-2.asm
;/**
;* Description: Implement the following pseudocode in assembly language. Assume that X is a 32-bit variable.
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 4/16/2025
;* Creation date: 4/16/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

;2. Implement the following pseudocode in assembly language. Assume that X is a 32-bit variable.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;if( ebx > ecx ) OR ( ebx > val1 )
;   X = 1
;else
;   X = 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.data 
X DWORD ?
val1 DWORD 5

.code
main proc
mov ebx, 3
mov ecx, 6
cmp ebx, ecx ;ebx - ecx
jg X1

cmp ebx, val1 ;ebx - ecx
jg X1

mov X, 2

jmp done

X1:
mov X, 1

done:

	invoke ExitProcess,0
main endp
end main