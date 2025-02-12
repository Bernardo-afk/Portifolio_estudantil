title atividade_1
.model small
.stack 100h
.data
    msg  db 'Digite um número binário: $'
 

.code
    main:       
                mov ax, @data
                mov ds, ax

    ; Exibir mensagem
                lea dx,msg
                mov ah, 09h
                int 21h

    ; Inicializar BX como 0
                xor bx, bx

    leitura:    
    ; Ler um caractere
                mov ah, 01h
                int 21h

    ; Verificar se o caractere é CR (valor ASCII 13)
                cmp al, 13
                je  fim_leitura

                sub al, '0'        ; Converte caractere ASCII para valor binário

                        
                shl bx, 1          ; Deslocar BX 1 casa para a esquerda

    ;
                or  bx, ax         ; O valor lido  é armazenado no LSB

                jmp leitura



main endp 

    fim_leitura:
   
                mov ax, 4Ch        ; Finalizar o programa
                int 21h
end main
