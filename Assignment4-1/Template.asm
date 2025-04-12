; Assignment4-1.asm
;/**
;* Description: Write a program that displays the same string in four different colors, using a loop.
;* Author names: Sayuri Yamamoto
;* Author emails: 
;* Last modified date:4/1/2025
;* Creation date: 4/1/2025
;**/

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

;1. DRAW TEXT COLORS
;Write a program that displays the same string in four different colors, using a loop.
;You can call the SetTextColor procedure from the Irvine bookÅfs link library. 
;Any colors may be chosen; you may find it easiest to change the foreground color.
;You can also call the procedures WriteString and Crlf.

.data 
string BYTE "Write a program that displays the same string in four different colors", 0

.code
main proc
mov EDX, OFFSET string ;move offset of string to EDX

mov ECX, 4 ;loop counter
mov EAX, yellow + (red * 16) ;yellow for foreground and red for background

L1:
	call SetTextColor ;call function to see color in EAX on console
	call WriteString ;call functon to see string in EDX on console
	call Crlf ;call function to get newline
	add EAX, 11 ;change color to modify EAX
loop L1





	invoke ExitProcess,0
main endp
end main