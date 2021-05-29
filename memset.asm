;
; EPITECH PROJECT, 2021
; ASM MiniLibC
; File description:
; memset
;

%include "libasm.inc"

BITS 64

global memset

section	.text

; RDI : First argument : string register
; SIL : Second argument : 8 bit char char register
; RDX : Third argument : Size register

return:
    RET

memset:
	XOR RCX, RCX
	MOV	RAX, RDI
parse:
	CMP	RCX, RDX
	JE	return
	MOV	BYTE [RDI + RCX], SIL
	INC	RCX
	JMP	parse