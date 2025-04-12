; Assignment3-5.asm
;/**
;* Description: 5. Using the XCHG instruction no more than three times, reorder the values in four 8-bit registers from the order A,B,C,D to B,C,D,A
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 03/12/2025
;* Creation date: 03/12/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 

.code
main proc

;5. Using the XCHG instruction no more than three times, reorder the values in four 8-bit registers from the order A,B,C,D to B,C,D,A
mov AL, 1 
mov BL, 2
mov CL, 3
mov DL, 4

XCHG AL, DL
XCHG CL, DL
XCHG BL, CL


invoke ExitProcess,0
main endp
end main