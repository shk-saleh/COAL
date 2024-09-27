.model small
.stack 100h
.data         

msg DW "Enter number between (0-9) : $"; 
isEven DW "Given number is Even!$";
isOdd DW "Given number is Odd!$";

.code

    main proc   
        
        
     mov ax, @data;    ; import data
     mov ds, ax           
     
     lea dx, msg;      ; use loop for printing msg
      
     mov ah, 09;       ; for displying on screen
     int 21h
                                                    
     mov ah, 01h       ; taking user input
     int 21h                                                     
                                                 
     mov bl, 2;
     div bl  
     
     mov bh, ah   
     
     
     mov dl, 10       ; for newline
     mov ah, 2
     int 21h 
                 
     mov dl, 13       ; moving pointer to start
     mov ah, 2
     int 21h            
     
     cmp bh, 0;
     je forTrue 
     jne isFalse
        
                                  
                                                           
     forTrue:        
                 
     lea dx, isEven;      ; use loop for printing msg
      
     mov ah, 09;       ; for displying on screen
     int 21h            
     
     jmp exit         
                    
     isFalse:  
     
     lea dx, isOdd;      ; use loop for printing msg
      
     mov ah, 09;       ; for displying on screen
     int 21h 
     
     exit: 
     
     mov ah, 4ch
     int 21h
                                   
    main endp
    
end main    
    

    