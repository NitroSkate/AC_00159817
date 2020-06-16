org	100h

section .text

	call 	texto  	

	;mov dx, nl
	;call escribir
	;mov dx, message
	;call escribir

    mov     di, 0d

	xor 	si, si 	

lupi:	call 	kb
	mov	[300h+si], al 
	inc 	si
    cmp     si,8
    jne     lupi
	jmp 	mostrar

suma: add bl, [400h+di]
	inc di
	cmp di, 5d
	jne suma
	mov [405h], bl
	mov ax, 0h
	mov ax, [404h]
	;mov bl, 05h
	div di
	;mov [200h], al
	mov [406h], ah
	ret
	


proceso: mov bl, 0h
location:mov bl, [303h+di]
	sub bl, 30h
	mov [400h+di], bl
	inc di
	cmp di, 8d
	jne  location
	mov di, 0d
	mov bl, [400h+di]
	inc di
	jmp suma
	ret

decision: mov cl, [406h]
	mov dx, nl
	call escribir
	cmp cl, 0ah
	je frase1
	cmp cl, 09h
	je frase2
	cmp cl, 08h
	je frase3
	cmp cl, 07h
	je frase4
	cmp cl, 06h
	je frase5
	cmp cl, 05h
	je frase6
	cmp cl, 04h
	je frase7
	cmp cl, 03h
	je frase8
	cmp cl, 02h
	je frase9
	cmp cl, 01h
	je frase10
	jmp finish



frase1: mov dx, msg0
	call escribir
	ret

frase2: mov dx, msg9
	call escribir
	ret

frase3: mov dx, msg8
	call escribir
	ret

frase4: mov dx, msg7
	call escribir
	ret

frase5: mov dx, msg6
	call escribir
	ret

frase6: mov dx, msg5
	call escribir
	ret

frase7: mov dx, msg4
	call escribir
	ret

frase8: mov dx, msg3
	call escribir
	ret

frase9: mov dx, msg2
	call escribir
	ret

frase10: mov dx, msg1
	call escribir
	ret



mostrar:call proceso
	call 	decision 
	call    kb  
finish:	int 	20h




texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret


kb:	mov	ah, 1h 
	int 	21h	
	ret		

escribir: mov ah,09h
	int	21h
	ret

section .data


message	db	"Escriba su carnet:$"
msg0	db	"Perfecto solo Dios$"
msg1	db	"Solo necesito el cero$"
msg2	db	"Aun se pasa$"
msg3	db	"Hay salud$"
msg4	db	"Me recupero$"
msg5	db	"En el segundo$"
msg6	db	"Peor es nada$"
msg7	db	"Muy bien$"
msg8	db	"Colocho$"
msg9	db	"Siempre me esfuerzo$"
nl	db 	0xA, 0xD, "$"
