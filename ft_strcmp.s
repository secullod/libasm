global ft_strcmp

section .text

ft_strcmp:
    push rcx
    mov rcx, -1

cmp_loop:
    inc rcx
    mov al, byte [rdi + rcx] 
    mov bl, byte [rsi + rcx] 
    cmp rax, 0
    je end
    cmp rbx, 0
    je end
    cmp rax, rbx
    je cmp_loop

end:
    pop rcx
    movzx rax, al
    movzx rbx, bl
    sub rax, rbx
    ret
