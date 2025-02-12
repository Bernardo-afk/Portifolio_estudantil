title repeat
.model Small 
.code

main proc

         mov  cx, 0      ; iniciar contador
         mov  ah,1

    l1:  

         int  21h
         inc  cx         ; incrementar contador
         cmp  al,0dh     ; comparar CR
         jne  l1

    fim: 
         mov  ah,2       ; imprimir carac

    pl:  
         mov  dl, '*'
         int  21h        ; loop imprimir '*'
         loop pl

main endp

         mov  ah,4ch     ;finalizar programa
         int  21h

end main 




; A diferença entre este programa e o primeiro ,
; seria que um loop while verifica a condição no início do loop, e se a condição for falsa, o corpo do loop não é executado nem uma vez.
; Por outro lado, um loop repeat verifica a condição no final do loop, e se a condição for falsa, o corpo do loop é executado pelo menos uma vez.