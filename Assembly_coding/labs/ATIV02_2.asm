Title ativ_dois

.model small 
.data

numeroum db 'digite o primeiro numero de 0 a 9  $'
numerodois db 'digite o segundo numero  de 0 a 9  $'
 soma db 'a soma do primeiro numero com o segundo == $'

.code 



main proc 

mov ax,@data
mov ds,ax                ; acessar as variaveis 

;;;;;;; ler 1 numero 
mov ah,9
LEA DX , numeroum  ; mostrar tring
int 21h

mov ah,1    ; pedir caractere
int 21h

mov bl,al    ;salvar 1 numero 
sub bl,30h

mov ah,2
mov dl,10  ; pular linha 
int 21h 

;;;;;;;; ler 2 numero 

mov ah,9
LEA dx , numerodois    ; mostar string
int 21h

mov ah,1    ; pedir caractere 
int 21h

mov cl,al    ; salvar caractere 
sub cl,30h

mov ah,2
mov dl,10 ;      pular linha 
int 21h

;;;;;;;; SOMA 

mov ah,9
lea dx, soma ; mostrar a string soma 
int 21h 


add cl,bl    ; somar numeros 
mov dl,cl
add dl,30h
mov ah,2    ; mostrar a soma 

int 21h

mov ah,4ch       ; finalizar programq 
int 21h

main endp
end main 


