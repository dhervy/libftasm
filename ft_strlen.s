global _ft_strlen

section .text
_ft_strlen:
	mov rax, 0
	mov rdx, 0
	jmp count_len

count_len:
	cmp byte [rdi], 0
		je end
	inc rdi
	inc rax
	jmp count_len

end:
	ret