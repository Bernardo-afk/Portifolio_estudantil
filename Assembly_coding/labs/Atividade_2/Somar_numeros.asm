.model small 


.data 


msg1 db 10,13, 'Digite um primeiro numero: $'
msg2 db 10,13, 'Digite um segundo numero: $ '
msg3 db 10,13, 'A soma dos dois numeros eh: $'



.code 
main proc 
mov ax,@data 
mov ds,ax 



mov ah,9
lea dx, msg1 
int 21h 

mov ah,1 
int 21h 
mov bl,al 

sub bl,30h 

mov ah,9
lea dx, msg2 
int 21h 

mov ah,1 
int 21h 
sub al,30h
add bl,al 

add bl,30h

mov ah,9
lea dx, msg3 
int 21h 


mov ah,2 
mov dl,bl
int 21h 

main endp 
end main 