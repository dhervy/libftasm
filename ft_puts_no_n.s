%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

global _ft_puts

section .text
_ft_puts:
	push rdi
	push rsi
	push rdx
	mov rbx, rdi
	mov rdx, 0

count_len:
	cmp byte [rdi], 0
		je print
	inc rdi
	inc rdx
	jmp count_len

print:
	mov rdi, STDOUT
	mov rsi, rbx
	mov rax, MACH_SYSCALL(WRITE)
	syscall

	pop rdx
	pop rsi
	pop rdi
	ret