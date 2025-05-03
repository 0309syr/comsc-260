; lab11.asm
;/**
;* Description: shift multiplication, shift division, rotaton, or and oxr
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 4/29/2025
;* Creation date: 4/46/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword


.data 

.code
main proc

;Write a logical shift instruction that multiplies the contents of EAX by 16.
mov eax, 1 ;eax = 0000 0000 0000 0001
;multiplies the contents of EAX by 16
shl eax, 4 ;eax = 0000 0000 0001 0000


;Write a logical shift instruction that divides EBX by 4.
mov ebx, 16 ;ebx = 0000 0000 0001 0000
;divides EBX by 4.
shr ebx, 2 ;ebx = 0000 0000 0000 0100

;Write a single rotate instruction that exchanges the high and low halves of the DL register.
mov dl, 26h
rol dl, 4 ;rotated four bits 

;What will be the value of EBX after the following instructions execute?
 mov ebx,0AFAF649Bh ;1010 1111 1010 1111 0110 0100 1001 1011
 or  ebx,3A219604h  ;0011 1010 0010 0001 1001 0110 0000 0100
                    ;1011 1111 1010 1111 1111 0110 1001 1111


;What will be the value of RBX after the following instructions execute?
mov rbx, 0AFAF649Bh ;1010 1111 1010 1111 0110 0100 1001 1011
xor rbx, 0FFFFFFFFh ;1111 1111 1111 1111 1111 1111 1111 1111
                    ;0101 0000 0101 0000 1001 1011 0110 0100

	invoke ExitProcess,0
main endp
end main