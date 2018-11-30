global _ft_strchr
extern ft_strlen

section .text
_ft_strchr:
	push rbp
	mov rbp, rsp
	push rdi
	mov rax, 0
    call ft_strlen
    mov rcx, rax


strchr:
	cmp dl, sl
	je find
	inc rdi
	loop strchr

end:
	pop rdi
	mov rsp, rbp
	pop rbp
	ret

find:
    mov rax, rdi
    jmp end