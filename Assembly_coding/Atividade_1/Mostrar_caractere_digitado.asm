
.model small 

.data 

msg1 db 10,13, 'Insira um caractere : $'
msg2 db 10,13, 'O caractere digitado foi : $'

.code 

main proc

mov ax,@data 
mov ds,ax 

mov ah,9 
lea dx,msg1 
int 21h 

mov ah,1
int 21h 
mov bl,al

mov ah,9 
lea dx, msg2
int 21h 


mov ah,2 
mov dl,bl 
int 21h 

main endp 
end main 