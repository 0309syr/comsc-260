; Assignment4-2.asm
;/**
;* Description: 2. SIMPLE ADDITION
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date: 4/1/2025
;* Creation date: 4/1/2025
;**/

;2. SIMPLE ADDITION:
;Write a program that clears the screen, locates the cursor near the middle of the screen, 
;prompts the user for two integers, adds the integers, and displays their sum.
;Hint: you can call the procedures ClrScr, Gotoxy, WriteString, ReadInt, WriteInt, Crlf.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

.data 
prompt BYTE "Input two integer please...",0
inputsum DWORD ?

.code
main proc
call ClrScr ;clear screen
mov DH, 10 ;y
mov DL, 45 ;x
call Gotoxy
mov EDX, OFFSET prompt
call WriteString
call Crlf ;newline
call ReadInt
mov inputsum, EAX ;move first user input integer to EAX
call ReadInt
add inputsum, EAX ;add second user input integer to inputsum
mov EAX, inputsum ;move inputsum to EAX to display
call WriteInt


	invoke ExitProcess,0
main endp
end main