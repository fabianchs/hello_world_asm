section .data
	cons_hola: db 'Hola Mundo!', 0xa
	cons_tamano: equ $-cons_hola
section .text
	global_start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, cons_hola
	mov rdx, cons_tamano
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
