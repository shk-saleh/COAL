.model small
.stack 100h
.data         
.code

    main proc   
        
    
    mov bl, 1                                                                                      
    mov cx,1    
          
    mov ax,'4'      ;store initially 1     
          
    loop: 
    
    push ax          ;push values to stack       
    
    dec ax            ;decrement in ax      
    
    inc cx             ;increment in cx to control loop   
    
    cmp cx,5                                      
    
    jne loop     ;if value of cx equal to zero then jump to exit
       
           
     print_outer:              
                   
        pop cx
        
        mov dx, cx
       
        mov bh, 1   ; counter for inner loop    
        
          print_inner:
          
            mov ah, 2   ; print number
            int 21h
                    
            inc bh
            cmp bh, bl;    
            jbe print_inner     ; if bh <= bl
            mov cl, dl
            
          
           mov dl, 10       ; for newline
           mov ah, 2
           int 21h 
                     
           mov dl, 13       ; moving pointer to start
           mov ah, 2
           int 21h    
           mov dl, cl 
           
                   
        inc bl
        cmp bl, 5         
        jne print_outer   ; if bl != 5 then jump
        
                                   
    main endp
    
end main    
    

    