    org 100h

section .ejercicio1
	mov	ax, 0d
    add ax, 8d
    add ax, 8d
    add ax, 1d
    add ax, 1d
    add ax, 6d
    mov bl, 5d
    div bl
	mov	di, 0d
	mov	cx,[len]
	move:
		mov bh,[msg+di]
		mov	[di+200h], bh
		inc di
		loop move

section .ejercicio2
    mov	al, 2d
    mov	cx, 7d
    mov bl, 2d
duplicate:
    mul bl
	loop move
    
int 20h

section	.data
msg	db	"En el segundo"
len equ $-msg