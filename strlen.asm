;
; EPITECH PROJECT, 2021
; ASM MiniLibC
; File description:
; Strlen
;

%include "libasm.inc"

BITS 64

global strlen

section .text

return:
    RET

strlen:
	XOR	RAX, RAX
	CMP	BYTE [RDI], 0
	JE	return
	JMP	parse
parse:
	INC	RAX
	INC	RDI
	CMP	BYTE [RDI], 0
	JNE	parse
	JMP	return