; * Description: This module implements matrix operations on matrices and vectors.... It returns a vector...
; * Author names: Sayuri Yamamoto
; * Author emails: 
; * Last modified date: 02/25/2025
; * Creation date: 02/25/2025
; **/
; Assignment2.asm


; AddTwo.asm - adds two 32-bit integers 
; Chapter 3 example 
 
.386 
.model flat,stdcall 
.stack 4096 
ExitProcess PROTO,  dwExitCode:DWORD 

.data

; 2. SYMBOLIC INTEGER CONSTANTS
; Write a program that defines symbolic constants for all seven days of the week. 
; Create an array variable of 7 positions and use these symbols as initializers.

; For example:
; Sunday = 0
; Monday = 1
; Tuesday = 2
; Wednesday = 3
; Thursday = 4
; Friday = 5
; Saturday = 6


Sunday EQU 0
Monday EQU 1
Tuesday EQU 2
Wednesday EQU 3
Thursday EQU 4
Friday EQU 5
Saturday EQU 6

array DWORD Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
 
.code 
main PROC 

; 1. INTEGER EXPRESSION CALCULATION
; write a program that calculates the following expression, using registers:
; Assign integer values to the EAX, EBX, ECX, and EDX registers. 
mov EAX, 5
mov EBX, 3
mov ECX, 6
mov EDX, 2

;EAX = (EAX + EBX) - (ECX + EDX). 
add EAX, EBX
add ECX, EDX
sub EAX, ECX

; Then show the values of the registers.
; call DumpRegs ;this doesn't work
 
  
INVOKE ExitProcess,0 
main ENDP 
END main