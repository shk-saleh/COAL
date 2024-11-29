.model small
.stack 100h
.data 
.code


    main proc
    
    
    mov ax, 1
    mov bx, 2
    mov cx, 3
    
    push ax
    push bx
    push cx
    
    mov bp, sp
       
    pop ax
    
    add dx, ax
    
    pop bx
    
    add dx, bx
    
    pop cx
    
    add dx, cx 
    
    add dx, 48
    
    mov ah, 2
    int 21h
            
    main endp  
    

end main