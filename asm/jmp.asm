section .text
    global _start

_start:
    mov ecx, [num1]
    cmp ecx, [num2]
    jg check_third
    mov ecx, [num2]

    check_third:
        cmp ecx, [num3]
        mov [largest], ecx
        mov ecx, msg
        mov edx, len
        mov ebx, 1
        mov eax, 4
        int 0x80

        mov ecx, largest
        mov edx, 2
        mov ebx, 1
        mov eax, 4
        int 0x80

        mov eax, 1
        int0x80

    section .data
        msg db "The largest digit is: ", 0xA, 0xD
        len equ $-msg
        num1 dd 5
        num2 dd 6
        num3 dd 3

segment .bss
    largest resb 2