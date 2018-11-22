global _ft_isprint

section .text

_ft_isprint:
	cmp rdi, 32
		jl end_false
	cmp rdi, 126
		jle end_true

end_false:
	mov rax, 0
	ret

end_true:
	mov rax, 1
	ret