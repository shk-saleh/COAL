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
        
        
        call find_alpha         ; call find_aplha func
        
        
        check_status:
        
        cmp al, 1
        je true
        

        
        false:
        
        call false_line   
        
               
        true:
        
        call true_line   
        
                                   
    main endp       ; main proc end here
    
     
   
    find_alpha proc
        
    
        mov al, 0     ; working as a count                               
        lea si, arr   ; adress of first index of array
        mov cx, 8     ; numbers of iteration
        
        
        check_array:     ; loop started
        
        cmp [si], dl      ; compare user input with array element
        je count           ; if char same as array char then jump to true
        inc si 
        
        loop check_array;  ; loop ended
           
        ret
        
        count:      ; if found then it inc the val of al
        
        mov al, 1
        ret
    
    find_alpha endp   
    
    ; for char found
    true_line proc
        
        
        lea dx, found 
        mov ah, 09h ; print string 
        int 21h
        mov ah, 4ch
        int 21h 
   
    
    true_line endp   
    
    ; for char not found
    false_line proc
              
        lea dx, notfound  
        mov ah, 09h ; print string 
        int 21h
        mov ah,4ch
        int 21h    
    
    false_line endp   
    
    
end main    
    

    