global _ft_tolower

section .text

_ft_tolower:
	mov rax, rdi
	cmp rdi, 90
		jg end
	cmp rdi, 65
		jl end
	jmp upper

upper:
	add rax, 32
	jmp end
	
end:
	ret