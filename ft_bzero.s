global _ft_bzero

section .text

_ft_bzero:
	cmp rdi, 0
	jz end
	mov rax, rdi
	mov rcx, rsi

	jmp my_loop
	jmp end

my_loop:
	mov [rax], byte 0
	inc rax
	loop my_loop

end:
	ret