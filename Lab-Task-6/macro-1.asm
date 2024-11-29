.model small
.stack 100h
.data

    var1 db 3
    var2 db 2 
    var3 db 2

.code
           
           
    addition macro var1, var2, var3   ; decalaring macro with arguments var1 or var2
        
                
        mov ah, var1
        mov al, var2
        
        add al, ah  
         
        mov ah, var3
        
        add al, ah
        
        mov dl, al 
        
        add dl, 48
        
        mov ah, 2
        int 21h 
                
    
    endm         ; macro ended
                
                
    main proc
        
        
        mov ax, @data       ; importing data
        mov ds, ax    
              
        addition var1, var2, var3     ; passing variables to macro in call 
           
    main endp


end main                                                                
