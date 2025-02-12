Title asteristico
.MODEL small
.stack 100h
.data


    ast  db '* $'
.code


main proc



         mov ax,@data               ; acessar variaveis
         mov ds,ax                 

         mov cx,49           ; iniciar contador para 50

l1:

         mov ah,9            ; funçao de imprimir string
         lea dx,ast          ; mostrar string
         int 21h

         dec cx
         jnz l1         ; decrementar cx




         mov cx,49           ; iniciar o contador para 50

l2:

         mov ah,9            ; funçao de imprimir string
         lea dx,ast          ; mostrar string
         int 21h

         mov ah,2
         mov dl,10           ; pular linha
         int 21h

         dec cl
            jnz l2               ; decrementar cx
   



main endp

    FIM: 
         mov AH , 4Ch      ;finalizar programa 
         int 21h




end main


