; lab5-2.asm
;/**
;* Description: Lab Worksheet Week 5 - Data Transfers, Addressing, Arithmetic  Question2
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
source BYTE "This is source string.", 0 ;size of source is 23 coitains null terminator
target BYTE SIZEOF source DUP("#") ; duplicate # size-of-source times.

.code
main proc

;2. COPY A STRING IN REVERSE ORDER
;Write a program with a loop and indirect addressing that copies a string from source to target,
;reversing the character order in the process. 

mov ESI, 0            ; Initialize source index (start at 0)
mov ECX, SIZEOF source - 1 ; Set ECX to the size of the string -1 because we don't want to copy null terminator 
mov EAX, SIZEOF source - 2 ; Set EAX to the last valid index of the source string (21)

L1:
    mov DL, source[EAX]    ; Get character from source at EAX
    mov target[ESI], DL    ; Store character in target at ESI
    inc ESI                ; Increment target index
    dec EAX                ; Decrement source index
    loop L1                ; Repeat until ECX = 0

mov target[SIZEOF source - 1], 0 ; store null terminater at the end of target string

; Use DOS interrupt 21h to write the string to the screen
mov AH, 09h            ; DOS function to display a string
lea DX, target         ; Load the address of target into DX
int 21h                ; Call DOS interrupt


invoke ExitProcess, 0
main endp
end main