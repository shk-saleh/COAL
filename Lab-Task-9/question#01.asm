TITLE  Compound IF Statements         (Regist.asm)

INCLUDE Irvine32.inc

.data

stat1 BYTE "Enter your marks: ",0
stat2 BYTE "Enter your credits: ",0
marks  DWORD ?
credits  DWORD ?
grade  WORD ?
stat3 BYTE "You are failed!",0

.code

main PROC

	mov edx,offset stat1
	call WriteString
	call ReadInt	; read marks
	mov marks, eax

	call crlf

	mov edx,offset stat2
	call WriteString
	call ReadInt	; read marks
	mov credits, eax

	call CheckGrade	
	
	call crlf
	mov edx, offset grade
	call WriteString

	exit
	
main ENDP

CheckGrade PROC


	.IF marks <= 100
	   mov grade,'A'
	.ELSEIF (marks < 80) && (credits <= 16)
	   mov grade,'B'
	.ELSEIF (marks <= 70 ) && (credits <= 12)
	   mov grade,'C'
	.ELSEIF (marks <= 60 ) && (credits <= 10)
	  mov grade,'D'
	.ELSEIF (marks <= 50 ) && (credits <= 8)
	  mov grade,'E'
	.ELSEIF (marks <= 45 ) && (credits <= 7)
	  mov edx,offset stat3
	  call WriteString
	.ENDIF

	ret
	
CheckGrade ENDP

END main