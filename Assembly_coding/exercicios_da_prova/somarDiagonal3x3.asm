.model small 
.stack 100h 







.data

    matriz db 9 dup(?)
           

.code

main proc

            mov  ax,@data
            mov  ds,ax



            call program
            call mostrasoma 


            mov  ah,4ch
            int  21h



main endp


program proc


xor si,si 
lea si,matriz


mov cx,3 
l1:
push cx 

mov cx,3 

l2: 

mov ah,1 
int 21h 
and al, 0fh
mov matriz[si],al 

inc si 

loop l2 



mov ah,2 
mov dl,10
int 21h 

pop cx 

loop l1 


            ret

program endp

mostrasoma proc 
xor al,al 
xor si,si 
            mov cx,3 
        soma : 

        add al, matriz[si]
        add si,4
        loop soma 


            
    add al,30h

            leitura : 
            mov ah,2 
            mov dl,al 
            int 21h 
ret
mostrasoma endp 


end main 