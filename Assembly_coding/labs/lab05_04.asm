Title    maiusmin4_4
.model small
.stack


.code

main proc

    
         mov bx,97     ;armazenar o cod ASCII ( 97 = 'a') 
         mov cx,4           ; contado 

espaço:
         mov ah,2
         mov dx,10     ; pula linha
         int 21h


         mov cx,4

        lp:  
            mov ah,2    ; mostrar caractere 
            mov dx,bx   ; coloca em dx o caractere de saida        
            int 21h  
            inc bx        ;  incrementa o caractere em bx
        
            dec cx       ; decrementa cx , usado como contador no loop 
        
            jz  espaço   ; executa o "espaço" , quando cx = 0 
        
            cmp bx,123; usado para retornar ao loop até chegar no Z (122)
        
            jb  lp      ; jumper q retorna ao loop
                        ; nesse caso até q bx atinja 123 
            mov ah,24h




main endp


    fim: 

         mov ah,4ch
         int 21h       ; Encerrar programa



end main 