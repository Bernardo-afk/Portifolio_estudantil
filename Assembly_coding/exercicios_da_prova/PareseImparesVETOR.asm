.model small
.stack 100h
.data
    vetor db 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ; Vetor com 10 posições
    tamVetor equ 10                          ; Tamanho do vetor
    pares db 0                               ; Contador de números pares
    impares db 0                             ; Contador de números ímpares
    msgPares db 'Quantidade de números pares: $'
    msgImpares db 'Quantidade de números ímpares: $'
    msgValor db 'Valor: $'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Inicializar contadores
    mov cx, tamVetor     ; CX será o contador de posições do vetor
    mov si, 0            ; SI será o índice para percorrer o vetor

contar_numeros:
    mov al, vetor[si]    ; Carrega o valor do vetor[si] em AL
    mov ah, 0            ; Limpar AH para a divisão
    div byte ptr 2       ; AL = AL / 2

    cmp ah, 0            ; Verifica se o resto é 0
    je par               ; Se zero, o número é par
impar:
    inc impares          ; Incrementa o contador de ímpares
    jmp proximo
par:
    inc pares            ; Incrementa o contador de pares

proximo:
    inc si               ; Próxima posição no vetor
    loop contar_numeros  ; Decrementa CX e repete até CX = 0

    ; Exibir resultado dos pares
    mov dx, offset msgPares
    mov ah, 9h
    int 21h

    mov al, pares
    add al, '0'          ; Converter número para caractere ASCII
    mov dl, al
    mov ah, 2h           ; Função para mostrar caractere
    int 21h

    ; Pular para a linha seguinte
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    int 21h

    ; Exibir resultado dos ímpares
    mov dx, offset msgImpares
    mov ah, 9h
    int 21h

    mov al, impares
    add al, '0'          ; Converter número para caractere ASCII
    mov dl, al
    mov ah, 2h           ; Função para mostrar caractere
    int 21h

    ; Finalizar o programa
    mov ah, 4Ch
    int 21h
main endp
end main
