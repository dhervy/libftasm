global _ft_toupper

section .text

_ft_toupper:
	mov rax, rdi
	cmp rdi, 122
		jg end
	cmp rdi, 97
		jl end
	jmp upper

upper:
	sub rax, 32
	jmp end

end:
	ret