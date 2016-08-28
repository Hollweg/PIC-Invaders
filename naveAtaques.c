
#include "main.h"

/***********************************************
 * Name:
 *    Ataque1
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Chama uma nave inimiga e faz o caractere referente
 *    a nave varrer a tela, atirar, testar tiro, etc..
 ************************************************/
void Ataque1 (){

    int i = 0b00000000;                                         //contador posicao nave_inimigo
    int testa = 0b00000000;
    short explode_nave = 0b00000000;
    short tiro_especial;

    while (i<16){                                                        //execução rotina principal - andar naves
        linha1 = 0b00000001;
        Lcd_Cmd(_LCD_CLEAR);                                                  //onde será escrito o caracter de explosão de nave
        ChamaEnterprise();                                                   //Chama nave_principal

        switch (i){
            case 1:
                Lcd_chr (1,16, 1);                                    //Nave Inimiga I
                armazena_pos_inimigo1 = 0b00001111;                   //Armazena posicao do inimigo para teste posterior
                testa_inimigo1 = 0b00010000;                          //Atribui valor 16 para a variável
                ChamaEnterprise();                                   //Chama ultima posicao de nave principal na tela

                if ((button(&PORTD, 2, 200, 1))){                     //Se o bit 2 do portd estiver pressionado
                    store_tiro = posicao_nave;                        //armazena na variavel a posicao da nave
                    NaveTiro();                                      //testa se usuario pediu para ser lançado um tiro
                    testa_tiro = 0b00000001;                          //atribui 1 a testa_tiro
                }

                testa = TestaTiroInimigo();                                           //chama a funcao testa_tiro, de modo que se coincidir, explode a nave

                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)       // e atribui valor 1 a testa
                    i = 15;                                                             //se a variável testa for = 1 e testa_primeira_explosao = 1
                                                                                        //i = 15, de modo que saia do for
                delay_ms (300);
                break;

            case 2:
                Lcd_chr (1,15, 1);                             // Nave Inimiga I
                armazena_pos_inimigo1 = 0b00001110;            //armazena posicao do inimigo para atualizar a tela
                testa_inimigo1 = 0b0001111;                    //armazena posicao inimigo para teste em colisao com tiro

                ChamaEnterprise();                            //Chama ultima posicao de nave principal na tela
                EscreveEnterprise();                          //Testa se usuario quer mudar nave principal

                testa = TestaTiroInimigo();                  //recebe valor da funcao de teste tiro
                if (testa == 0b00000001){                      //se a função for = 1, armazena 15 no i
                    i = 15;                                    //linha1 = 0 (reseta variável)
                    linha1 = 0b00000000;                       //explode_nave = 1 e sai do for
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){                    //se variavel for = 0 (testada anteriormente)
                    testa = TestaTiroInimigo();                   //recebe posicao da funcao
                                                                    //de lugar - linha 1 ou 2

                    if (testa_tiro == 0b00000001)                   //Testa se tiro = 1, e dessa forma executa a função tiro sem
                        NaveTiro();                                //que o usuario pressione o botao

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){          //se pressinado
                        store_tiro = posicao_nave;                                                //store_posicao recebe posicao da nave
                        NaveTiro();                                                              //chama funcao do tiro
                        testa_tiro = 0b00000001;                                                  //atribiui 1 a variável testa_tiro na função de chamar tiro
                    }                                                                             //testa se usuario pediu para ser lançado um tiro

                    testa = TestaTiroInimigo();                                        //recebe o valor da variavel TestaTiroInimigo à variavel testa
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)    //se testa for 1 OU testa_primeira_explosao for 1, atribui 15 ao i e sai do for
                    i = 15;                                                              //Segue mesma linha de raciocínio nos casos seguintes

                }
                delay_ms (300);
                break;

            case 3:
                Lcd_chr (1,14, 1);
                armazena_pos_inimigo1 = 0b00001101;
                testa_inimigo1 = 0b00001110;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                    delay_ms (300);
                    break;

            case 4:
                Lcd_chr (1,13, 1);
                armazena_pos_inimigo1 = 0b00001100;
                testa_inimigo1 = 0b00001101;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                  linha1 = 0b00000000;
                  explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                                                          i = 15;
                }
                delay_ms (300);
                break;

            case 5:
                Lcd_chr (1,12, 1);
                armazena_pos_inimigo1 = 0b00001011;
                testa_inimigo1 = 0b00001100;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 6:
                Lcd_chr (1,11, 1);
                armazena_pos_inimigo1 = 0b00001010;
                testa_inimigo1 =  0b00001011;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000))
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;

                        testa = TestaTiroInimigo();
                        if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                            i = 15;
                }
                delay_ms (300);
                break;

            case 7:
                Lcd_chr (1,10, 1);
                armazena_pos_inimigo1 = 0b00001001;
                testa_inimigo1 =  0b00001010;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0){
                    if (testa_tiro == 1)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;

                }
                delay_ms (300);
                break;

            case 8:
                Lcd_chr (1,9, 1);
                armazena_pos_inimigo1 = 0b00001000;
                testa_inimigo1 =  0b00001001;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 9:
                Lcd_chr (1,8, 1);
                armazena_pos_inimigo1 = 0b00000111;
                testa_inimigo1 =  0b00001000;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                    }
                delay_ms (300);
                break;

            case 10:
                Lcd_chr (1,7, 1);
                armazena_pos_inimigo1 = 0b00000110;
                testa_inimigo1 =  0b00000111;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();

                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 11:
                Lcd_chr (1,6, 1);
                armazena_pos_inimigo1 = 0b00000101;
                testa_inimigo1 =  0b00000110;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 12:
                Lcd_chr (1,5, 1);
                armazena_pos_inimigo1 = 0b00000100;
                testa_inimigo1 =  0b00000101;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 13:
                Lcd_chr (1,4, 1);
                armazena_pos_inimigo1 = 0b00000011;
                testa_inimigo1 =  0b00000100;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 14:
                Lcd_chr (1,3, 1);
                armazena_pos_inimigo1 = 0b00000010;
                testa_inimigo1 =  0b00000011;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }

                delay_ms (300);
                break;

            case 15:
                Lcd_chr (1,2, 1);
                armazena_pos_inimigo1 = 0b00000001;
                testa_inimigo1 =  0b00000010;
                pos_inimigo_final = 0b00000001;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;

                    else  if (pos_inimigo_final == 0b00000001)
                        GameOver();
                }
                delay_ms (300);
                break;
            }
            i++;
        }

    tiro = 0b00000010;
    armazena_pos_inimigo1 = 0b00000000;
    armazena_pos_inimigo2 = 0b00000000;
    armazena_pos_inimigo3 = 0b00000000;
    armazena_pos_tiro = 0b00000000;
    store_tiro = 0b00000000;
    testa_tiro = 0b00000000;
    testa = 0b00000000;
    testa_inimigo1 = 0b00000000;
    testa_primeira_explosao = 0b00000000;
    explode_nave = 0b00000000;
    linha1 = 0b00000000;
    especial = 0b00000000;
}//~ final Ataque1
}
/***********************************************
 * Name:
 *    Ataque2
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Chama uma nave inimiga e faz o caractere referente
 *    a nave varrer a tela, atirar, testar tiro, etc..
 ************************************************/
void Ataque2(){

    int i  = 0b00000000;
    int testa = 0b00000000;
    short int explode_nave = 0b00000000;
    short int tiro_especial;

    while (i<16){
        linha2 = 0b00000010;
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();
        switch (i){
            case 1:
                Lcd_chr (2,16,2);
                armazena_pos_inimigo2 = 0b00001111;
                testa_inimigo2 = 0b00010000;
                if ((button(&PORTD, 2, 200, 1))){
                    store_tiro = posicao_nave;
                    NaveTiro();
                    testa_tiro = 0b00000001;
                }

                testa = TestaTiroInimigo();
                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                    i = 15;
                delay_ms(300);
                break;

            case 2:
                Lcd_chr (2,15, 2);
                armazena_pos_inimigo2 = 0b00001110;
                testa_inimigo2 =  0b00001111;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 3:
                Lcd_chr (2,14, 2);
                armazena_pos_inimigo2 = 0b00001101;
                testa_inimigo2 =  0b00001110;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 4:
                Lcd_chr (2,13, 2);
                armazena_pos_inimigo2 = 0b00001100;
                testa_inimigo2 =  0b00001101;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 5:
                Lcd_chr (2,12, 2);
                armazena_pos_inimigo2 = 0b00001011;
                testa_inimigo2 =  0b00001100;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 6:
                Lcd_chr (2,11, 2);
                armazena_pos_inimigo2 = 0b00001010;
                testa_inimigo2 =  0b00001011;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b0000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 7:
                Lcd_chr (2,10, 2);
                armazena_pos_inimigo2 = 0b00001001;
                testa_inimigo2 =  0b00001010;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 8:
                Lcd_chr (2,9, 2);
                armazena_pos_inimigo2 = 0b00001000;
                testa_inimigo2 =  0b00001001;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                          i = 15;
                }
                delay_ms (300);
                break;

            case 9:
                Lcd_chr (2,8, 2);
                armazena_pos_inimigo2 = 0b00000111;
                testa_inimigo2 =  0b00001000;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 10:
                Lcd_chr (2,7, 2);
                armazena_pos_inimigo2 = 0b00000110;
                testa_inimigo2 =  0b00000111;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 11:
                Lcd_chr (2,6, 2);
                armazena_pos_inimigo2 = 0b00000101;
                testa_inimigo2 =  0b00000110;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 1)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 12:
                Lcd_chr (2,5, 2);
                armazena_pos_inimigo2 = 0b00000100;
                testa_inimigo2 =  0b00000101;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 13:
                Lcd_chr (2,4, 2);
                armazena_pos_inimigo2 = 0b00000011;
                testa_inimigo2 =  0b00000100;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 14:
                Lcd_chr (2,3, 2);
                armazena_pos_inimigo2 = 0b00000010;
                testa_inimigo2 =  0b00000011;
                pos_inimigo_final = 0b000000010;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 15:
                Lcd_chr (2,2, 2);
                armazena_pos_inimigo1 = 0b00000001;
                testa_inimigo2 =  0b00000010;
                pos_inimigo_final = 0b00000001;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;

                    else  if (pos_inimigo_final == 0b00000001)
                        GameOver();
                }
                delay_ms (300);
                break;
            }
        i++;
    }

    tiro = 0b00000010;
    testa = 0b00000000;
    testa_tiro = 0b00000000;
    testa_inimigo2 = 0b00000000;
    store_tiro = 0b00000000;
    armazena_pos_inimigo1 = 0b00000000;
    armazena_pos_inimigo2 = 0b00000000;
    armazena_pos_inimigo3 = 0b00000000;
    armazena_pos_tiro = 0b00000000;
    testa_primeira_explosao = 0b00000000;
    explode_nave = 0b00000000;
    linha2 = 0b00000000;
    especial = 0;
 }//~ final Ataque2

/***********************************************
 * Name:
 *    Ataque3
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Chama uma nave inimiga e faz o caractere referente
 *    a nave varrer a tela, atirar, testar tiro, etc..
 ************************************************/
void Ataque3 (){


    int i = 0b00000000;
    int testa = 0b00000000;
    short explode_nave = 0b00000000;
    short tiro_especial;


    while (i<16){
        linha1 = 0b00000001;
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();
        switch (i){
            case 1:
                Lcd_chr (1,16, 2);
                armazena_pos_inimigo2 = 0b00001111;
                testa_inimigo1 = 0b00010000;
                ChamaEnterprise();

                if ((button(&PORTD, 2, 200, 1))){
                    store_tiro = posicao_nave;
                    NaveTiro();
                    testa_tiro = 0b00000001;
                }
                testa = TestaTiroInimigo();
                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                    i = 15;
                delay_ms (150);
                break;

            case 2:
                Lcd_chr (1,15, 2);
                armazena_pos_inimigo2 = 0b00001110;
                testa_inimigo1 = 0b0001111;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    testa = TestaTiroInimigo();
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 3:
                Lcd_chr (1,14, 2);
                armazena_pos_inimigo2 = 0b00001101;
                testa_inimigo1 = 0b00001110;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 4:
                Lcd_chr (1,13, 2);
                armazena_pos_inimigo2 = 0b00001100;
                testa_inimigo1 = 0b00001101;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 5:
                Lcd_chr (1,12, 2);
                armazena_pos_inimigo2 = 0b00001011;
                testa_inimigo1 = 0b00001100;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                  }
                  testa = TestaTiroInimigo();
                  if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                      i = 15;
                }
                delay_ms (300);
                break;

            case 6:
                Lcd_chr (1,11, 2);
                armazena_pos_inimigo2 = 0b00001010;
                testa_inimigo1 =  0b00001011;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 7:
                Lcd_chr (1,10, 2);
                armazena_pos_inimigo2 = 0b00001001;
                testa_inimigo1 =  0b00001010;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0){
                    if (testa_tiro == 1)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;

                }
                delay_ms (150);
                break;

            case 8:
                Lcd_chr (1,9, 2);
                armazena_pos_inimigo2 = 0b00001000;
                testa_inimigo1 =  0b00001001;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 9:
                Lcd_chr (1,8, 2);
                armazena_pos_inimigo2 = 0b00000111;
                testa_inimigo1 =  0b00001000;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 10:
                Lcd_chr (1,7, 2);
                armazena_pos_inimigo2 = 0b00000110;
                testa_inimigo1 =  0b00000111;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 11:
                Lcd_chr (1,6, 2);
                armazena_pos_inimigo2 = 0b00000101;
                testa_inimigo1 =  0b00000110;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 12:
                Lcd_chr (1,5, 2);                                // Nave Inimiga
                armazena_pos_inimigo2 = 0b00000100;
                testa_inimigo1 =  0b00000101;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 13:
                Lcd_chr (1,4, 2);
                armazena_pos_inimigo2 = 0b00000011;
                testa_inimigo1 =  0b00000100;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 14:
                Lcd_chr (1,3, 2);
                armazena_pos_inimigo2 = 0b00000010;
                testa_inimigo1 =  0b00000011;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (150);
                break;

            case 15:
                Lcd_chr (1,2, 2);
                armazena_pos_inimigo2 = 0b00000001;
                testa_inimigo1 =  0b00000010;
                pos_inimigo_final = 0b00000001;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;}
                    if (explode_nave == 0){
                        if (testa_tiro == 0b00000001)
                            NaveTiro();
                        else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                            store_tiro = posicao_nave;
                            NaveTiro();
                            testa_tiro = 0b00000001;
                        }
                        testa = TestaTiroInimigo();
                        if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                            i = 15;
                        else  if (pos_inimigo_final == 0b00000001)
                            GameOver();
                  }
                  delay_ms (150);
                  break;
            }
        i++;
    }

    tiro = 0b00000010;
    armazena_pos_inimigo1 = 0b00000000;
    armazena_pos_inimigo2 = 0b00000000;
    armazena_pos_inimigo3 = 0b00000000;
    armazena_pos_tiro = 0b00000000;
    store_tiro = 0b00000000;
    testa_tiro = 0b00000000;
    testa = 0b00000000;
    testa_inimigo1 = 0b00000000;
    testa_primeira_explosao = 0b00000000;
    explode_nave = 0b00000000;
    linha1 = 0b00000000;
    especial = 0;
}//~ final Ataque3

/***********************************************
 * Name:
 *    Ataque4
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Chama uma nave inimiga e faz o caractere referente
 *    a nave varrer a tela, atirar, testar tiro, etc..
 ************************************************/
void Ataque4 (){

    int i = 0b00000000;
    int testa = 0b00000000;
    short explode_nave = 0b00000000;
    short tiro_especial;

    while (i<16){
        linha2 = 0b00000010;
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();

        switch (i){
            case 1:
                Lcd_chr (2,16, 1);
                armazena_pos_inimigo1 = 0b00001111;
                testa_inimigo2 =  0b00010000;
                if ((button(&PORTD, 2, 200, 1))){
                    store_tiro = posicao_nave;
                    NaveTiro();
                    testa_tiro = 0b00000001;
                }
                testa = TestaTiroInimigo();
                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                    i = 15;
                delay_ms (200);
                break;

            case 2:
                Lcd_chr (2,15, 1);
                armazena_pos_inimigo1 = 0b00001110;
                testa_inimigo2 =  0b00001111;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 3:
                Lcd_chr (2,14, 1);
                armazena_pos_inimigo1 = 0b00001101;
                testa_inimigo2 =  0b00001110;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 4:
                Lcd_chr (2,13, 1);
                armazena_pos_inimigo1 = 0b00001100;
                testa_inimigo2 =  0b00001101;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 5:
                Lcd_chr (2,12, 1);
                armazena_pos_inimigo1 = 0b00001011;
                testa_inimigo2 =  0b00001100;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                testa = TestaTiroInimigo();
                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                    i = 15;
                }
                delay_ms (200);
                break;

            case 6:
                Lcd_chr (2,11, 1);
                armazena_pos_inimigo1 = 0b00001010;
                testa_inimigo2 =  0b00001011;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b0000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 7:
                Lcd_chr (2,10, 1);
                armazena_pos_inimigo1 = 0b00001001;
                testa_inimigo2 =  0b00001010;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 8:
                Lcd_chr (2,9, 1);
                armazena_pos_inimigo1 = 0b00001000;
                testa_inimigo2 =  0b00001001;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 9:
                Lcd_chr (2,8, 1);
                armazena_pos_inimigo1 = 0b00000111;
                testa_inimigo2 =  0b00001000;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 10:
                Lcd_chr (2,7, 1);
                armazena_pos_inimigo1 = 0b00000110;
                testa_inimigo2 =  0b00000111;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 11:
                Lcd_chr (2,6, 1);
                armazena_pos_inimigo1 = 0b00000101;
                testa_inimigo2 =  0b00000110;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 1)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 12:
                Lcd_chr (2,5, 1);
                armazena_pos_inimigo1 = 0b00000100;
                testa_inimigo2 =  0b00000101;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 13:
                Lcd_chr (2,4, 1);
                armazena_pos_inimigo1 = 0b00000011;
                testa_inimigo2 =  0b00000100;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 14:
                Lcd_chr (2,3, 1);
                armazena_pos_inimigo1 = 0b00000010;
                testa_inimigo2 =  0b00000011;
                pos_inimigo_final = 0b000000010;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 15:
                Lcd_chr (2,2, 1);
                armazena_pos_inimigo1 = 0b00000001;
                testa_inimigo2 =  0b00000010;
                pos_inimigo_final = 0b00000001;
                ChamaEnterprise();
                EscreveEnterprise();
                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();
                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                    else  if (pos_inimigo_final == 0b00000001)
                        GameOver();
                }
                delay_ms (200);
                break;
        }
    i++;
    }

    tiro = 0b00000010;
    testa = 0b00000000;
    testa_tiro = 0b00000000;
    testa_inimigo2 = 0b00000000;
    store_tiro = 0b00000000;
    armazena_pos_inimigo1 = 0b00000000;
    armazena_pos_inimigo2 = 0b00000000;
    armazena_pos_inimigo3 = 0b00000000;
    armazena_pos_tiro = 0b00000000;
    testa_primeira_explosao = 0b00000000;
    explode_nave = 0b00000000;
    linha2 = 0b00000000;
    especial = 0;

}// final Ataque4

/***********************************************
 * Name:
 *    Ataque5
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Chama uma nave inimiga e faz o caractere referente
 *    a nave varrer a tela, atirar, testar tiro, etc..
 ************************************************/

void Ataque5 (){

    int i = 0b00000000;                                         //contador posicao nave_inimigo
    int testa = 0b00000000;
    short explode_nave = 0b00000000;
    short tiro_especial;


    while (i<16){
        linha1 = 0b00000001;
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();

        switch(i){
            case 1:
                Lcd_chr (1,16, 1);
                armazena_pos_inimigo1 = 0b00001111;
                testa_inimigo1 = 0b00010000;
                ChamaEnterprise();

                if ((button(&PORTD, 2, 200, 1))){
                    store_tiro = posicao_nave;
                    NaveTiro();
                    testa_tiro = 0b00000001;
                }

                testa = TestaTiroInimigo();

                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                    i = 15;

                delay_ms (300);
                break;

            case 2:
                //Lcd_chr (1,15, 1);
                armazena_pos_inimigo1 = 0b00001110;
                testa_inimigo1 = 0b0001111;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    testa = TestaTiroInimigo();

                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;

                }
                delay_ms (300);
                break;

            case 3:
                //Lcd_chr (1,14, 1);
                armazena_pos_inimigo1 = 0b00001101;
                testa_inimigo1 = 0b00001110;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 4:
                Lcd_chr (1,13, 1);
                armazena_pos_inimigo1 = 0b00001100;
                testa_inimigo1 = 0b00001101;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                    i = 15;
                }
                delay_ms (300);
                break;

            case 5:
                //Lcd_chr (1,12, 1);
                armazena_pos_inimigo1 = 0b00001011;
                testa_inimigo1 = 0b00001100;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 6:
                Lcd_chr (1,11, 1);
                armazena_pos_inimigo1 = 0b00001010;
                testa_inimigo1 =  0b00001011;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();


                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 7:
                Lcd_chr (1,10, 1);
                armazena_pos_inimigo1 = 0b00001001;
                testa_inimigo1 =  0b00001010;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0){
                    if (testa_tiro == 1)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;

                }
                delay_ms (300);
                break;

            case 8:
                //Lcd_chr (1,9, 1);
                armazena_pos_inimigo1 = 0b00001000;
                testa_inimigo1 =  0b00001001;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 9:
                Lcd_chr (1,8, 1);
                armazena_pos_inimigo1 = 0b00000111;
                testa_inimigo1 =  0b00001000;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 10:
                Lcd_chr (1,7, 1);
                armazena_pos_inimigo1 = 0b00000110;
                testa_inimigo1 =  0b00000111;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 11:
                //Lcd_chr (1,6, 1);
                armazena_pos_inimigo1 = 0b00000101;
                testa_inimigo1 =  0b00000110;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                    store_tiro = posicao_nave;
                    NaveTiro();
                    testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 12:
                //Lcd_chr (1,5, 1);
                armazena_pos_inimigo1 = 0b00000100;
                testa_inimigo1 =  0b00000101;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 13:
                Lcd_chr (1,4, 1);
                armazena_pos_inimigo1 = 0b00000011;
                testa_inimigo1 =  0b00000100;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (300);
                break;

            case 14:
                Lcd_chr (1,3, 1);
                armazena_pos_inimigo1 = 0b00000010;
                testa_inimigo1 =  0b00000011;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha1 = 0b00000000;
                    explode_nave = 0b00000001;

                    if (explode_nave == 0b00000000){
                        if (testa_tiro == 0b00000001)
                            NaveTiro();

                        else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                            store_tiro = posicao_nave;
                            NaveTiro();
                            testa_tiro = 0b00000001;
                        }

                        testa = TestaTiroInimigo();
                        if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                            i = 15;
                    }
                    delay_ms (300);
                    break;

                case 15:
                    Lcd_chr (1,2, 1);
                    armazena_pos_inimigo1 = 0b00000001;
                    testa_inimigo1 =  0b00000010;
                    pos_inimigo_final = 0b00000001;

                    ChamaEnterprise();
                    EscreveEnterprise();

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001){
                        i = 15;
                        linha1 = 0b00000000;
                        explode_nave = 0b00000001;
                    }

                    if (explode_nave == 0){
                        if (testa_tiro == 0b00000001)
                          NaveTiro();

                        else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                            store_tiro = posicao_nave;
                            NaveTiro();
                            testa_tiro = 0b00000001;
                        }

                        testa = TestaTiroInimigo();
                        if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                            i = 15;

                        else  if (pos_inimigo_final == 0b00000001)
                            GameOver();
                    }
                    delay_ms (300);
                    break;
                }
        i++;
    }

    tiro = 0b00000010;
    armazena_pos_inimigo1 = 0b00000000;
    armazena_pos_inimigo2 = 0b00000000;
    armazena_pos_inimigo3 = 0b00000000;
    armazena_pos_tiro = 0b00000000;
    store_tiro = 0b00000000;
    testa_tiro = 0b00000000;
    testa = 0b00000000;
    testa_inimigo1 = 0b00000000;
    testa_primeira_explosao = 0b00000000;
    explode_nave = 0b00000000;
    linha1 = 0b00000000;
    }
}//~ final Ataque5
/***********************************************
 * Name:
 *    Ataque6
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Chama uma nave inimiga e faz o caractere referente
 *    a nave varrer a tela, atirar, testar tiro, etc..
 ************************************************/

void Ataque6 (){

    int i = 0b00000000;
    int testa = 0b00000000;
    short explode_nave = 0b00000000;
    short tiro_especial;

    while (i<16){
        linha2 = 0b00000010;
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();
        switch (i) {
            case 1:
                Lcd_chr (2,16, 6);
                armazena_pos_inimigo3 = 0b00001111;
                testa_inimigo2 =  0b00010000;

                if ((button(&PORTD, 2, 200, 1))){
                    store_tiro = posicao_nave;
                    NaveTiro();
                    testa_tiro = 0b00000001;
                }

                testa = TestaTiroInimigo();
                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                    i = 15;

                delay_ms (200);
                break;

            case 2:
                Lcd_chr (2,15, 6);
                armazena_pos_inimigo3 = 0b00001110;
                testa_inimigo2 =  0b00001111;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                    }
                delay_ms (200);
                break;

            case 3:
                Lcd_chr (2,14, 6);
                armazena_pos_inimigo3 = 0b00001101;
                testa_inimigo2 =  0b00001110;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                    store_tiro = posicao_nave;
                    NaveTiro();
                    testa_tiro = 0b00000001;
                }

                testa = TestaTiroInimigo();
                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                    i = 15;
                }
                delay_ms (200);
                break;

            case 4:
                Lcd_chr (2,13, 6);
                armazena_pos_inimigo3 = 0b00001100;
                testa_inimigo2 =  0b00001101;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                                                        i = 15;
                    }
                delay_ms (200);
                break;

            case 5:
                Lcd_chr (2,12, 6);
                armazena_pos_inimigo3 = 0b00001011;
                testa_inimigo2 =  0b00001100;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                    }
                delay_ms (200);
                break;

            case 6:
                Lcd_chr (2,11, 6);
                armazena_pos_inimigo3 = 0b00001010;
                testa_inimigo2 =  0b00001011;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b0000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 7:
                Lcd_chr (2,10, 6);
                armazena_pos_inimigo3 = 0b00001001;
                testa_inimigo2 =  0b00001010;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 8:
                Lcd_chr (2,9, 6);
                armazena_pos_inimigo3 = 0b00001000;
                testa_inimigo2 =  0b00001001;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                    NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 9:
                Lcd_chr (2,8, 6);
                armazena_pos_inimigo3 = 0b00000111;
                testa_inimigo2 =  0b00001000;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }
                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 10:
                Lcd_chr (2,7, 6);
                armazena_pos_inimigo3 = 0b00000110;
                testa_inimigo2 =  0b00000111;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                    }
                delay_ms (200);
                break;

            case 11:
                Lcd_chr (2,6, 6);
                armazena_pos_inimigo3 = 0b00000101;
                testa_inimigo2 =  0b00000110;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }
                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 1)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 12:
                Lcd_chr (2,5, 6);
                armazena_pos_inimigo3 = 0b00000100;
                testa_inimigo2 =  0b00000101;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;

                }
                delay_ms (200);
                break;

            case 13:
                Lcd_chr (2,4, 6);
                armazena_pos_inimigo3 = 0b00000011;
                testa_inimigo2 =  0b00000100;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                  linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 14:
                Lcd_chr (2,3, 6);
                armazena_pos_inimigo3 = 0b00000010;
                testa_inimigo2 =  0b00000011;
                pos_inimigo_final = 0b000000010;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;
                }
                delay_ms (200);
                break;

            case 15:
                Lcd_chr (2,2, 6);
                armazena_pos_inimigo3 = 0b00000001;
                testa_inimigo2 =  0b00000010;
                pos_inimigo_final = 0b00000001;

                ChamaEnterprise();
                EscreveEnterprise();

                testa = TestaTiroInimigo();
                if (testa == 0b00000001){
                    i = 15;
                    linha2 = 0b00000000;
                    explode_nave = 0b00000001;
                }

                if (explode_nave == 0b00000000){
                    if (testa_tiro == 0b00000001)
                        NaveTiro();

                    else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                        store_tiro = posicao_nave;
                        NaveTiro();
                        testa_tiro = 0b00000001;
                    }

                    testa = TestaTiroInimigo();
                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
                        i = 15;

                    else  if (pos_inimigo_final == 0b00000001)
                        GameOver();
                }
                  delay_ms (200);
                  break;
        }
        i++;
    }

    tiro = 0b00000010;
    testa = 0b00000000;
    testa_tiro = 0b00000000;
    testa_inimigo2 = 0b00000000;
    store_tiro = 0b00000000;
    armazena_pos_inimigo1 = 0b00000000;
    armazena_pos_inimigo2 = 0b00000000;
    armazena_pos_inimigo3 = 0b00000000;
    armazena_pos_tiro = 0b00000000;
    testa_primeira_explosao = 0b00000000;
    explode_nave = 0b00000000;
    linha2 = 0b00000000;
    especial = 0;
}//~ final Ataque6
