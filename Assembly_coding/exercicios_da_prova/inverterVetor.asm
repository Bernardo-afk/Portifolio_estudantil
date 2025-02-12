.model small 

.data               ;  xchg vetor[di], vetor[bx]   ; di primeira posição ; bx, ultima posição
 

vetor db 100 dup(?) 

.code 




main proc 


mov ax,@data
mov ds,ax 

call procedimento 
call inverte 

mov ah,4ch 
int 21h 


main endp 


procedimento proc 

xor si,si


mov ah,1 
l2: 

int 21h 
cmp al, 0dh 
je sai 
and al,0fh 

mov vetor[si],al 
inc si 
        jmp l2
sai: 
ret 
procedimento endp 

inverte proc 

xor di,di  

mov cx,si
dec cx
mov bx,cx     ; setando bx como ultimo elemento 


l1: 
    cmp di,bx ; compara se o valor inicial é maior ou igual ao numero final 
    ja fim_inversao 


   xchg vetor[di], vetor[bx]

        inc di

dec bx 

    jmp l1



fim_inversao:
ret 
inverte endp 



end main 