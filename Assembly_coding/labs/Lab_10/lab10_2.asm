.model small
.stack 100h

; Macro para somar elementos da matriz
m1 MACRO
         mov al, matriz[si]
         add bl, al
ENDM

.data
    msg     db 10, 13, "A soma é: $"
    matriz  db 16 dup(?)
    somaStr db '00'  , 0                ; Espaço para 2 dígitos e terminador

.code

main proc
              mov  ax, @data
              mov  ds, ax

              call ler
              call soma
              call imprimir

              mov  ah, 4ch
              int  21h
main endp

ler proc
              xor  si, si
              mov  cx, 16
    l1:       
              mov  ah, 1
              int  21h
              and  al, 0fh             ; Pega apenas os 4 bits menos significativos
              mov  matriz[si], al
              inc  si
              loop l1
              ret
ler endp

imprimir proc
              mov  ah, 9
              lea  dx, msg
              int  21h

              mov  ax, bx              ; Move a soma para AX
              xor  cx, cx              ; Contador de dígitos
              mov  dx, 0               ; Limpa DX

    conv_loop:
              xor  dx, dx
              mov  bx, 10
              div  bx
              push dx
              inc  cx
              test ax, ax
              jnz  conv_loop

              mov  di, 0               ; Índice para a string
    pop_loop: 
              pop  dx
              add  dl, '0'
              mov  somaStr[di], dl
              inc  di
              loop pop_loop

              mov  somaStr[di], '$'    ; Termina a string
              mov  ah, 9
              lea  dx, somaStr
              int  21h                 ; Exibe a soma

              ret
imprimir endp

soma proc
              xor  bx, bx              ; Zera o registrador para a soma
              xor  si, si              ; Zera o índice da matriz
              mov  cx, 16              ; Número de elementos

    ll:       
              m1                       ; Chama o macro para somar
              inc  si                  ; Incrementa o índice
              loop ll                  ; Repete até que CX chegue a 0

              ret
soma endp

end main