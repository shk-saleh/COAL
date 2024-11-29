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
             
    
    loop:

    add dx, [bp]
    
    add bp, 2  
    
    cmp dx, 6   
    
    jne loop 
    
    push dx
    
    mov bp, sp
    
    pop ax
    
    mov dx, ax 
    add dx, 48
    mov ah, 02
    int 21h
            
    main endp  
    

end main