; Lab6-1.asm
;/**
;* Description: This module implements matrix operations on matrices and vectors.... It returns a vector...
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 3/18/2025
;* Creation date: 3/18/2025
;**/

;1. SUMMING THE GAPS BETWEEN ARRAY VALUES
;Write a program with a loop and indexed addressing that calculates the sum of all the gaps between successive array elements. 
;The array elements are doublewords, sequenced in nondecreasing order. 

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
array WORD 0,2,5,9,10
sum WORD 0

.code
main proc

mov ECX, 4 ;loop counter it's 4 because I don't need to loop last element to sum
mov EAX, 0 ;index
L1:
	mov BX, array[EAX * TYPE array] ;move an element from the array to BX
	mov DX, array[EAX* TYPE array +1 * TYPE array] ;move next element of BX to DX
	sub DX, BX ;substruct DX from BX
	add sum, DX ;add the gap(DX) to sum
	inc EAX ;increase index
loop L1

	invoke ExitProcess,0
main endp
end main