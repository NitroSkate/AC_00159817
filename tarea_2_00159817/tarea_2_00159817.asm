org	100h ;ejercicio 1
mov	ax, 5d
add	ax, 9d
add	ax, 8d
add     ax, 1d
add	ax, 7d
mov 	bx, 5d
div	bx

mov 	cl, "P"
mov	[200h], cl
mov 	cl, "e"
mov	[201h], cl
mov 	cl, "o"
mov	[202h], cl
mov 	cl, "r"
mov	[203h], cl
mov 	cl, "e"
mov	[204h], cl
mov 	cl, "s"
mov	[205h], cl
mov 	cl, "n"
mov	[206h], cl
mov 	cl, "a"
mov	[207h], cl
mov 	cl, "d"
mov	[208h], cl
mov 	cl, "a"
mov	[209h], cl



mov	ax, 4d ; ejercicio 2
mov	si, 0d
mov 	bx, 2d

lp1: mov	[si + 210h], ax
mul	bx
inc	si
cmp	AX, 100h
jb	lp1

lp2: mov	[si + 210h], ax
mul	bx
inc	si
inc	si
cmp	AX, 2000h
jb	lp2




mov	ax, 0d ;ejercicio 3
mov	bx, 1d
mov	cx, 0d
mov	si, 0h
mov	[si + 220h], ax
loop1:inc	si
mov	cx, ax
add	ax,bx
mov	[si + 220h], ax
mov 	bx,cx
cmp	ax, 233d
jb	loop1
loop2:inc	si
mov	cx, ax
add	ax,bx
mov	[si + 220h], al
inc 	si
mov	[si + 220h], ah
mov 	bx,cx
cmp	si, 10h
jb	loop2


int	20h