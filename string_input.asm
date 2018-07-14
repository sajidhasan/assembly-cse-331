
org 100h
mov bx, offset arr
mov cl, 0

Input:
    mov ah, 1
    int 21h
    cmp al, 0dh
    je Finished
    mov [bx], al
    inc cl
    inc bx
    jmp Input

Finished:    
    mov dx, offset arr
    mov ah, 9
    int 21h

ret
arr db 100 dup(?)


