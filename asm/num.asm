section.data
    userMsg db 'Please enter a number: '
    lenUserMsg equ $-userMsg
    dispMsg db 'You entered:'
    lenDispMsg equ $-dispMsg

section .bss
    numb resb 5

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, userMsg
    mov edx, lenUserMsg
    int 0x80

    mov eax, 3
    mov ebx, 2
    mov ecx, num
    mov edx, 5
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, dispMsg
    mov edx, lenDispMsg
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, numnov edx, 5
    int 0x80

    mox eax, 1
    mov ebx, 0
    int 0x80