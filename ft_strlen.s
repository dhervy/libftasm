global _ft_strlen

section .text
_ft_strlen:
	push rbp
	mov rbp, rsp
	push rdi
	mov rax, 0
	mov rcx, -1
	test rdi, rdi
	jz end

count_len:
	mov al, 0
	cld
	repne scasb
	not rcx
	dec rcx

end:
	mov rax, rcx
	pop rdi
	mov rsp, rbp
	pop rbp
	ret