; Assignment3-3.asm
;/**
;* Description: ;3. REVERSE AN ARRAY
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
array DWORD 1,5,6,8,0Ah,1Bh,1Eh,22h,2Ah,32h

.code
main proc

;3. REVERSE AN ARRAY
;Use a loop with indirect or indexed addressing to reverse the elements of an integer array in place.
;Do not copy the elements to any other array. Use the SIZEOF, TYPE, and LENGTHOF operators to make the program as flexible as possible if the array size and type should be changed in the future.
;Display the reversed array.

lea ESI, array  ;set to begging of the array
lea EDI, array  ;set to begging of the array
add EDI, LENGTHOF array * TYPE array - TYPE array  ;set to end of the array

   
mov ECX, LENGTHOF array / 2  ;loop counter
L1:
    ;switch positions
    mov EAX, [ESI]              
    mov EBX, [EDI]             
    mov [ESI], EBX              
    mov [EDI], EAX            

    add ESI, TYPE array   ;increase index position
    sub EDI, TYPE array   ;decrease index position

    loop L1            

; Use DOS interrupt 21h to write the string to the screen
mov AH, 09h            ; DOS function to display a string
lea DX, array         ; Load the address of target into DX
int 21h                ; Call DOS interrupt


	invoke ExitProcess,0
main endp
end main