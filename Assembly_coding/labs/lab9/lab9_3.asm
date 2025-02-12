TITLE INVERTE_VETOR
.model small
.stack 100h
.data
    MSG1 db 10,13,"Digite os valores do vetor (entre 0 e 9): $"
    MSG2 db 10,13,"O vetor digitado foi: $"
    MSG3 db 10,13,"O vetor após ser invertido: $"
    vetor db 7 DUP(?)

.code
    MAIN PROC
        
    mov ax,@data
    mov ds,ax  ; Configura o segmento de dados

    xor si,si  ; Inicializa SI como 0 (usado como índice do vetor)

    obterVetor:  ; Loop para obter os valores do vetor
        
        mov ah,9
        lea dx,MSG1  ; Exibe a mensagem para inserção de dados
        int 21h

        mov ah,1
        int 21h  ; Lê um caractere do teclado

        mov vetor[si],al  ; Armazena o valor digitado no vetor
        inc si  ; Move para a próxima posição do vetor

        cmp si,6  ; Verifica se todos os elementos foram inseridos
        jbe obterVetor  ; Continua obtendo valores até preencher o vetor

    lea dx,MSG2
    mov ah,9  ; Exibe a mensagem mostrando o vetor inserido
    int 21h

    xor si,si  ; Reinicializa SI para percorrer o vetor
    mov ah,2  ; Função de impressão de caractere

    imprime_Vetor:  ; Loop para imprimir o vetor

        mov dl,vetor[si]  ; Carrega o valor do vetor em DL
        int 21h  ; Imprime o valor
        inc si  ; Avança para a próxima posição do vetor

        cmp si,6  ; Verifica se todos os elementos foram impressos
        jbe imprime_Vetor  ; Continua imprimindo até o fim do vetor

        cmp cx,1  ; Verifica se o programa deve encerrar
        je fim  ; Vai para o fim se for o caso

    xor si,si
    xor di,di  ; Reinicializa SI e DI (índices)

    mov di,6  ; DI aponta para a última posição do vetor
    xor dx,dx  ; Limpa DX

    inverte_Vetor:  ; Loop para inverter o vetor

        mov dl,vetor[si]  ; Carrega o valor da posição atual de SI em DL
        mov dh,vetor[di]  ; Carrega o valor da posição atual de DI em DH

        mov vetor[si],dh  ; Substitui o valor de SI com o de DI
        mov vetor[di],dl  ; Substitui o valor de DI com o de SI

        inc si  ; Avança para a próxima posição do início do vetor
        dec di  ; Avança para a próxima posição do final do vetor

        cmp si,3  ; Verifica se já chegou no meio do vetor
        jbe inverte_Vetor  ; Continua invertendo até chegar ao meio

    xor si,si
    xor dx,dx  ; Limpa os registradores para a impressão do vetor invertido

    lea dx, msg3
    mov ah,9
    int 21h  ; Exibe a mensagem informando o vetor invertido

    mov ah,2
    mov cx,1  ; Prepara para imprimir o vetor invertido
    jmp imprime_Vetor  ; Chama a rotina de impressão do vetor

    fim:  ; Fim do programa

    mov ah,4ch
    int 21h  ; Interrupção para encerrar o programa

    main endp
    end main
