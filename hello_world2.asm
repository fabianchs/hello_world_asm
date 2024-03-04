section .data
    linea_uno: db 'Hola mundo! Primera linea', 0xa
    l1_tamano: equ $-linea_uno

    linea_dos: db 'Hola mundo! Segunda linea', 0xa
    l2_tamano: equ $-linea_dos

section .text
    global _start
    global _segunda
    global _tercera

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, linea_uno
    mov rdx, l1_tamano
    syscall

    mov rax,1
    mov rdi,1
    mov rsi, linea_dos
    mov rdx, l2_tamano

_segunda:
    syscall
    mov rax, 60
    mov rdi, 0

_tercera:
    syscall