global _ft_strrchr
extern _ft_strlen

section .text
_ft_strrchr:
	push rbp
	mov rbp, rsp
	push rdi
	push rdx
	mov rax, 0
    call _ft_strlen
    mov rcx, rax
	mov rax, 0
	add rdi, rcx

strrchr:
	cmp byte [rdi], sil
	je find
	dec rdi
	cmp rcx, 0
	je end
	dec rcx
	jmp strrchr

end:
	pop rdx
	pop rdi
	mov rsp, rbp
	pop rbp
	ret

find:
    mov rax, rdi
    jmp end