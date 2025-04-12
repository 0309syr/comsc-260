; Lab6-2.asm
;/**
;* Description: 2. COPYING A WORD ARRAY TO A DOUBLEWORD ARRAY
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 3/18/2025
;* Creation date: 3/18/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

;2. COPYING A WORD ARRAY TO A DOUBLEWORD ARRAY
;Write a program that uses a loop to copy all the elements from an unsigned Word (16-bit) array 
;into an unsigned doubleword (32-bit) array.

.data 
WordArray WORD 1,2,3,4
DwordArray DWORD 4 DUP(?) ;dataname datatype number for duplicate DUP(element)

.code
main proc
MOV ECX, 4 ;loop counter
MOV EBX, 0 ;index 

L1:
	MOVZX EAX,WORD ptr [WordArray + EBX * TYPE WordArray] ;MOVZXoperator reg, datatype ptr [dataname + index * TYPEfunction dataname]
	MOV [DwordArray + EBX * type DwordArray], EAX
	inc EBX
Loop L1
	


	invoke ExitProcess,0
main endp
end main