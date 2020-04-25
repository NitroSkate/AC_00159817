org	100h

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

int	20h