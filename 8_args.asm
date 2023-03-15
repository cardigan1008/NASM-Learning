%include 'functions.asm'

SECTION .text
global _start

_start:
    pop ecx

next_arg:
    cmp ecx, 0
    jz noArg
    pop eax
    call sprintLF
    dec ecx
    jmp next_arg

noArg:
    call quit