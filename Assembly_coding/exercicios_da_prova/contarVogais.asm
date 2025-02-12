title contagem de vogais
.model small
.data
  vetor  db 20 dup (?)
  vogais db "a","e","i","o","u"
.code

main proc

                   mov  ax,@data
                   mov  ds,ax             ;Libera acesso a memoria

                   call pega_Vetor        ;Chama a função para pegar a string

                   lea  si,vetor          ;Passa o endereço da string para si
                   
                   xor  ax,ax
                   mov  cx,20

  loop_Vetor:      
                   push cx
                   mov  cx,5
                   mov  dl,[si]
                   lea  di,vogais

  loop_Vogais:     

                   mov  bl,[di]
                   cmp  dl,bl
                   je   vogal_Encontrada
                   inc  di

                   loop loop_Vogais

                   pop  cx
                   inc  si
                   loop loop_Vetor

                   jmp  fim

  vogal_Encontrada:

                   pop  cx
                   inc  ax
                   inc  si

                   loop loop_Vetor

  fim:             
                   mov  dl,al
                   add  dl,30h
                   mov  ah,2
                   int  21h



       
                   mov  ah,4ch
                   int  21h

main endp

pega_Vetor proc

                   lea  si,vetor
                   mov  ah,1

  loop_Pega_vetor: 


                   int  21h
                   cmp  al,0dh
                   je   fim_Contagem

                   mov  byte ptr [si],al
                   inc  si

                   jmp  loop_Pega_vetor


  fim_Contagem:    

                   ret
pega_Vetor endp


end main