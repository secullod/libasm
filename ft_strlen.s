global ft_strlen

section .text

ft_strlen:
    mov rax, -1
    
len_loop:
    inc rax
    cmp byte [rdi + rax], 0
    jne len_loop
    ret