org	100h	
mov	ax, 0d
mov	bx, 1d
mov	cx, 0d
mov	si, 0h
mov	[si + 220h], ax
loop1:inc	si
mov	cx, ax
add	ax, bx
mov	[si + 220h], ax
mov	bx, cx
cmp	ax, 233d
jb	loop1
loop2:inc	si
mov	cx, ax
add	ax, bx
mov	[si + 220h], al
inc	si
mov	[si + 220h], ah
mov	bx, cx
cmp	si, 10h
jb	loop2

int 	20h
