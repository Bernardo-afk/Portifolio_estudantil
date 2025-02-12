.model small 

.data

.code


main proc


            xor  bx,bx
            mov  cx,16



    whilee: 


            mov  ah,1
            int  21h

            cmp  al,0dh
            je   leitura
            and  al,0fh

    ; do
            shl  bx,1
            or   bl,al      ; Insere o bit menos significativo de al em bl

            loop whilee


    leitura:

            mov  ah,2
            mov  dl,0dh     ; Enter
            int  21h


            xor  cx,cx


            mov  cx,16


    l2:     

            shl  bx,1


            jc   um
            jnc  zero


    um:     
            mov  ah,2
            mov  dl,'1'
            int  21h
            loop l2
            jmp  fim

    zero:   
            mov  ah,2
            mov  dl,'0'
            int  21h


            loop l2


main endp
    
    fim:    
            mov  ah,4ch
            int  21h

    end main  