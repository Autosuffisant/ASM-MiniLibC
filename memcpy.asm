;
; EPITECH PROJECT, 2021
; ASM MiniLibC
; File description:
; memcpy
;

%include "libasm.inc"

BITS 64

global memcpy

section	.text

; RDI : First argument : ptr register
; RSI : Second argument : ptr register
; RDX : Third argument : Size register

return:
    RET

memcpy:
	XOR RCX, RCX
	MOV	RAX, RDI
parse:
	CMP	RCX, RDX
	JE	return
	MOV	BL, BYTE [RSI + RCX]
	MOV	BYTE [RAX + RCX], BL
	INC	RCX
	JMP	parse