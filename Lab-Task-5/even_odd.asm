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
          
          
     call check_num      
               
     ; check condition which statement to print
        
     cmp bh, 0;
     je forTrue  
     jne forFalse
                        
             
             
     forFalse:                       
     
     call print_odd 
     
                                                                                               
     forTrue:        
                 
     call print_even
     
                         
    main endp  
                  
                  
    ; proc for checking number whether its even or odd              
    check_num proc             
        
    
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
     
     ret
    
        
    check_num endp     
    
    
    ; in case of even num we print 
    
    print_even proc
        
     lea dx, isEven;      ; use loop for printing msg
      
     mov ah, 09;       ; for displying on screen
     int 21h            
     mov ah, 4ch
     int 21h     
     
     ret
    
    print_even endp    
    
    
    ; in case of odd num we print 
    
    print_odd proc
        
     lea dx, isOdd;      ; use loop for printing msg
      
     mov ah, 09;       ; for displying on screen
     int 21h 
     mov ah, 4ch
     int 21h  
     
     ret
    
    print_odd endp
    
    
end main    