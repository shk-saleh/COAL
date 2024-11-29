.model small
.stack 100h
.data 

    string DB "Saleh$"

.code


    main proc
    
    
        mov ax, @data
        mov ds, ax 
        
                   
        ; Before reversing 
                   
        mov dx, offset string   
        mov ah, 09h
        int 21h
                  
        
        mov dl, 10       ; for newline
        mov ah, 2
        int 21h 
                     
        mov dl, 13       ; moving pointer to start
        mov ah, 2
        int 21h 
        
        
        ; reversing string
        
        mov si, offset string
        
        mov cx, 0
        
        
        push_in_stack:
        
        mov ax, [si]     ; get first element 
        cmp al, '$'      ; if control reached to $
        je pop_from_stack  ; will jump when all elements get pushed
        
        push [si]           ; push element
        
        inc si              
        inc cx
                            
        jmp push_in_stack;     ; continue to jump until all elements get pushed
        
        
        
        pop_from_stack:       ; pop all elements 
        
                            
        mov si, offset string       ; point to last stored element's adress in stack (in our case there will be 'n')
        
        
        pop_loop:
        
        
        cmp cx, 0
        je exit        ; if cx=0 then it mean all elements get poped and exit it
        
        pop dx  
        
        mov [si], dx
        
        
        inc si
        dec cx  
        
        jmp pop_loop:
                          
                          
        exit:     
        
        mov [si], '$'           ; at last we add terminator to string
        mov dx, offset string    ; print and exit the function
        mov ah, 09h
        int 21h
                           
            
    main endp  
    

end main