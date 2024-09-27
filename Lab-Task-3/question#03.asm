.model small
.stack 100h
.data      

    arr DB "abcdefgh$"     
    found DB "Character Found!$"
    notfound DB "Character not Found!$"
    
.code

    main proc  
        
        
        mov ax, @data
        mov ds, ax
        
        mov ah, 01h   ; take user input
        int 21h
        
        mov dl, al    ; move input to dl 
                                    
        lea si, arr   ; adress of first index of array
        mov cx, 8     ; numbers of iteration
        
        
        check_array:     ; loop started
        
        cmp [si], dl      ; compare user input with array element
        je true           ; if char same as array char then jump to true
        inc si 
        
        loop check_array;  ; loop ended
        
        false:
        lea dx, notfound  
        mov ah, 09h ; print string 
        int 21h
        mov ah,4ch
        int 21h    
        
               
        true:
        lea dx, found 
        mov ah, 09h ; print string 
        int 21h
        mov ah, 4ch
        int 21h
                                   
    main endp
    
end main    
    

    