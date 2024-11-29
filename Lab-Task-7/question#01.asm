INCLUDE Irvine32.inc

.data

msg DW "Enter number between (0-9) : $";          
isEven DW "Given number is Even!$";
isOdd DW "Given number is Odd!$";

.code

    main proc   
              
     
    mov edx, offset msg      ; use loop for printing msg
    call WriteString 			; displying the string
	 
	                                       
    call ReadChar      ; taking user input

	mov edx, 0			; clearing edx for div result
	mov ebx, 2
	div ebx				; eax = eax / ebx, remainder in edx
                                                 
  
    call Crlf      ; for newline
  
	; check for even or odd
    cmp edx, 0;
    je forTrue 
    jne isFalse

                                                          
    forTrue:        
                 
    mov edx, offset isEven      ; use loop for printing msg
    call WriteString 			; displying the string            
    jmp terminate: 
         
                    
    isFalse:  
     
    mov edx, offset isOdd      ; use loop for printing msg
    call WriteString 			; displying the string            
    jmp terminate: 


    terminate:    
    call Crlf
	exit		; terminate the program
	
                                   
    main endp
    
end main    
    

    