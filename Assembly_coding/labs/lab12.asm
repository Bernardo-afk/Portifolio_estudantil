.MODEL SMALL
.STACK 100H

.DATA
    armazena DB 255                  ; Primeiro byte: tamanho máximo do armazena (255 bytes)
    msg DB 10, 13, 'Entre com a string: $'
    copiedarmazena DB 255            ; armazena para a cópia da string
    compareString DB 'snow tes$'    ; String fixa para comparacao
    iguaisMsg DB 10, 13, 'As strings sao iguais!$', 10, 13
    diferentesMsg DB 10, 13, 'As strings sao diferentes!$', 10, 13
    countMsg DB 10, 13, 'Quantidade de letras ''a'': $'
    novalinha DB 10, 13, '$'         ; Para imprimir uma nova linha

.CODE
MAIN PROC
    MOV AX, @DATA                  ; Inicializa o segmento de dados
    MOV DS, AX

    CALL LerEImprimirString        ; 1. Lê e imprime a string com um espaço
    CALL CopiarString              ; 2. Copia a string para outro armazena
    CALL CompararStrings           ; 3. Compara a string lida com a string fixa
    CALL ContarLetrasA             ; 4. Conta as letras 'a' na string

    MOV AH, 4CH                    ; Termina o programa
    INT 21H
MAIN ENDP

; 1. Procedimento para ler uma string, adicionar um espaço e imprimir
LerEImprimirString PROC
    MOV AH, 09H                    ; Exibe a mensagem
    LEA DX, msg
    INT 21H

    MOV AH, 0AH                    ; Lê a string do usuário
    LEA DX, armazena
    INT 21H

    ; Adiciona um espaço após a string lida
    MOV SI, OFFSET armazena+2        ; SI aponta para o início da string lida
    MOV cl, armazena[1]              ; CX contém o comprimento da string
    ADD SI, CX                     ; Move SI para o fim da string
    MOV BYTE PTR [SI], ' '         ; Adiciona um espaço
    INC SI                         ; Avança para o terminador
    MOV BYTE PTR [SI], '$'         ; Adiciona o terminador '$'

    ; Imprime a string com o espaço
    MOV AH, 09H
    LEA DX, armazena+2
    INT 21H

    ; Imprime uma nova linha
    LEA DX, novalinha
    MOV AH, 09H
    INT 21H

    RET
LerEImprimirString ENDP

; 2. Procedimento para copiar a string para outro armazena
CopiarString PROC
    MOV SI, OFFSET armazena+2        ; SI aponta para a string original
    MOV DI, OFFSET copiedarmazena    ; DI aponta para o armazena de cópia
    MOV cl, armazena[1]              ; CX contém o comprimento da string

copiarLoop:
    MOV AL, [SI]                   ; Copia cada caractere
    MOV [DI], AL
    INC SI
    INC DI
    LOOP copiarLoop                ; Repete até o fim da string

    MOV BYTE PTR [DI], '$'         ; Adiciona o terminador '$'
    RET
CopiarString ENDP

; 3. Procedimento para comparar a string com uma fixa
CompararStrings PROC
    MOV SI, OFFSET armazena+2        ; SI aponta para a string original
    MOV DI, OFFSET compareString   ; DI aponta para a string de comparação

comparaLoop:
    MOV AL, [SI]
    MOV BL, [DI]
    CMP AL, BL
    JNE naoIgual                   ; Se forem diferentes, pula para 'naoIgual'
    CMP AL, '$'                    ; Se chegamos ao terminador, são iguais
    JE igual
    INC SI
    INC DI
    JMP comparaLoop

igual:
    MOV AH, 09H                    ; Exibe mensagem de igualdade
    LEA DX, iguaisMsg
    INT 21H
    JMP fimComparar

naoIgual:
    MOV AH, 09H                    ; Exibe mensagem de diferença
    LEA DX, diferentesMsg
    INT 21H

fimComparar:
    RET
CompararStrings ENDP

; 4. Procedimento para contar quantas letras 'a' existem na string
ContarLetrasA PROC
    MOV SI, OFFSET armazena+2        ; SI aponta para a string
    MOV cl, armazena[1]              ; CX contém o comprimento da string
    MOV BX, 0                      ; Contador de letras 'a'

contarLoop:
    MOV AL, [SI]
    CMP AL, 'a'
    JNE naoLetraA
    INC BX                         ; Incrementa o contador se for 'a'

naoLetraA:
    INC SI
    LOOP contarLoop

    ; Exibe a quantidade de letras 'a'
    MOV AH, 09H
    LEA DX, countMsg
    INT 21H

    ; Converte BX para caractere ASCII e imprime
    MOV AH, 02H
    ADD BL, '0'
    MOV DL, BL
    INT 21H

    ; Imprime uma nova linha
    LEA DX, novalinha
    MOV AH, 09H
    INT 21H

    RET
ContarLetrasA ENDP

END MAIN
