;
; EPITECH PROJECT, 2021
; ASM MiniLibC
; File description:
; strchr
;

%include "libasm.inc"

BITS 64

global strchr

section .text

return_null:
	MOV	RAX, 0x00
	RET

strchr:
	XOR	RAX, RAX
parse:
	CMP	BYTE [RDI], SIL
	JE	return_char_ptr
	CMP	BYTE [RDI], 0x00
	JE	return_null
	INC	RDI
	JMP	parse
return_char_ptr:
	MOV	RAX, RDI
	RET