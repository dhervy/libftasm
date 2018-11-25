global _ft_strlen

section .text
_ft_strlen:
	push rbp
	mov rbp, rsp
	mov r8, rdi
	mov rax, 0

count_len:
	cmp byte [rdi], 0
		je end
	inc rdi
	inc rax
	jmp count_len

end:
	mov rdi, r8
	mov rsp, rbp
	pop rbp
	ret