title atividade3
.MODEL SMALL
.STACK 100h
.CODE
main proc
    XOR BX, BX        

prox:
    MOV AH, 01h       
    INT 21h           
    CMP AL, 0Dh       ; Verifica se é Enter (CR - 0Dh)
    JE fim     ; Se for Enter, finaliza o programa

    CMP AL, '9'       ; Verifica se é um dígito 0-9
    JG naohexa        ; Se for maior que 9, verifica se é A-F
    SUB AL, '0'       ; Converte dígito 0-9 para valor numérico
    JMP converter   

naohexa:
    SUB AL, 'A'-10    ; Converte letra A-F para valor numérico

converter:
    SHL BX, 4         ; Desloca BX 4 bits à esquerda
    OR BX, AX         ; Insere o valor convertido nos 4 bits inferiores
    JMP prox      ; Repete para o próximo caractere

main endp
fim:
    MOV AH, 4Ch       
    INT 21h           
END main
