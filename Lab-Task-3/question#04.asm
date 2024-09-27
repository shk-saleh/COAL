.model small
.stack 100h
.data         
.code

    main proc   
     
     mov bl, 1       ; counter for outer loop     
     
     mov dl,'*'       ; initialization
           
     print_outer:
       
        mov bh, 1   ; counter for inner loop    
        
          print_inner:
          
            mov ah, 2   ; print star
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
    

    