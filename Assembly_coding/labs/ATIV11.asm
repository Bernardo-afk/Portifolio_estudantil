TITLE CONVERSOR
.MODEL SMALL
.STACK 100h

; --- ESPAÇO PARA MACROS ---

; Macro para mover o cursor na tela
move_XY MACRO x, y
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX

    MOV AH, 2
    MOV DH, y                  ; Coordenada Y
    MOV DL, x                  ; Coordenada X
    INT 10h

    POP DX
    POP CX
    POP BX
    POP AX
ENDM

; Macro para limpar a tela
limpatela MACRO
    MOV AH, 0                  ; Limpar tela
    MOV AL, 3
    INT 10h
ENDM

; --- FIM MACROS ---

.DATA

home_message DB 10,13, "Qual numero voce quer dar como entrada ?$"
msg1 DB 10,13, "1 - Hexa  $"
msg2 DB 10,13, "2 - Binario $"
msg3 DB 10,13, "3 - Decimal $"

escolha_message DB 10,13, "Para qual base voce quer converter ?$"
msg4 DB 10,13, "1 - Hexa  $"
msg5 DB 10,13, "2 - Binario $"
msg6 DB 10,13, "3 - Decimal $"

result_message DB 10,13, "Resultado: $"
hex_digits DB '0123456789ABCDEF$'

.CODE    

MAIN PROC 

    MOV AX, @DATA
    MOV DS, AX

    ; Programa Principal
    CALL Home

    limpatela
    
    CALL Segunda_escolha

    ; FINALIZAR O PROGRAMA 
    MOV AH, 4Ch
    INT 21h 

MAIN ENDP 

; ----------- ESPAÇO PARA PROCEDIMENTOS -----------

; Procedimento para exibir o menu inicial
Home PROC 
    limpatela                    ; Limpa a tela

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

    ; Lê o número de entrada do usuário
    MOV AH, 1
    INT 21h
    MOV BL, AL                  ; Armazena a entrada em BL
    SUB BL, 30h                 ; Converte de ASCII para número (0-9)

    XOR AX, AX
    ADD AL, BL                  ; Salva a escolha em AL para uso futuro

    limpatela                    ; Limpa a tela novamente

    ; Decide qual conversão executar
    CMP BL, 1
    JE armazena_hexa

    CMP BL, 2
    JE armazena_binario

    CMP BL, 3
    JE armazena_decimal

    ; Se não for nenhuma opção válida, termina o procedimento
    RET

Home ENDP

; Procedimento para armazenar entrada hexadecimal
armazena_hexa PROC
    MOV CX, 4                   ; Define o limite de 4 dígitos para entrada hexadecimal
    XOR DX, DX                  ; Zera DX para acumular o valor

inicio_loop_hexa:
    MOV AH, 1
    INT 21h
    CMP AL, 0Dh                 ; Verifica se é CR
    JE done_input_hexa

    MOV BL, AL

    ; Verifica se o caractere é numérico (0-9)
    CMP BL, '0'
    JB invalido_hexa
    CMP BL, '9'
    JA converte_hex 

    ; Se for número (0-9), converte para valor numérico e acumula em DX
    SUB BL, '0'
    SHL DX, 4                   ; Desloca 4 bits para esquerda (multiplicação por 16)
    ADD DX, BX                  ; Soma o dígito ao valor acumulado
    LOOP inicio_loop_hexa       ; Decrementa CX e continua o loop se ainda houver dígitos permitidos
    JMP done_input_hexa

converte_hex: 
    ; Verifica se é letra hexadecimal válida (A-F)
    CMP BL, 'A'
    JB invalido_hexa
    CMP BL, 'F'
    JA invalido_hexa

    ; Se for letra (A-F), converte para valor numérico e acumula em DX
    SUB BL, 'A' 
    ADD BL, 10
    SHL DX, 4                   ; Desloca 4 bits para esquerda
    ADD DX, BX                  ; Soma o dígito ao valor acumulado
    LOOP inicio_loop_hexa       ; Decrementa CX e continua o loop se ainda houver dígitos permitidos

invalido_hexa:
    ; Código para tratar entrada inválida (opcional)
    JMP inicio_loop_hexa

done_input_hexa:
    RET
armazena_hexa ENDP

; Procedimento para armazenar entrada binária
armazena_binario PROC
    MOV CX, 8                  ; Define o limite de 16 dígitos para binário
    XOR DX, DX                  ; Zera DX para acumular o valor

inicio_loop_binario:
    MOV AH, 1
    INT 21h
    CMP AL, 0Dh                 ; Verifica se é CR
    JE done_input_binario

    CMP AL, '0'
    JE armazena_zero
    CMP AL, '1'
    JE armazena_um
    JMP invalido_binario        ; Entrada inválida se não for '0' ou '1'

armazena_zero:
    shl DX, 1                   ; Desloca 1 bit à esquerda para acumular o próximo bit
    LOOP inicio_loop_binario
    JMP done_input_binario

armazena_um:
    SHL DX, 1                   ; Desloca 1 bit à esquerda
    OR DX, 1                    ; Define o bit menos significativo em 1
    LOOP inicio_loop_binario
    JMP done_input_binario

invalido_binario:
    ; Código para tratar entrada inválida (opcional)
    JMP inicio_loop_binario

done_input_binario:
    RET
armazena_binario ENDP

; Procedimento para armazenar entrada decimal
armazena_decimal PROC
    MOV CX, 5                   ; Define o limite de 5 dígitos para decimal
    XOR DX, DX                  ; Zera DX para acumular o valor

inicio_loop_decimal:
    MOV AH, 1
    INT 21h
    CMP AL, 0Dh                 ; Verifica se é CR
    JE done_input_decimal

    CMP AL, '0'
    JB invalido_decimal
    CMP AL, '9'
    JA invalido_decimal

    ; Converte caractere ASCII para valor numérico (0-9) e acumula em DX
    SUB AL, '0'
    MOV BL, AL
    MOV AX, DX
    MOV BX, 10
    MUL BX                      ; Multiplica DX por 10 para deslocar para a esquerda
    ADD DX, AX                  ; Soma o novo dígito
    LOOP inicio_loop_decimal

invalido_decimal:
    ; Código para tratar entrada inválida (opcional)
    JMP inicio_loop_decimal

done_input_decimal:
    RET
armazena_decimal ENDP

; Procedimento para exibir o menu de conversão de bases
Segunda_escolha PROC 
    ; Exibe as mensagens iniciais
    MOV AH, 9
    LEA DX, escolha_message
    INT 21h

    MOV AH, 9
    LEA DX, msg4
    INT 21h

    MOV AH, 9
    LEA DX, msg5
    INT 21h

    MOV AH, 9
    LEA DX, msg6
    INT 21h

    ; Lê a escolha de base de conversão do usuário
    MOV AH, 1
    INT 21h
    MOV BL, AL                  ; Armazena a escolha em BL
    SUB BL, 30h                 ; Converte de ASCII para número (0-9)

    ; Decide qual base de conversão será utilizada
    CMP BL, 1
    JE converte_para_hexa

    CMP BL, 2
    JE converte_para_binario

    CMP BL, 3
    JE converte_para_decimal

    RET

converte_para_hexa:
    limpatela
    MOV AH, 9
    LEA DX, result_message
    INT 21h

    MOV CX, 4                   ; Quatro dígitos para hexadecimal
conversao_hexa_loop:
    ROR DX, 4                   ; Desloca 4 bits para pegar o próximo dígito
    AND DL, 0Fh                 ; Isola o dígito
    MOV AH, 02h                 ; Prepara para exibir caractere
    LEA BX, hex_digits
    ADD BL, DL
    MOV DL, [BX]                ; Pega o caractere da tabela
    INT 21h                     ; Exibe caractere
    LOOP conversao_hexa_loop
    RET

converte_para_binario:
    limpatela
    MOV AH, 9
    LEA DX, result_message
    INT 21h



    MOV CX, 16            ; Dezesseis bits para binário
conversao_binario_loop:
    shl DX, 1                   ; Desloca o bit mais significativo para a esquerda
    MOV DL, '0'
    JC set_um
    JMP display_binario
set_um:
    MOV DL, '1'
display_binario:
    MOV AH, 02h
    INT 21h
    LOOP conversao_binario_loop
    RET

converte_para_decimal:
    limpatela
    MOV AH, 9
    LEA DX, result_message
    INT 21h

    XOR BX, BX                  ; Zera BX para armazenar resultado
    MOV CX, 10
conversao_decimal_loop:
    DIV CX                      ; Divide o valor atual de DX por 10
    ADD DL, '0'                 ; Converte o valor em ASCII
    PUSH DX                     ; Armazena o dígito
    INC BX                      ; Incrementa contador de dígitos
    CMP AX, 0
    JNE conversao_decimal_loop

imprime_digitos_decimal:
    POP DX
    MOV AH, 02h
    INT 21h
    DEC BX
    JNZ imprime_digitos_decimal
    RET

Segunda_escolha ENDP

; ----------- FIM DOS PROCEDIMENTOS -----------

END MAIN
