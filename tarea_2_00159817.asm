org	100h
mov	ax, 4d
mov	si, 0d
mov	bx, 2d

lp1: mov	[si + 210h], ax
mul	bx
inc	si
cmp	ax, 100h
jb	lp1

lp2: mov	[si + 210h], ax
mul	bx	
inc 	si
inc	si
cmp	ax, 2000h
jb	lp2

int	20h

