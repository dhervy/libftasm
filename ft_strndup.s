global _ft_strndup
extern _ft_strlen
extern _malloc

section .text

_ft_strndup:
	push rbp
	mov rbp, rsp
    mov rax, 0
    test rdi, rdi
    jz end
    inc rsi
    mov rdx, rsi
    mov r10, rdi
    mov rdi, rdx
    push r10
    push rdi
    call _malloc
    mov rdi, rax
    pop rcx
    pop rsi
    dec rcx
    cld
    rep movsb
    mov byte [rdi+rcx], 0

end:
    mov rsp, rbp
	pop rbp
    ret