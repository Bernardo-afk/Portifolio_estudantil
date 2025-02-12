.model small
.stack 100h
.data

    msg1 db 10,13, "Digite o dividendo: $"
    msg2 db 10,13, "Digite o divisor: $"
    msg3 db 10,13, "Quociente: $"
    msg4 db 10,13, "Resto: $"

.code

main proc

         mov ax, @data
         mov ds, ax

    ; Mostrar string dividendo
         mov ah, 9
         lea dx, msg1
         int 21h

         mov ah, 1
         int 21h   
         
         
         mov bl, al       ; Salvar o dividendo em Bl
         sub bl, 30h      ; Converter em Número
   

    ; mostrar string divisor
         mov ah, 9
         lea dx, msg2
         int 21h

         mov ah, 1
         int 21h
         mov cl, al       ; guardar em cl
         sub cl, 30h      ; converter em número
  

    ; Loop de subtração
    l1:  
         cmp bl, cl       ; comparar , para se satisfazer a condição jl
         jl  fim
         sub bl, cl       ; subtrair ( enunciado )
         inc bh
         jmp l1

    fim: 
    ; Mostrar string do  quociente
         mov ah, 9
         lea dx, msg3
         int 21h

         add bh, 30h      ; converter para ASCII
         mov ah, 2
         mov dl, bh
         int 21h

    ; mostrar string  de resto
         mov ah, 9
         lea dx, msg4
         int 21h

         add bl, 30h      ; converter para ASCII
         mov ah, 2
         mov dl, bl
         int 21h

    ; fim
         mov ah, 4ch
         int 21h

main endp
end main