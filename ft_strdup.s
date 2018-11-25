global _ft_strdup
extern _ft_strlen
extern _malloc

section .text

_ft_strdup:
	push rbp
	mov rbp, rsp
    mov rax, rdi
    test rdi, rdi
    jz end
    push rdi
    call _ft_strlen
    pop rdi
    inc rax
    mov r10, rdi
    mov rdi, rax
    push r10
    push rdi
    call _malloc
    mov rdi, rax
    pop rcx
    pop rsi
    cld
    rep movsb

end:
    mov rsp, rbp
	pop rbp
    ret