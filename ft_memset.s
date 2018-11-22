global _ft_memset

section .text

_ft_memset:
	push rdi

my_loop:
	cmp rdx, 0
	jle end
	mov byte [rdi], sil
	inc rdi
	dec rdx
	loop my_loop

end:
	pop rax
	ret