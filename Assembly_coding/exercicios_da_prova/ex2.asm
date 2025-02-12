.model small 
.stack 100h 


.data 

matriz db 16(?) 

.code 


main proc 


mov ax,@data 
mov ds,ax 




call entrada 
call diagonal 

mov ah,4ch 
int 21h 



entrada proc 

xor si,si ;linha 


mov cx,16 

l1: 
mov ah,1
int 21h 
          mov matriz[si],al    ;  move para al o valor desejado 
          inc si
loop l1 
ret 
entrada endp 

diagonal proc 
xor si,si 

mov cx,4
l11: 
mov al, matriz[si]

or al ,0fh 
mov ah,2 
int 21h 

add si,4
loop l11

ret
diagonal endp 


main endp 
end main 