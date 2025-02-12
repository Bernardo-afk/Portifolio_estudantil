.model small 

.data 
vetor db 8 dup(?)   ; vetor de 8 elementos
soma_res db ?        ; variável para armazenar a soma

.code 
main proc 

    mov ax, @data 
    mov ds, ax 

    call program     ; Preenche o vetor
    call soma        ; Calcula a soma dos elementos

    ; Exibe o resultado da soma
    mov al, soma_res  ; Carrega a soma no registrador AL
    add al, '0'       ; Converte para caractere ASCII (válido para somas < 10)
    mov dl, al
    mov ah, 2
    int 21h           ; Exibe a soma como caractere

    ; Finaliza o programa
    mov ah, 4ch 
    int 21h 

main endp 

; Procedimento para preencher o vetor
program proc 
    xor bx, bx
    xor si, si 

    lea si, vetor 

    mov cx, 8         ; Lê exatamente 8 elementos

leitura: 
    mov ah, 1
    int 21h 
    and al, 0fh       ; Extrai o valor numérico do caractere ASCII
    mov vetor[si], al 

    inc si 
    loop leitura 

    ret 
program endp 

; Procedimento para somar os elementos do vetor
soma proc 
    xor si, si        ; Reseta SI para o início do vetor
    xor bx, bx        ; Zera BX (acumulador da soma)

    lea si, vetor 
    mov cx, 8         ; Define a contagem de elementos

l1: 
    add bl, vetor[si] ; Soma cada elemento no registrador BL
    inc si
    loop l1 

    mov soma_res, bl  ; Armazena o resultado da soma em 'soma_res'

    ret 
soma endp 

end main 
