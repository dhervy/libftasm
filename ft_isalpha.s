global _ft_isalpha

section .text

_ft_isalpha:
	cmp rdi, 65
		jl end_false
	cmp rdi, 90
		jle end_true
	cmp rdi, 122
		jg end_false
	cmp rdi, 97
		jge end_true

end_false:
	mov rax, 0
	ret

end_true:
	mov rax, 1
	ret