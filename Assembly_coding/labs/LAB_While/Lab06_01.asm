title while
.model Small 
.code

main proc



          mov  cx,0         ; Iniciar loop em 0

     l1:  
          mov  ah, 1        ; pedir entrada de caractere
          int  21h
          cmp  al, 0dh      ; Comparador CR 
          je   fim

          inc  cx           ; Incrementar o contador
          jmp  l1

     fim: 
          mov  ah, 2        ; saida de dados  para Pl
     Pl:  
          mov  dl, '*'             
          int  21h          ; loop imprimir '*'
          loop Pl

main endp

          mov  ah, 4ch   ; finalizar programa 
          int  21h

end main 
