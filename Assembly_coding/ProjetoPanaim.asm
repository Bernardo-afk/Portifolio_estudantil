.model small 
.stack 100h   


; ----------------------------------------------------------- ; 
;                       Macros                               ; 
; ---------------------------------------------------------- ; 

Push_all macro      ; Macro para push em todos os registradores
           push ax
           push BX
           push cx
           push Dx
           push si
           push di
endm

pop_all macro     ; Macro para pop em todos os registradores
          pop di
          pop si
          pop dx
          pop cx
          pop bx
          pop ax
endm

move_XY macro x,y        ;Macro para pocionar o cursor numa posicao desejada

          push_all

          mov      ah,2
          mov      dh,y
          mov      dl,x
          int      10h

          pop_all
endm


; ----------------------------------------------------------- ; 
;                   Fim Macros                               ; 
; ---------------------------------------------------------- ; 


.data
  ; ----------------------------------------------------------- ;
  ;                       Interface                             ;
  ; ----------------------------------------------------------- ;

  ;---------------------------------------------;
  ;           Inicial                           ;
  ;---------------------------------------------;

  ; Imagem inicial
  D1                       DB   '                              O  O  O$'
  D2                       DB   '                                      O$'
  D3                       DB   '                                     __|__$'
  D4                       DB   '                                     || ||_____$'
  D5                       DB   '                                     || ||    |$'
  D6                       DB   '                          --------------------------$'
  D7                       DB   '                           \   O   O   O   O      /$'
  D8                       DB   '                       ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~$'
  D9                       DB   '                       _____ _____ _____ _____ __    _____ _____  $'
                           D10  DB'                      | __  |  _  |_   _|  _  |  |  |  |  |  _  | $'
                           D11  DB'                      | __ -|     | | | |     |  |__|     |     | $'
                           D12  DB'                      |_____|__|__| |_| |__|__|_____|__|__|__|__| $'
                           D13  DB'                       _____ _____ _____ _____ __  $'
                           D14  DB'                      |   | |  _  |  |  |  _  |  | $'
                           D15  DB'                      | | | |     |  |  |     |  |__$'
                           D16  DB'                      |_|___|__|__|\___/|__|__|_____|$'

  INSERT_COIN              DB   '                         INSERT YOUR COIN - PRESS ENTER $'
  ; fim Imagem inicial



  ; parametro que cria uma linha em branco
  LINHA_L                  DB   13,10,'$'

  Ask_linha                db   10,13, ' digite a linha da matriz (0-9) : $'
  Ask_coluna               db   10,13, ' digite a coluna da matriz (A-J) : $'

  Acertou_tiro             db   10,13, ' Navil acertado$'
  Errou_tiro               db   10,13, 'Agua acertada $'

  ;---------------------------------------------;
  ;  Campo do jogo                             ;
  ;---------------------------------------------;



  mapa                     db   '|_|_|_|_|_|_|_|_|_|_| A', 13, 10
                           db   '|_|_|_|_|_|_|_|_|_|_| B', 13, 10
                           db   '|_|_|_|_|_|_|_|_|_|_| C', 13, 10
                           db   '|_|_|_|_|_|_|_|_|_|_| D', 13, 10
                           db   '|_|_|_|_|_|_|_|_|_|_| E', 13, 10
                           db   '|_|_|_|_|_|_|_|_|_|_| F', 13, 10
                           db   '|_|_|_|_|_|_|_|_|_|_| G', 13, 10
                           db   '|_|_|_|_|_|_|_|_|_|_| H', 13, 10
                           db   '|_|_|_|_|_|_|_|_|_|_| I', 13, 10
                           db   '|_|_|_|_|_|_|_|_|_|_| J', 13
                           db   '$'

  underline                db   10,13, '_____________________$'
   

  variavel_de_soma_coluna  db   0
  variavel_de_letra        db   41h                                                                                    ; iniciar variavel com a letra 'A' ( para comparação futura )
 

  next_try                 db   10,13 ,'PRESS ENTER TO NEXT TRY $'

  sair_em_qualquer_momento db   10,13, 'PRESS X to exit$'



  numeros_linha            db   ' 0 1 2 3 4 5 6 7 8 9 $'

  contador_saber_se_venceu db   19



  msg_invalido             db   'numero invalido, digite novamente. $'


  ;---------------------------------------------;
  ;  Nivel EASY                                 ;
  ;---------------------------------------------;


  MATRIZEASY               DB   1,1,1,1,0,0,0,0,0,0                                                                    ; A
                           DB   0,0,0,0,0,1,1,1,0,0                                                                    ; B
                           DB   0,1,1,0,0,0,0,0,0,0                                                                    ; C
                           DB   0,0,0,0,0,0,0,0,0,0                                                                    ; D
                           DB   0,0,0,1,1,0,0,0,0,0                                                                    ; E
                           DB   0,0,0,0,0,0,0,0,0,0                                                                    ; F
                           DB   0,1,0,0,0,0,0,1,0,0                                                                    ; G
                           DB   0,1,1,0,0,0,1,1,0,0                                                                    ; H
                           DB   0,1,0,0,0,0,0,1,0,0                                                                    ; I
                           DB   0,0,0,0,0,0,0,0,0,0                                                                    ; J

 





  ;---------------------------------------------;
  ;  Nivel MEDIUM                               ;
  ;---------------------------------------------;



  MATRIZMEDIUM             DB   0,1,1,1,0,0,1,0,0,0                                                                    ; A
                           DB   0,0,1,0,0,0,1,0,0,0                                                                    ; B
                           DB   0,0,0,0,0,0,1,0,0,0                                                                    ; C
                           DB   0,0,0,0,0,0,0,0,0,0                                                                    ; D
                           DB   1,0,0,1,1,0,0,0,0,0                                                                    ; E
                           DB   1,0,0,0,0,0,0,0,0,0                                                                    ; F
                           DB   0,0,0,0,0,0,0,1,0,0                                                                    ; G
                           DB   0,0,0,0,0,0,0,1,1,0                                                                    ; H
                           DB   0,0,0,0,0,0,0,1,0,0                                                                    ; I
                           DB   0,1,1,1,1,0,0,0,0,0                                                                    ; J






  ;---------------------------------------------;
  ;  Nivel HARD                               ;
  ;---------------------------------------------;


 


  MATRIZHARD               DB   0,0,0,0,0,1,0,0,0,0                                                                    ; A
                           DB   1,0,0,0,0,1,0,0,0,1                                                                    ; B
                           DB   1,0,0,0,0,1,0,0,0,1                                                                    ; C
                           DB   0,0,0,0,0,0,0,0,0,1                                                                    ; D
                           DB   0,0,0,1,1,0,0,0,0,1                                                                    ; E
                           DB   0,0,0,0,0,0,0,0,0,0                                                                    ; F
                           DB   0,0,0,0,0,0,0,0,0,1                                                                    ; G
                           DB   0,0,0,0,0,0,0,0,1,1                                                                    ; H
                           DB   0,0,1,0,0,0,0,0,0,1                                                                    ; I
                           DB   0,1,1,1,0,0,0,0,0,0                                                                    ; J




  ; ---------------------------------------------;
  ;  Nivel UNCRUMBLE                               ;
  ;---------------------------------------------;


  MATRIZUNCRUMBLE          DB   0,1,0,0,0,0,0,0,1,1                                                                    ; A
                           DB   0,1,0,0,1,1,1,,0,0                                                                     ; B
                           DB   0,1,0,0,0,0,0,0,0,0                                                                    ; C
                           DB   0,1,0,0,0,0,1,1,0,0                                                                    ; D
                           DB   0,0,0,0,0,0,0,0,0,0                                                                    ; E
                           DB   0,0,0,0,0,0,0,0,0,0                                                                    ; F
                           DB   0,1,0,0,0,0,1,0,0,0                                                                    ; G
                           DB   1,1,0,0,0,1,1,1,0,0                                                                    ; H
                           DB   0,1,0,0,0,0,0,0,0,0                                                                    ; I
                           DB   0,0,0,0,0,0,0,0,0,0                                                                    ; J

 








  ;---------------------------------------------;
  ;  Interfaçe Final ]                          ;
  ;---------------------------------------------;




                           FIM1 DB'                            _______   __    __________        $'
                           FIM2 DB'                           |   ____| |  |  |          |       $'
                           FIM3 DB'                           |   |___  |  |  |   |  |   |       $'
                           FIM4 DB'                           |   ____| |  |  |   |  |   |       $'
                           FIM5 DB'                           |   |     |  |  |   |  |   |       $'
                           FIM6 DB'                           |___|     |__|  |___|__|___|       $'


  Agradecimento            db   '                         Obrigado por jogar, volte sempre ! $'

  Agradecimento2           db   '                         Parabens por vencer o jogar, volte sempre ! $'

  Agradecimento3           db   '                     Boa tentativa, porem voce perdeu o jogo, volte sempre ! $'

  TAKE_TIME                db   '                                 PRESS ANYTHING TO EXIT      $'



  ; parametro de saida do jogo
  PRESS_EXIT               DB   '                                                 EXIT GAME - PRESS G        $'
  PRESS_RULES              DB   '                                                  SHOW THE RULES - PRESS R        $'


  ; Regras

  REGRA1                   db   ' 1 - Ao todo sao 6 navios que o usuario tem que derrubar, ou seja 19 coordenadas $'
  REGRA2                   db   ' 2 - Apos selecionar o nivel, Digite a coordenada que deseja atacar $'
  REGRA3                   db   ' 3 - Caso queira sair do jogo, quando aparecer a mensagem , precione "x" $'
  REGRA4                   db   ' 4 - Caso voce acerte as 19 posicoes, voce ira vencer          $'
  REGRA5                   db   ' 5 - No final, ha opcao de acabar com o jogo         $'
  REGRA6                   db   ' 6 - Para mais informacoes leia o manual do usuario, bom jogo         $'



  ; niveis

  Select_level             db   '                          Select The Level  $'
  NIVEL1                   db   '                          1 - Easy          $'
  NIVEL2                   db   '                          2 - Medium        $'
  NIVEL3                   db   '                          3 - Hard          $'
  NIVEL4                   db   '                          4 - Uncrumble mode$'
 







.code

  ; ----------------------------------------------------------- ;
  ; Espaço dedicado para o main                                 ;
  ; ----------------------------------------------------------  ;


main proc

                           mov      ax,@data                     
                           mov      ds,ax

                           call     limpatela

                           move_XY  1,3                           ; reposicionar cursor
                     
                           call     tela_inicial
                           move_XY  1,3                          

                           call     Vefica_CR_RULES

                           call     Level_select



                           mov      ah,4ch
                           int      21h


main endp



  ; ----------------------------------------------------------- ;
  ;                        FINAL DO main                        ;
  ; ----------------------------------------------------------- ;




  ; ----------------------------------------------------------- ;
  ; Espaço dedicado para colocar os procedimentos               ;
  ; ---------------------------------------------------------- ;


  ;---------------------------------------------;
  ;           Procedimentos visuais             ;
  ;---------------------------------------------;

  ; rotina para limpar tela
limpatela proc

 
                           push_all

                           MOV      AH,0
                           MOV      AL,3
                           INT      10H

                           pop_all



                           ret
limpatela endp

  ;tela inicial ( imprimir )
tela_inicial proc

  ;Desenho de inicio de jogo
                           MOV      AH,9
                           LEA      DX,D1
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
 
                           MOV      AH,9
                           LEA      DX,D2
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
 
                           MOV      AH,9
                           LEA      DX,D3
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
 
                           MOV      AH,9
                           LEA      DX,D4
                           INT      21H
 
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
 
                           MOV      AH,9
                           LEA      DX,D5
                           INT      21H
 
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
 
                           MOV      AH,9
                           LEA      DX,D6
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
 
                           MOV      AH,9
                           LEA      DX,D7
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
 
                           MOV      AH,9
                           LEA      DX,D8
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
 
                           MOV      AH,9
                           LEA      DX,D8
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
 
  ;BARCO
                           MOV      AH,9
                           LEA      DX,D9
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
                           MOV      AH,9
                           LEA      DX,D10
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
                           MOV      AH,9
                           LEA      DX,D11
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
                           MOV      AH,9
                           LEA      DX,D12
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
                           MOV      AH,9
                           LEA      DX,D13
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
                           MOV      AH,9
                           LEA      DX,D14
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
                           MOV      AH,9
                           LEA      DX,D15
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
                           MOV      AH,9
                           LEA      DX,D16
                           INT      21H
                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H
 

                           MOV      AH,9
                           LEA      DX,LINHA_L
                           INT      21H

                           mov      ah,9
                           lea      dx, INSERT_COIN
                           int      21h

                           mov      ah,9
                           lea      dx, PRESS_RULES
                           int      21h


                           mov      ah,9
                           lea      dx, PRESS_EXIT
                           int      21h








                           ret
tela_inicial endp

  ; pede entrada e verifica se é CR
Vefica_CR_RULES proc
 
                           MOV      AH, 01h                      ; Função para ler entrada de um caractere
  Espera:                  
                           INT      21h                          ; Chama interrupção para receber caractere
                           cmp      AL,'g'
                           je       acaba                        ;caso o usuario insira a letra 'g' sai do jogo
    
                           cmp      AL,'r'                       ;caso o usuario insira a letra 'r' mostra as regras do jogo
    
                           je       regra
    


                           CMP      AL, 0Dh                      ; Compara se é "CR" (ASCII 13)
                           JZ       limparateladousuario         ; Se for "CR", salta para o fim e sai do procedimento
                           JMP      Espera                       ; Caso contrário, continua esperando entrada
    

  acaba:                   
                           call     end_game
    

  regra:                   
                           call     RULES

                           jmp      skipverifycr

  limparateladousuario:    

                           call     limpatela


  skipverifycr:            


                           RET                                   ; Sai do procedimento

Vefica_CR_RULES endp


RULES proc

                           call     limpatela

                           move_XY  10,20

  ; MOSTRAR AS REGRAS
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ax, 1112h                    ; diminuir o tamanho da letra
                           int      10h
                           mov      ah,9
                           lea      dx, REGRA1
                           int      21h


                           lea      dx, LINHA_L
                           mov      ah,9
                           int      21h



                           mov      ah,9
                           lea      dx,REGRA2
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h
                    

                           mov      ah,9
                           lea      dx,REGRA3
                           int      21h
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h
        

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,REGRA4
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,REGRA5
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h



                           mov      ah,9
                           lea      dx, REGRA6
                           int      21h
     
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, INSERT_COIN
                           int      21h

                           mov      ah,9
                           lea      dx, PRESS_EXIT
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           call     Vefica_CR_RULES

                           ret

RULES endp

Level_select proc

  inicio_lvls:             

                           call     limpatela

                           call     limpatela

                           move_XY  10,20

  ; MOSTRAR AS REGRAS
                           mov      ax, 1112h                    ; diminuir o tamanho da letra
                           int      10h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, Select_level
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx,NIVEL1
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,NIVEL2
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,NIVEL3
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,NIVEL4
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                        
                           jmp      perg


    ; manda a mensagem que o numero encontrado nao existe e fala para digitar novamnete, so ira passar caso o usuario digite uma opção valida
  perg_erro:               

                           move_XY  21,18

                           mov      ah, 9
                           lea      dx, msg_invalido
                           int      21h
                           
                           mov      ah, 1
                           int      21h

                           cmp      al,'1'
                           je       lvl1

                           cmp      al,'2'
                           je       lvl2

                           cmp      al,'3'
                           je       lvl3

                           cmp      al,'4'
                           je       lvl4
                            
                           jmp      invalido
                           jmp      inicio_lvls

  ;qnd digitado o numero pula para a fase que o usuario deeseja
  perg:                    
                           mov      ah,1
                           int      21h

                           cmp      al,'1'
                           je       lvl1

                           cmp      al,'2'
                           je       lvl2

                           cmp      al,'3'
                           je       lvl3

                           cmp      al,'4'
                           je       lvl4

                           jmp      invalido


  lvl1:                    
                           call     GAME_INTERFACE_EASY
                           jmp      saidaqui


  lvl2:                    
                           call     GAME_INTERFACE_MEDIUM
                           jmp      saidaqui

  lvl3:                    
                           call     GAME_INTERFACE_HARD
                           jmp      saidaqui

  lvl4:                    
                           call     GAME_INTERFACE_UNCRUMBLE
                           jmp      saidaqui

  invalido:                
                            
                        
                           loop     perg_erro

  saidaqui:                

                           ret
Level_select endp

  
  ; ----------------------------------------------------------- ;
  ;                        the game                           ;
  ; ---------------------------------------------------------- ;
  


imprimir_mapa proc

                           push_all

 
                           mov      ah,9
                           lea      dx , LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx , numeros_linha
                           int      21h


                           mov      ah,9
                           lea      dx ,underline
                           int      21h

  
                           mov      ah,9
                           lea      dx , LINHA_L
                           int      21h



                           mov      ah, 09h
                           lea      dx, mapa                     ; imprime o mapa
                           int      21h



                           pop_all

                           ret
imprimir_mapa endp


visual_errou proc

                           push_all
 

                           lea      bx,mapa



                           add      bx,si                        ; adds para pegar a posição na linha
                           add      bx,si



                           add      bx,1                         ; passar para posição do quadradinho
                           add      bl,variavel_de_soma_coluna

                           mov      byte ptr [bx], '~'           ;Quando o usuario acerta a agua ele mostrara esse caractere no mapa
                           mov      byte ptr [bx-1], '|'
                           mov      byte ptr [bx+1], '|'      ; reajustar a grade
                           

                           call     limpatela
                           call     imprimir_mapa

                           mov      ah,9
                           lea      dx,Errou_tiro
                           int      21h



                           pop_all


                           ret
visual_errou endp


visual_acertou proc

                           push_all
  
                           sub      contador_saber_se_venceu,1
                           lea      bx,mapa


                           add      bx,si                        ; adds para pegar a posição na linha
                           add      bx,si



                           add      bx,1                         ; passar para posição do quadradinho
                           add      bl,variavel_de_soma_coluna

                           mov      byte ptr [bx], 11011100b     ;Quando o usuario acerta a agua ele mostrara esse caractere no mapa(um quadrado)
                           mov      byte ptr [bx-1], 11011100b
                           mov      byte ptr [bx+1], 11011100b

                           call     limpatela
                           call     imprimir_mapa

                           mov      ah,9
                           lea      dx,Acertou_tiro
                           int      21h







                           pop_all

                           ret
visual_acertou endp



  
  ;todas as fases possuem a mesma logica porem a unica mudança são as quantidades de chances do usuario
GAME_INTERFACE_EASY proc
                           xor      cx,cx
                           mov      cx,30                        ;quantidade de chances do usuario nesta fase

                       
  l1:                      

                           xor      bx,bx
                           xor      si,si


                           call     limpatela
                           call     imprimir_mapa

  ;pergunta as coordenadas
                           mov      ah,9
                           lea      dx, Ask_linha
                           int      21h

                           mov      ah,1
                           int      21h
                           mov      si,ax
                           and      si,0fh                       ; supondo que si = 1
  ; si já está salvo



                           mov      ah,9
                           lea      dx , Ask_coluna
                           int      21h

                           mov      ah,1
                           int      21h




  confere_coluna:          


                           cmp      al, variavel_de_letra        ;compara o caractere que o usuario digitou com a letra 'A'
                           je       mostra_posição
                           
  ;caso seja igual ele ja ira direto para mostrar no mapa, porem se for diferente ele soma 25(quantidade de caracteres que exisstem em cada linha no mapa) para pula para a proxima linha

                           inc      variavel_de_letra
                           add      variavel_de_soma_coluna,25   ; 0 25 50 75 100 125
                           add      bx,10

                           jmp      confere_coluna


mostra_posição:


                           mov      al,MATRIZEASY[si+bx]         ;  move para al o valor desejado

                           cmp      al,1
                           je       acertou                      ;caso a coordenada digitada seja igual a 1 o usuario acertou caso o contrario ele errou

     
                           call     visual_errou

                           jmp      skip
       


  acertou:                 
  ;mostra mensagem de acerto
                           call     visual_acertou
                    



  skip:                    

                           mov      variavel_de_soma_coluna,0
                           mov      variavel_de_letra,41h
                          



                           call     feedback

           
                      
                  
                          
                           mov      ah,1
                           int      21h

                           cmp      al,'x'
                           je       saidaqui2





                           dec      cx
                           cmp      cx,0
                           je       saidaqui22                   ; decrementar o 'loop'
                           jmp      l1

  saidaqui2:               

                           call     end_game
  saidaqui22:              

                           call     lost_game
                           ret

GAME_INTERFACE_EASY endp


  ; interface medium

GAME_INTERFACE_MEDIUM proc

                           xor      cx,cx



                           mov      cx,25

  l2:                      

                           xor      bx,bx
                           xor      si,si


                           call     limpatela
                           call     imprimir_mapa


                           mov      ah,9
                           lea      dx, Ask_linha
                           int      21h

                           mov      ah,1
                           int      21h
                           mov      si,ax
                           and      si,0fh                       ; supondo que si = 1
  ; si já está salvo



                           mov      ah,9
                           lea      dx , Ask_coluna
                           int      21h

                           mov      ah,1
                           int      21h




  confere_coluna2:         


                           cmp      al, variavel_de_letra
                           je       mostra_posição2

                           inc      variavel_de_letra
                           add      variavel_de_soma_coluna,25   ; 0 25 50 75 100 125
                           add      bx,10

                           jmp      confere_coluna2


mostra_posição2:


                           mov      al,MATRIZMEDIUM[si+bx]       ;  move para al o valor desejado

                           cmp      al,1
                           je       acertou2

     
                           call     visual_errou

                           jmp      skip2
       


  acertou2:                
                           call     visual_acertou



  skip2:                   

                           mov      variavel_de_soma_coluna,0
                           mov      variavel_de_letra,41h
                      

                           call     feedback

                                 
                           mov      ah,1
                           int      21h

                           cmp      al,'x'
                           je       saidaqui3





                           dec      cx
                           cmp      cx,0
                           je       saidaqui33                   ; decrementar o 'loop'
                           jmp      l1

  saidaqui3:               

                           call     end_game


  saidaqui33:              

                           call     lost_game
                           ret
GAME_INTERFACE_MEDIUM endp


  ; interface hard

GAME_INTERFACE_HARD proc
                 
                           xor      cx,cx



                           mov      cx,23

  l3:                      

                           xor      bx,bx
                           xor      si,si


                           call     limpatela
                           call     imprimir_mapa


                           mov      ah,9
                           lea      dx, Ask_linha
                           int      21h

                           mov      ah,1
                           int      21h
                           mov      si,ax
                           and      si,0fh                       ; supondo que si = 1
  ; si já está salvo



                           mov      ah,9
                           lea      dx , Ask_coluna
                           int      21h

                           mov      ah,1
                           int      21h




  confere_coluna3:         


                           cmp      al, variavel_de_letra
                           je       mostra_posição3

                           inc      variavel_de_letra
                           add      variavel_de_soma_coluna,25   ; 0 25 50 75 100 125
                           add      bx,10

                           jmp      confere_coluna3


mostra_posição3:


                           mov      al,MATRIZHARD[si+bx]         ;  move para al o valor desejado

                           cmp      al,1
                           je       acertou3

     
                           call     visual_errou

                           jmp      skip3
       


  acertou3:                
                           call     visual_acertou



  skip3:                   

                           mov      variavel_de_soma_coluna,0
                           mov      variavel_de_letra,41h
                         

                           call     feedback



    


  skphere1:                







                           mov      ah,1
                           int      21h

                           cmp      al,'x'
                           je       saidaqui4





                           dec      cx
                           cmp      cx,1
                           je       saidaqui44                   ; decrementar o 'loop'
                           jmp      l1


  saidaqui44:              
                           call     lost_game

  saidaqui4:               

                           call     end_game





                           mov      ah,0
                           int      16h                          ; trap

                           ret
GAME_INTERFACE_HARD endp

  ; interface uncrumble do game

GAME_INTERFACE_UNCRUMBLE proc
                           xor      cx,cx



                           mov      cx,19

  l4:                      

                           xor      bx,bx
                           xor      si,si


                           call     limpatela
                           call     imprimir_mapa


                           mov      ah,9
                           lea      dx, Ask_linha
                           int      21h

                           mov      ah,1
                           int      21h
                           mov      si,ax
                           and      si,0fh                       ; supondo que si = 1
  ; si já está salvo



                           mov      ah,9
                           lea      dx , Ask_coluna
                           int      21h

                           mov      ah,1
                           int      21h




  confere_coluna4:         


                           cmp      al, variavel_de_letra
                           je       mostra_posição4

                           inc      variavel_de_letra
                           add      variavel_de_soma_coluna,25   ; 0 25 50 75 100 125
                           add      bx,10

                           jmp      confere_coluna4


mostra_posição4:


                           mov      al,MATRIZUNCRUMBLE[si+bx]    ;  move para al o valor desejado

                           cmp      al,1
                           je       acertou4

     
                           call     visual_errou

                           jmp      skip4
       


  acertou4:                
                           call     visual_acertou



  skip4:                   





                           mov      variavel_de_soma_coluna,0
                           mov      variavel_de_letra,41h
                      

                           call     feedback


                                    
                           mov      ah,1
                           int      21h

                           cmp      al,'x'
                           je       saidaqui5





                           dec      cx
                           cmp      cx,0
                           je       saidaqui5                    ; decrementar o 'loop'
                           jmp      l1

  skipall:                 
                           mov      ah,4ch

  saidaqui5:               

                           call     lost_game

                           ret
GAME_INTERFACE_UNCRUMBLE endp



  ; ----------------------------------------------------------- ;
  ;                        Fim Procedimentos                    ;
  ; ---------------------------------------------------------- ;

feedback proc
  ; proc destinado ao feedback das ações de atirar /errar
                           push_all
 

                           cmp      contador_saber_se_venceu,0
                           je       winer

       

                           jmp      continua

  winer:                   

                           call     win_game




  continua:                







                           mov      ah,9
                           lea      dx,LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx , next_try
                           int      21h


                           mov      ah,9
                           lea      dx,sair_em_qualquer_momento
                           int      21h


                           pop_all

                           ret
feedback endp


  ; ----------------------------------------------------------- ;
  ;                        FINAL DO JOGO                       ;
  ; ---------------------------------------------------------- ;


end_game proc

                           call     limpatela

                           move_XY  10,7                         ; mover cursor para altura desejada ( começar a imprimir no meio do programa )

  ; todos os mov ah,9 são destinados ao visual do final do programa
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, FIM1
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM2
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM3
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM4
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM5
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, FIM6
                           int      21h
     
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, Agradecimento
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,  TAKE_TIME
                           int      21h




                           mov      ah,1
                           int      21h
                           mov      bl,al
                           move_XY  80,25                        ; mover cursor lá para baixo

                           cmp      al,'g'
                           je       finaldojogo

                           int      3


  finaldojogo:             
                           mov      ah,4ch
                           int      21h

                           ret
end_game endp



win_game proc

                           call     limpatela

                           move_XY  1,9                          ; mover cursor para altura desejada ( começar a imprimir no meio do programa )

  ; todos os mov ah,9 são destinados ao visual do final do programa
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, FIM1
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM2
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM3
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM4
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM5
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, FIM6
                           int      21h
     
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, Agradecimento2
                           int      21h

                           mov      ah,9
                           lea      dx,  TAKE_TIME
                           int      21h

              


                           mov      ah,1
                           int      21h
                           mov      bl,al
                           move_XY  80,25                        ; mover cursor lá para baixo


            
                           cmp      bl,'g'
                           je       finaldojogo2
                        
   



  finaldojogo2:            
                           mov      ah,4ch
                           int      21h

                           ret
win_game endp


lost_game proc


                           call     limpatela

                           move_XY  1,9                          ; mover cursor para altura desejada ( começar a imprimir no meio do programa )

  ; todos os mov ah,9 são destinados ao visual do final do programa
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, FIM1
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM2
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM3
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM4
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx,FIM5
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, FIM6
                           int      21h
     
                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h

                           mov      ah,9
                           lea      dx, LINHA_L
                           int      21h


                           mov      ah,9
                           lea      dx, Agradecimento3
                           int      21h

                           mov      ah,9
                           lea      dx,  TAKE_TIME
                           int      21h

       


                           mov      ah,1
                           int      21h
                           mov      bl,al
                           move_XY  80,25                        ; mover cursor lá para baixo


            
                           cmp      bl,'g'
                           je       finaldojogo3
                        
   




  finaldojogo3:            
                           mov      ah,4ch
                           int      21h



                           ret
lost_game endp

end main 