.model small 
.stack 100h 



vetor MACRO linha,coluna
    
          mov al,MATRIZ4X4[linha+coluna]    ;  move para al o valor desejado

ENDM


.data


    MATRIZ4X4 DB 1,2,3,4    ;0,0          ; definindo a matriz
              DB 4,3,2,1    ; 4.0
              DB 5,6,7,8    ;   8.0
              DB 8,7,6,5    ; 12.0




.code
main proc
             mov   ax,@data
             mov   ds,ax




             call  processo

             mov   ah,4ch
             int   21h



processo proc


             xor   si,si
             xor   bx,bx       ; inicia variaveis utilizadas na matriz ( linha e coluna )


             mov   cx,16       ; contador
    l1:      


             vetor si,bx       ; acessa o macro


             mov   dl,al
             add   dl,30h
             mov   ah,2        ; imprime a posição da matriz
             int   21h




             inc   si
             cmp   si,4        ; posição na linha / compara se é a ultima posição

             jne   volta

             add   bx,4        ; caso for a ultima posição da coluna , ele pula para a próxima linha
             xor   si,si
    
    
    
             mov   ah,2
             mov   dl,10
             int   21h         ; pular linha ( para estruturar a matriz visualmente )


    volta:   

             loop  l1



             ret
processo endp





main endp
end main 