;Faça um programa que conte quantas letras “A” tem em um
;nome guardado num vetor de tamanho 20

.model small 

.data 

vet db 'olAAlguemQuerAAAAA' ; 7 A's


.code 


main proc 
mov ax,@data 
mov ds,ax 



call processo 

mov ah,4ch 
int 21h 

processo proc

xor ax,ax 


lea si,vet

mov cx,20
l1: 

mov al, [si]
cmp al,'A'
jne skip 
inc bl 

skip: 
 inc si 
loop l1 


add bl,30h 
mov ah,2
mov dl,bl  
int 21h 



ret 
processo endp



main endp 
end main 



