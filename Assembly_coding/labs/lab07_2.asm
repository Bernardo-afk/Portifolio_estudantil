title p2
.model small
.stack 100h
.data
msg1 db 10,13, "Digite o multiplicando $"
msg2 db 10,13, "Digite o multiplicador $"
resultado db 10,13, "resultado: $"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Input multiplicand
    mov ah, 9
    lea dx, msg1
    int 21h

    mov ah, 1
    int 21h                 ; 
    mov bl, al; colocar o numero em bl 
    sub bl, 30h            ; convert to number

    ; 
    mov ah, 9
    lea dx, msg2
    int 21h

    mov ah, 1
    int 21h                 ; 
    mov cl, al              ; colocar numero em cl 
    sub cl, 30h            ; convert to number



xor bh,bh    ; usar como varivel que receberá a multiplicação 


l1:
    add bh, bl
    dec cl
    jnz l1      




    ; mostrar resultado 
    mov ah, 9
    lea dx, resultado
    int 21h



    add al, 30h      ; convert to ASCII
    mov ah, 2
    mov bh, al
    int 21h

fim:
    ; saida 
    mov ah, 4ch
    int 21h

main endp
end main