; lab7-2.asm
;/**
;* Description: if( val1 > ecx ) AND ( ecx > edx )
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date:04/15/2025
;* Creation date: 04/15/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

;Implement the following pseudocode in assembly language. Assume that val1 and X are 32-bit variables.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;if( val1 > ecx ) AND ( ecx > edx )
;   X = 1
;else
;   X = 2;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.data 
X DWORD ?
vall DWORD 5

.code
main proc
mov ecx, 6
mov edx, 2

cmp ecx, vall ;( val1 > ecx )
jl l1
mov X,2
jmp done

l1:
	cmp edx, ecx ;( ecx > edx )
	jl l2
	
l2:
	mov X, 1
	

done:

	invoke ExitProcess,0
main endp
end main