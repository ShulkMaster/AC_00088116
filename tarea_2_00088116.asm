    org 100h
section .load
	mov	ax, 0d
    add ax, 8d
    add ax, 8d
    add ax, 1d
    add ax, 1d
    add ax, 6d
    mov bl, 5d
    div bl
    int 20h
