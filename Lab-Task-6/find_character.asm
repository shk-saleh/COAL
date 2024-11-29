.model small
.stack 100h
.data      

    arr DB "abcdefgh$"     
    found DB "Character Found!$"
    notfound DB "Character not Found!$"
    
.code 


         
   
    find_alpha macro arr
        
    
        mov al, 0     ; working as a count                               
        lea si, arr   ; adress of first index of array
        mov cx, 8     ; numbers of iteration
        
        
        check_array:     ; loop started
        
        cmp [si], dl      ; compare user input with array element
        je count           ; if char same as array char then jump to true
        inc si 
        
        loop check_array;  ; loop ended
           
        
        false_line notfound    ; if count is 0 then go to false_line
        
        
        count:      ; if count = 1 then go to true_line macro
          
        true_line found   
        
    
    endm   
    
    
    ; for char found
    true_line macro found
        
        
        lea dx, found 
        mov ah, 09h ; print string 
        int 21h
        mov ah, 4ch
        int 21h 
   
    
    endm   
    
    
    ; for char not found
    false_line macro notfound
              
        lea dx, notfound  
        mov ah, 09h ; print string 
        int 21h
        mov ah,4ch
        int 21h    
    
    endm   
    
    
    ; main procedure 
    main proc  
        
        
        mov ax, @data
        mov ds, ax
        
        mov ah, 01h   ; take user input
        int 21h
        
        mov dl, al    ; move input to dl 
        
        
        find_alpha arr     ; calling macro 
        
                                   
    main endp       ; main proc end here
    
    
end main    
    

    