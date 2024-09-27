.model small;
.stack 100h
.data     

 a DB 5;
 b DB 8;  
  
 
.code


    main proc 
    
    
        mov ax, @data;
        mov ds, ax;    
        
        mov al, a; 
        mov ah, b; 
 
        
        XCHG al, ah; ; swap the values 
        
        mov a, al;
        mov b, ah; 
         
        mov ah,4ch;
        int 21h
    
       
    main endp   


end main
                      
                      