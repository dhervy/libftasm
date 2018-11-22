global _ft_strcat

section .text

_ft_strcat:
	mov rax, rdi

loop_dest:
	cmp byte[rdi], 0
	je loop_src
	inc rdi
	jmp loop_dest
	
loop_src:
	cmp byte[rsi], 0
	je end
	mov r8, [rsi]
	mov byte [rdi], r8b
	inc rsi
	inc rdi
	jmp loop_src

end:
	mov byte[rdi], 0
	ret