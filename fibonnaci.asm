org 100h

section .main
    call graphic_mode
    xor si, si
    xor di, di
    call draw_rectangle
    call keyboard
    int 20h

graphic_mode:
    mov ah, 00h
    mov al, 12h
    int 10h
    ret

pixel:
    mov ah, 0CH
    mov al, 0111b
    int 10h
    ret

lupi_h:
    mov cx, 0d ; Columna
    add cx, si
    mov	dx, di ; Fila
    call pixel
    inc si
    cmp si, bx
    jne lupi_h
    ret

draw_rectangle:
    mov bx, 60d ;width
    mov si, 50d
    mov di, 50d

lupi_rectangle:
    call lupi_h
    mov si, 30d
    inc di
    cmp di, 80d ;height
    jb lupi_rectangle
    ret

keyboard:
    mov ah, 00h
    int 16h
    ret