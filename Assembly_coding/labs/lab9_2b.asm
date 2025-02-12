TITLE PROGRAMA EXEMPLO PARA MANIPULAÇÃO DE VETORES USANDO SI ou DI 
.MODEL SMALL 
.DATA 
    VETOR DB  1, 1, 1, 2, 2, 2 ;Cria um vetor de 6 posições
.CODE 
MAIN PROC 

        MOV AX, @DATA 
        MOV DS,AX ; move .data para data segment 

        XOR DL, DL ; Inicializar dl 

        MOV CX,6 ; Incializa o contador com 6

        XOR DI, DI ;Inicializa Di( limpa )

VOLTA:    

        MOV DL, VETOR[DI] ;Transfere a posição do vetor para DL utilizando DI como index
        INC DI ; Passa a posição do vetor 

        ADD DL, 30H 
        MOV AH, 02 ; imprime o vetor, na posição do index 
        INT 21H ;

        LOOP VOLTA ;  

        MOV AH,4CH 
        INT 21H             ;saida para o DOS 

MAIN ENDP 
        END MAIN 
 