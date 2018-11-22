global _ft_isdigit

section .text

_ft_isdigit:
	cmp rdi, 48
		jl end_false
	cmp rdi, 57
		jle end_true

end_false:
	mov rax, 0
	ret

end_true:
	mov rax, 1
	ret