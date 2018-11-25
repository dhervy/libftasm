global _ft_bzero
extern _ft_pushreg
extern _ft_popreg

section .text

_ft_bzero:
	cmp rdi, 0
	jz end
	mov rax, rdi
	mov rcx, rsi

	jmp my_loop
	jmp end

my_loop:
	mov [rdi], byte 0
	inc rdi
	loop my_loop

end:
	ret