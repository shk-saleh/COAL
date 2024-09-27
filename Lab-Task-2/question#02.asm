.model small;
.stack 100h
.data    

    arr DW 0,1,2,3,4,5,6,7,8,9;
 
.code


    main proc 
            
            
    mov ax, @data;    ; importing data
    mov ds, ax;
                  
    mov cx, 10;       ; no of iterations
 
    mov dx, [si];     ; move value of idx to dx
    
    
    sum_array:
    
    
    add bx, dx;        ; add the values in array
    
    inc dx;
    
    loop sum_array;  
    
    mov ax, bx; 
    
    mov bl, 10;        ; store the divisor in bl
    
    div bl;            ; divide
                       
    mov dl, al;        ; final result move to dl
    
    mov dl, 34h   
    
    mov ah, 2;
    int 21h  
       
    main endp   


end main