title CONVERSOR
.model small 


; ---  ESPAÇO PARA MACROS 

; macro limpa tela 
move_XY macro x,y       

            push ax
            push bx
            push cx             ; push para não perder o que estava acontecendo antes 
            push dx

            mov  ah,2
            mov  dh,y                   ;     posiciona o curor na tela de texto na cordenada x,y
            mov  dl,x
            int  10h

            pop  dx
            pop  cx                 ; pop para voltar ao que estava acontecendo anteriormente 
            pop  bx
            pop  ax
endm






; --- FIM MACROS 




.data 



home_message db 10,13, "Qual numero voce quer dar como entrada ?"

msg1 db 10,13, "1 - Hexa"
msg2 db 10,13, "2 - Binario"
msg3 db 10,13, "3 - Decimal"




.code    


main proc 

mov ax,@data 
mov ds , ax 


; programa 

    call Home 
    move_XY 25, 0        ; Posiciona o cursor












; FINALIZAR O PROGRAMA 
mov ah,4ch 
int 21h 

main endp 



;   ----------- ESPAÇO PARA PROCEDIMENTOS 


;Procedimento 1 

    Home proc 
                        MOV      AH,0 ; limpar tela
                        MOV      AL,3
                        INT      10H



    ; Exibe as mensagens iniciais
    MOV AH, 9
    LEA DX, home_message
    INT 21h

    MOV AH, 9
    LEA DX, msg1
    INT 21h

    MOV AH, 9
    LEA DX, msg2
    INT 21h

    MOV AH, 9
    LEA DX, msg3
    INT 21h

    ; Pula uma linha
    MOV AH, 2
    MOV DL, 10
    INT 21h

    ; Lê o número de entrada do usuário
    MOV AH, 1
    INT 21h
    MOV BL, AL           ; Armazena a entrada em BL
    SUB BL, 30h          ; Converte de ASCII para número (0-9)

    xor ax,ax
    add al,bl     ; salvar escolha  , para usar futuramente           
    push ax  









    ret 
    Home endp 



;  ----------------- FIM PROCEDIMENTOS 




end main 