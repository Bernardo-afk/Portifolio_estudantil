TITLE Numero1
.MODEL SMALL
.STACK 100h
.DATA
    MSG1 DB "Digite um caractere: $"
    SIM DB 10,13,"O caractere digitado e um numero.$"
    NAO DB 10,13,"O caractere digitado nao e um numero.$"
.CODE
    MAIN PROC
    ;Libera o acesso às variaveis em .DATA
    MOV AX,@DATA
    MOV DS,AX
    ;Imprime a string MSG1
    MOV AH,9
    MOV DX,OFFSET MSG1
    INT 21H
    ;Lê o caractere digitado
    MOV AH,1
    INT 21H
    ;Copia o caractere de AL em BL
    MOV BL,AL
    ;Compara o caractere salvo em BL com o caractere de número 48 de acordo com a tabela ASCC que é o 0
    CMP BL,48
    ;Salta para o rótulo NAOENUMERO caso o resultado salvo tenha número menor que 48
    JB NAOENUMERO
    ;Compara o caractere salvo em BL com o caractere de número 57 da tabela ASCC que é o número 9
    CMP BL,57
    ;Salta para o rótulo NAOENUMERO caso o resultado salvo tenha número maior que 57
    JA NAOENUMERO
    ;Imprime a string SIM
    MOV AH,9
    MOV DX,OFFSET SIM
    INT 21H
    ;Salta para o rótulo FIM
    JMP FIM 

    NAOENUMERO: ;Rótulo de nome NAOENUMERO
        ;Imprime a String NAO
        MOV AH,9
        MOV DX,OFFSET NAO
        INT 21H
    FIM:;Rótulo de nome FIM
        ;Finaliza o programa
        MOV AH,4CH
        INT 21H
    MAIN ENDP        
END MAIN