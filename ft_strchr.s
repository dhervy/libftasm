global _ft_strchr
extern _ft_strlen

section .text
_ft_strchr:
	push rbp
	mov rbp, rsp
	push rdi
	push rdx
	mov rdx, rsi
    call _ft_strlen
    mov rcx, rax
	inc rcx
	mov rax, 0

strchr:
	cmp byte [rdi], dl
	je find
	inc rdi
	dec rcx
	cmp rcx, 0
	je end
	jmp strchr

end:
	pop rdx
	pop rdi
	mov rsp, rbp
	pop rbp
	ret

find:
    mov rax, rdi
    jmp end