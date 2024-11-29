.model small
.stack 100h
.data

    string1 db "Muhammad$"
    string2 db "Saleh$"

.code
           
           
    display macro string1, string2
        
        
        lea dx, string1
        mov ah, 9
        int 21h
        
        mov dx, 13
        mov ah, 2
        int 21h 
        
        mov dx, 10
        mov ah, 2
        int 21h  
        
        lea dx, string2
        mov ah, 9
        int 21h     
    
     endm
                
                
    main proc
        
        
        mov ax, @data
        mov ds, ax    
              
        display string1, string2      
           
    main endp


end main