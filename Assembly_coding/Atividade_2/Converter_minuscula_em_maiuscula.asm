.model small 


.data 
msg db 10,13, 'Digite uma letra minuscula : $'
msg2 db 10,13, 'A letra maiuscula eh : $'


.code 

main proc 
mov ax,@data 
mov ds,ax 


mov ah,9 
lea dx,msg 
int 21h 

mov ah,1 
int 21h 
mov bl,al 

sub bl,20h


mov ah,9 
lea dx,msg2 
int 21h 


mov ah,2 
mov dl,bl 
int 21h 

mov ah,4Ch 
int 21h 

main endp 
end main 
