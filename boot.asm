[org 0x7c00]

    mov ah, 0x0e      

print_loop:
    lodsb             
    cmp al, 0
    je hang           
    int 0x10          
    jmp print_loop

hang:
    cli               
    hlt               

msg: db 'CHAO MUNG DEN VOI HE THONG TOI CAO!', 0

    times 510-($-$$) db 0   
    dw 0xaa55
