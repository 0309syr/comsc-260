; Lab4.asm

; * Description: Lab Worksheet Week 4 - Assembly Fundamentals
; * Author names: Sayuri Yamamoto
; * Author emails: 
; * Last modified date: 03/04/2025
; * Creation date: 03/04/2025

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

;2. SYMBOLIC TEXT CONSTANTS
;Define a symbolic name for one string literal (characters between quotes). 

text EQU <"type text here",0>
 

.data 

;1. DATA DEFINITIONS
;Write a program that contains a definition of each data type listed in Table 3-2 in Section 3.4 of the K.Irvine textbook (shown below). 
;Initialize each variable to a value that is consistent with its data type.

val1 BYTE 255
val2 SBYTE -127
val3 WORD 65535
val4 SWORD -32768
val5 DWORD 4294967295
val6 SDWORD -2147483648
val7 FWORD 281474976710655
val8 QWORD 18446744073709551615
val9 TBYTE 604462909807314587353087
val10 REAL4 1.111111
val11 REAL8 1.1111111
val12 REAL10 1.1111111111111111


;2. SYMBOLIC TEXT CONSTANTS
;Use the symbolic name in a variable definition.
text1 BYTE text


.code
main proc


	invoke ExitProcess,0
main endp
end main