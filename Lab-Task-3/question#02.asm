.model small
.stack 100h
.data         
.code

    main proc   
     
     mov bl, 0       ; counter for outer loop     
     
     mov dl,'1'       ; initialization
           
     print_outer:
       
        mov bh, 0   ; counter for inner loop
        
          print_inner:
          
            mov ah, 2   ; print number
            int 21h
            
            inc dl  
            inc bh
            cmp bh, 4;
            jne print_inner
            mov cl, dl
            
          ;nextline
          
           mov dl, 10       ; for newline
           mov ah, 2
           int 21h 
                     
           mov dl, 13       ; moving pointer to start
           mov ah, 2
           int 21h    
           mov dl, cl
           
        inc bl
        cmp bl, 2   
        jne print_outer 
        
                                   
    main endp
    
end main    
    

    