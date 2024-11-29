.model small;
.stack 100h
.data    

    arr DW 0,1,2,3,4,5,6,7,8,9;
 
.code

     
    ; procedure for addition of array 
     
    find_avg macro arr
        
        
      mov cx, 10;       ; no of iterations
 
      mov dx, [si];     ; move value of idx to dx
       
      sum: 
          
      add bx, dx;        ; add the values in array
        
      inc dx;
        
      loop sum;  
        
      mov ax, bx; 
      
      mov bl, 10;        ; store the divisor in bl
    
      div bl;            ; divide
                       
      mov dl, al;        ; final result move to dl          
            
                                  
    endm    
                    
                       
    ; main function
    main proc 
            
            
    mov ax, @data;    ; importing data
    mov ds, ax;
                  
    
    find_avg arr     ; calling macro
    
    
    mov dl, 34h       
    mov ah, 2;
    int 21h     
    
       
    main endp      
    
    

end main