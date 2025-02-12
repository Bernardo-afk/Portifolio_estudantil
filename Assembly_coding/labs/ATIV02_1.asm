title ativ_um
.model small 
.data

letra db 'digite uma letra minuscula para coloca-la em maiuscula $'
maiuscula db 'a letra maiuscula e : $'



.code 
main proc 

mov Ax,@data   ;Acessar variáveis 
mov ds,ax


mov ah,9
lea dx ,letra    ; mostrar string 
int 21h

mov ah, 1    ; solicita digitação 
int 21h

mov bl,al   ; salvar o caractere

mov ah,2    ; pular uma linha 
mov dl,10
int 21h   

mov ah,9
lea dx, maiuscula    ; mostrar string
int 21h

mov ah,2 
sub bl,20h    ; mostrar o caractere digitado 
mov dl,bl
int 21h



mov ah,4ch       ; finalizar programa
int 21h


main endp
end main 
