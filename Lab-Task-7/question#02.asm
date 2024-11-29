INCLUDE Irvince32.inc
.data         
.code

    main proc   
     
     mov ebx, 0       ; counter for outer loop     
            
     print_outer:
       
        mov ecx, 0   ; counter for inner loop
        mov edx,'1'       ; initialization
        
          print_inner:
          
			call WriteInt
            
            inc edx  
            inc ecx
            cmp ecx, 4;
			
			jne print_inner
            
          ;nextline  
           call Crlf
           
        inc ebx
        cmp ebx, 2   
        jne print_outer 
                                          
    main endp
    
end main    
    

    