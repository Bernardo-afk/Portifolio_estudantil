TITLE PROGRAMA EXEMPLO PARA MANIPULAÇÃO DE VETORES USANDO BX
.MODEL SMALL
.DATA
    VETOR DB 1, 1, 1, 2, 2, 2 ;Cria um vetor de 6 posições
.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS,AX;    move .data para data segment 

    XOR DL, DL ;    inicializa dl 

    MOV CX,6 ; inicializa o contador com 6

    LEA BX, VETOR ; Passa o endereço de memoria inical do vetor

    VOLTA:

    MOV DL, [BX] ;   Passa para o  DL a posição do vetor
    INC BX ;  próxima mosição 

    ADD DL, 30H
    MOV AH, 02 ; transfora e imprime o numero 
    INT 21H ;

    LOOP VOLTA ;

    MOV AH,4CH
    INT 21H ;saida para o DOS

MAIN ENDP
END MAIN