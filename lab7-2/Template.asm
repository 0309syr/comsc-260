; lab7-2.asm
;/**
;* Description: Write a small subroutine with a sequence of instructions that would be inserted just before the subroutineÅfs RET instruction that achieves this task.
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date:4/3
;* Creation date: 3/31
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

;Suppose you wanted a subroutine to return to an address that was 4 bytes higher (larger address) in memory than the return address currently on the stack. 
;Assume the top stack frame holds the address immediately after the call to the procedure in main. 
;Write a small subroutine with a sequence of instructions that would be inserted just before the subroutineÅfs RET instruction that achieves this task.

.data 

.code
main proc
call function1


	invoke ExitProcess,0
main endp
;end main


function1 PROC
call function2

ret
function1 ENDP


function2 PROC
pop EAX
add EAX, 4
push EAX
ret
function2 ENDP

end main


