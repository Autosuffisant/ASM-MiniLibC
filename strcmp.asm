;
; EPITECH PROJECT, 2021
; ASM MiniLibC
; File description:
; Strcmp
;

%include "libasm.inc"

BITS 64

global strcmp

section .text

return:
    SUB RAX, RBX
    RET

strcmp:
	XOR RAX, RAX
    XOR RBX, RBX
    CMP BYTE [RDI], 0x00
    JNE parse_second_str
parse_second_str:
    INC RAX
	INC	RDI
	CMP	BYTE [RDI], 0x00
	JE	is_first_str
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
    JMP parse_first_str