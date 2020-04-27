    org 100h

section .develop
    ; ejercicio1
    mov	ax, 0d
    add ax, 8d
    add ax, 8d
    add ax, 1d
    add ax, 1d
    add ax, 6d
    mov bl, 5d
    div bl
    mov	di, 0d
    mov	cx,len
    move:
        mov bh,[msg+di]
        mov	[di+200h], bh
        inc di
        loop move

        ; ejercicio2
    mov	cx, 10d
    mov	ax, 2d
    mov bx, 2d
    mov di, 0d
    duplicate:
        mul bx
        cmp ax, 255d
        ja skip
        mov [di+210h], al
        inc di
        loop duplicate

skip:
    mov [di+210h], ah
    inc di
    mov [di+210h], al
    inc di
    dec cx
    jmp duplicate

int 20h

section	.data
msg	db	"En el segundo"
len equ $-msg