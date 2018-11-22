global _ft_memcpy

section .text

_ft_memcpy:
	push rdi

loop_dest:
	cmp byte[rdi], 0
	je loop_src
	inc rdi
	jmp loop_dest

loop_src:
	cmp rdx, 0
	jle end
	mov r8, [rsi]
	mov byte [rdi], r8b
	inc rdi
	inc rsi
	dec rdx
	loop loop_src

end:
	pop rax
	ret