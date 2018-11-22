global _ft_isascii

section .text

_ft_isascii:
	cmp rdi, 0
		jl end_false
	cmp rdi, 127
		jg end_false
	jmp end_true

end_false:
	mov rax, 0
	ret

end_true:
	mov rax, 1
	ret