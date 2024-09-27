.model small;
.stack 100h
.data  
.code


    main proc 
            
            
    mov cx, 26; ;print 26 characters
                                    
    mov dl, 'z';  ; move first char in dl
    
    
    print_alphabets:   ; label
             
    mov ah, 2;
    int 21h 
    
    dec dl;    ; crement by adress
    
    loop print_alphabets;    ; looping        
       
    main endp   


end main
                      
                      