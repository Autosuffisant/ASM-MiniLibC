;
; EPITECH PROJECT, 2021
; ASM MiniLibC
; File description:
; Strncmp
;

%include "libasm.inc"

BITS 64

global strncmp

section .text

return:
    SUB RAX, RBX
    RET

strncmp:
	XOR RAX, RAX
    XOR RBX, RBX
    CMP BYTE [RDI], 0x00
    JNE parse_second_str
parse_second_str:
    INC RAX
	INC	RDI
	CMP	BYTE [RDI], 0x00
	JE	is_first_str
    CMP RAX, RDX
    JE  is_first_str
	JMP	parse_second_str
is_first_str:
    CMP BYTE [RSI], 0x00
    JNE parse_first_str
    JMP return
parse_first_str:
    INC RBX
    INC RSI
    CMP BYTE [RSI], 0x00
    JE  return
    CMP RBX, RDX
    JE  return
    JMP parse_first_str