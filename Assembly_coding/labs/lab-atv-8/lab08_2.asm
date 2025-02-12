.model small 
.stack 100h

.data

    msg  db 10,13, "Digite um número, precione enter para parar $ "

.code

main proc

         MOV  AX, @DATA
         MOV  DS, AX


         MOV  AH, 09H
         LEA  DX, msg
         INT  21H

         xor  bx,bx
    mov cx,0

    ler: 

         mov  ah,1
         int  21h

         cmp  al,0dh   ; compara se é enter 
         je   pl

         inc cx

         and  al, 0fh    ;   transforma em número 

         shl  bx,1
         or   bl,al

             cmp cx,16
            je pl
            jmp ler 

pl : 

mov dl,0h
int 21h 
jmp mostrar 




mostrar : 

     cmp cx,0 
    je fim 

    shl bx,1

    jc monitor 
    jnc monitor2 


    monitor : 
    mov ah,2
    mov dl,'1'
    int 21h         
    dec cx 
    jmp mostrar 

    monitor2: 
    mov ah,2
    mov dl,'0'
    int 21h 
     dec cx 
     jmp mostrar 


main endp
    fim: 
         mov  ah,4ch
         int  21h


end main 