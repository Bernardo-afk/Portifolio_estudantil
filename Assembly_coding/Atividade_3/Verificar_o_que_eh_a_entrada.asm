TITLE Numero2
.MODEL SMALL
.STACK 100h
.DATA
    M DB "Digite um caractere: $"
    N DB 10,13,"O caractere digitado e um numero.$"
    L DB 10,13,"O caractere digitado e uma letra.$"
    D DB 10,13,"O caractere digitado e um caractere desconhecido.$"
.CODE
    MAIN PROC
    ;Libera o acesso às variaveis em .DATA
    MOV AX,@DATA
    MOV DS,AX
    ;Imprime a string M
    MOV AH,9
    MOV DX,OFFSET M
    INT 21H
    ;Lê o caractere digitado
    MOV AH,1
    INT 21H
    ;Copia o caractere de AL em BL
    MOV BL,AL
    ;Compara o caractere salvo em BL com o caractere de número 48 de acordo com a tabela ASCC que é o 0
    CMP BL,48
    ;Salta para o rótulo LETRA caso o resultado salvo tenha número menor que 48
    JB LETRA
    ;Compara o caractere salvo em BL com o caractere de número 57 da tabela ASCC que é o número 9
    CMP BL,57
    ;Salta para o rótulo LETRA caso o resultado salvo tenha número maior que 57
    JA LETRA
    ;Imprime a string N
    MOV AH,9
    MOV DX,OFFSET N
    INT 21H
    ;Salta para o rótulo FIM
    JMP FIM 

    LETRA: ;Rótulo de nome LETRA
        MAIUSCULA: ;Rótulo de nome MAIUSCULA
            ;Compara o resultado em BL com o numero 65 da tabela ASCC (A)
            CMP BL,65
            ;Pula para o rótulo MINUSCULA caso o resultado da comparação seja menor que 65
            JB MINUSCULA
            ;Compara o resultado em BL com o numero 90 da tabela ASCC (Z)
            CMP BL,90
            ;Pula para o rótulo MINUSCULA caso o resultado da comparação seja menor que 90
            JA MINUSCULA
            ;Imprime a string L
            MOV AH,9
            MOV DX,OFFSET L
            INT 21H
            ;Salta para o FIM
            JMP FIM

        MINUSCULA:;Rótulo de nome MINUSCULA
            ;Compara o resultado em BL com o numero 97 da tabela ASCC (a)
            CMP BL,97
            ;Pula para o rótulo MINUSCULA caso o resultado da comparação seja menor que 97
            JB DESCONHECIDO
            ;Compara o resultado em BL com o numero 122 da tabela ASCC (z)
            CMP BL,122
            ;Pula para o rótulo MINUSCULA caso o resultado da comparação seja maior que 122
            JA DESCONHECIDO
            ;Imprime a string L
            MOV AH,9
            MOV DX,OFFSET L
            INT 21H
        ;Salta para o rótulo FIM
        JMP FIM
    DESCONHECIDO:  ;Rótulo de nome DESCONHECIDO
        ;Imprime a string  D
        MOV AH,9
        MOV DX,OFFSET D
        INT 21H
        ;Salta para a string FIM
        JMP FIM    
    FIM:;Rótulo de nome FIM
        ;Finaliza o programa
        MOV AH,4CH
        INT 21H
    MAIN ENDP        
END MAIN