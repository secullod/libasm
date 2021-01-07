global ft_strcpy

section .text

ft_strcpy:
    push rcx
    mov rax, rdi
    mov rcx, -1

cpy_loop:
    inc rcx
    mov dl, byte [rsi + rcx]
    mov byte [rax + rcx], dl
    cmp byte [rax + rcx], 0
    jne cpy_loop
    pop rcx
    ret
