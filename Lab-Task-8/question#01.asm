INCLUDE Irvince32.inc
.data  

	M DWORD 1001b
	Q DWORD 1101b
	output BYTE "Result of multiplication : ",0;
       
.code

    main proc   
    
		mov eax, 0	 ; clear register
		mov ebx, M	 ; move multiplicand
		mov ecx, Q	 ; move Multiplier
		mov edx, 4	 ; counter var
		mov esi, 8
		
		cycle:
		
			shr ecx, 1
			jne shift_right
			
			add eax, ebx	; do A+M
			add edx, 0
			
			shift_right:
			
			rcr eax, 1
			rcr edx, 1
			
			dec esi
		
		cmp edx, '0'
		jne cycle
     
     
    main endp
    
end main    
    

    