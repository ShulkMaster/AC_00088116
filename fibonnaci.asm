org 200h

section .main
    global _start

_start:
    call set_program
    call graphic_mode

    ; rectangle for 8
    mov [column], word 246d
    mov [row], word 0d
    mov [height], word 480d
    mov [width], word 394d
    call draw_rectangle

    ; rectangle for 5
    mov [column], word 0d
    mov [row], word 180d
    mov [height], word 300d
    mov [width], word 247d
    call draw_rectangle

    ; rectangle for 3
    mov [column], word 0d
    mov [row], word 0d
    mov [height], word 180d
    mov [width], word 151d
    call draw_rectangle

    ; rectangle for 2
    mov [column], word 150d
    mov [row], word 0d
    mov [height], word 120d
    mov [width], word 98d
    call draw_rectangle

    ; rectangle for 1a
    mov [column], word 200d
    mov [row], word 120d
    mov [height], word 60d
    mov [width], word 48d
    call draw_rectangle

    ; rectangle for 1b
    mov [column], word 150d
    mov [row], word 120d
    mov [height], word 60d
    mov [width], word 50d
    call draw_rectangle

    call keyboard
    int 20h

set_program:
    xor si, si
    xor di, di
    mov [color], byte 0001b
    ret

graphic_mode:
    mov ah, 00h
    ; Resolution 640x480
    mov al, 12h
    int 10h
    ret

pixel:
    mov ah,0CH
    mov al,[color]
    int 10h
    ret

draw_line:
    mov cx,[column]
    mov di,cx
    add di,[width]
    print:
        call pixel
        inc cx
        cmp cx,di
        jl print

    ret

draw_rectangle:
    mov	dx,[row]
    mov si,dx
    add si,[height]
    stack:
        call draw_line
        inc dx
        cmp dx, si
        jl stack
    inc byte [color]
    ret

keyboard:
    mov ah, 00h
    int 16h
    ret

section .data
column equ 201h
row equ 203h
height equ 205h
width equ 207h
color equ 209h
