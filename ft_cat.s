%define MACH_SYSCALL(nb) 0x2000000 | nb
%define STDOUT 1
%define READ 3
%define WRITE 4
%define BUFF_SIZE 1024

global _ft_cat

section .bss
read:
	.buf resb BUFF_SIZE

section .text
_ft_cat:
	push rbp
	mov rbp, rsp
	lea rsi, [rel read.buf]
	mov rdx, BUFF_SIZE

my_loop:
	push rdi
	push rdx
	push rsi
	mov rax, MACH_SYSCALL(READ)
	syscall
	jc end_error
	mov rdi, STDOUT
	mov rdx, rax
	pop rsi
	push rsi
	push rax
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc end_error
	pop rax
	pop rsi
	pop rdx
	pop rdi
	cmp rax, 0
    jg my_loop

end:
	mov rsp, rbp
	pop rbp
	ret

end_error:
	mov rax, -1
	mov rsp, rbp
	pop rbp
	ret