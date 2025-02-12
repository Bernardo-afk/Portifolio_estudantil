title atividade2
.model small
.stack 100h
.data
    msg db 10,13,'Digite um número binário: $'

.code
main:       
    mov ax, @data
    mov ds, ax

    ; Exibir mensagem
    lea dx, msg
    mov ah, 09h
    int 21h

    ; Inicializar BX como 0
    xor bx, bx

leitura:    
    ; Ler um caractere
    mov ah, 01h
    int 21h

    ; Verificar se o caractere é CR (valor ASCII 13)
    cmp al, 13
    je mostrarnumero

                                ; Verifica se o caractere é '0' ou '1'
    cmp al, '0'
    jb leitura  ; Se for menor que '0', lp
    cmp al, '1'
    ja leitura  ; Se for maior que '1', lp

    sub al, '0'        ; Converte caractere ASCII para valor binário

    shl bx, 1          ; Desloca BX para a esquerda
    mov ah, al      
    and ah, 1          ; Garantir que apenas o bit relevante seja usado ( mover até antes do ultimo bit considerado) 
    or  bl, ah         ; Usar  BL para combinar o valor

    jmp leitura

mostrarnumero: 
    
    mov cx, 16   ; delimitar binario de até 16 dígitos           

exibir_bits:
                                ; Rotacionar BX à esquerda
    rol bx, 1           ; Rotação à esquerda de BX (MSB --> CF)

    jc exibir_1         ; Se CF = 1, vai exibir '1'
    
    ; Else  CF = 0
    mov dl, '0'         ; Exibe '0'
    jmp exibir_caractere

exibir_1:
    mov dl, '1'         ; Exibe '1'

exibir_caractere:
    mov ah, 02         ; Mostrar caractere 
    int 21h             ; Exibe o caractere no monitor

    loop exibir_bits    ; volta para o loop inicial 

    ; Finalizar o programa
    mov ax, 4Ch       ; Finaliza o programa
    int 21h
end main




;;; observação : mesmo se o número inserido não tiver 16 dígitos, a "joga pra lá " vai fazer com que seja preenchido com
;;;                 0 os espaços ..... ex : entrada : 00101    , saída 0000000000000101