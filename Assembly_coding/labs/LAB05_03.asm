TITLE minuscmaiusc
.model small
.stack 100h

.code


main proc

         mov  ah,2      ;mostrar caracteres


         mov  cx,26     ; delimitar area das maiusculas
         mov  dl,65


    l1:  
         int  21h       ; loop das minusculas
         inc  dl
         loop l1


         mov  cx,26     ; delimitar area das minusculas
         mov  dl,97

    l2:  
         int  21h
         inc  dl        ; loop das maiusculas

         loop l2




main endp



    fim: 

         mov  ah,4ch
         int  21h       ; terminar programa

end main 