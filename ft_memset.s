global _ft_memset

section .text

_ft_memset:
	mov r8, rdi
	mov rcx, rdx
	mov al, sil
	cld
	rep stosb
	mov rdi, r8
	mov rax, rdi
	
end:
	ret