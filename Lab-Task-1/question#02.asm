.model small;
.stack 100h
.data     

 a DB 2;
 b DB 3;
 
.code


    main proc 
    
    
        mov ax, @data;
        mov ds, ax;    
        
        mov al, a; 
        mov ah, b; 
 
        mul ah;
     
        mov dl, al;
        add dl, 48
         
        mov ah,02;
        int 21h
    
       
    main endp   


end main
                      
                      