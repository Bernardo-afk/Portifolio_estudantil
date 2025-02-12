TITLE atividadeTres
.MODEL SMALL

.DATA

pergunta DB 'Digite um caracter $'
resposta DB 'O caractere digitado foi :  $'

.CODE

main PROC

 mov AX,@DATA ; Acessa as variáveis
 mov DS,AX

mov AH,9   ; chamar função de escrever algo 
LEA DX, pergunta ; mostra a string "pergunta"
INT 21h

MOV AH,1   ; pedir para digitar algo 
INT 21h

MOV BL,AL ; Salvar o caractere

; pular linha 
mov AH,2     
mov DL,10    ; espaço 
int 21h


mov AH,9      ;chama função de escrever
LEA DX, resposta ; mostrar a string "resposta"
int 21h

mov AH, 2 ; mostrar o caractere digitado 
mov DL,BL
int 21h;

main ENDP 
end main


