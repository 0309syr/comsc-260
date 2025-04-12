; Assignment3-1.asm
;/**
;* Description: 1. CONVERTING FROM BIG ENDIAN TO LITTLE ENDIAN
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 03/11/2025
;* Creation date: 03/11/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 

bigEndian BYTE 12h,34h,56h,78h
littleEndian DWORD ?

.code
main proc

;1. CONVERTING FROM BIG ENDIAN TO LITTLE ENDIAN
;Write a program that uses the variables below and MOV instructions to copy the value from bigEndian to littleEndian, 
;reversing the order of the bytes. The numberÅfs 32-bit value is understood to be 12345678 hexadecimal.

;store bigEndian separatory in resisters
mov AL, bigEndian[0]  
mov BL, bigEndian[1]  
mov CL, bigEndian[2] 
mov DL, bigEndian[3]  

;store in littleEndian
mov BYTE PTR littleEndian, DL    
mov BYTE PTR littleEndian+1, CL   
mov BYTE PTR littleEndian+2, BL   
mov BYTE PTR littleEndian+3, AL   



	invoke ExitProcess,0
main endp
end main