global _ft_memcpy

section .text
_ft_memcpy:
	mov rax, rdi
	test rdi, rdi
	jz end
	test rsi, rsi
	jz end
	mov rcx, rdx
	cld
	rep movsb

end:
	ret