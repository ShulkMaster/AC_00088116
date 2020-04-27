    org 100h
section .load
	mov	di,0d
	mov	cx,[len]
	move:
		mov bh,[msg+di]
		mov	[di+200h],bh; instead mov [di+ax],bh
		inc di
		loop move
    int 20h

section	.data
msg	db	"Y sin embargo se mueve"
len equ $-msg