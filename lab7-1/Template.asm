; lab7-1.asm
;/**
;* Description:  Write a sequence of statements that use only PUSH and POP instructions to exchange the values in the EAX and EBX registers
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 03/31
;* Creation date: 03/31
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 

.code
main proc
;1. Write a sequence of statements that use only PUSH and POP instructions to exchange the values in the EAX and EBX registers
mov EAX, 1
mov EBX, 2
push EAX
push EBX
pop EAX
pop EBX

	invoke ExitProcess,0
main endp
end main