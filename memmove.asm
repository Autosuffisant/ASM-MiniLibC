;
; EPITECH PROJECT, 2021
; ASM MiniLibC
; File description:
; memmove
;

%include "libasm.inc"

BITS 64

global memmove

section	.text

; RDI : First argument : ptr register
; RSI : Second argument : ptr register
; RDX : Third argument : Size register
; RBP : Buffer register used for copy

return:
    RET

memmove:
	XOR RCX, RCX
	MOV RBP, RDI
parsecpy:
	CMP	RCX, RDX
	JE	move
	MOV	BL, BYTE [RSI + RCX]
	MOV	BYTE [RBP + RCX], BL
	INC	RCX
	JMP	parsecpy
move:
    XOR RCX, RCX
    JMP moveparse
moveparse:
	CMP	RCX, RDX
	JE	return
	MOV	BL, BYTE [RBP + RCX]
	MOV	BYTE [RAX + RCX], BL
	INC	RCX
	JMP	moveparse
