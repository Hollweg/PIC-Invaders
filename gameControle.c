
#include "main.h"

/***********************************************
 * Name:
 *    GameOver
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Se essa funcao for chamada, é fim de jogo para o usuario,
 *    sinal de que deixou uma nave inimiga passar de sua tela
 *    e posteriormente é mostrado *Fim de jogo* no LCD.
 *    Por fim é feita uma simples animacao na tela.
 ************************************************/
int GameOver() {

    short j = 0;
    for (j = 0; j<4; j++){
        Lcd_Cmd(_LCD_CLEAR);
        lcd_chr (1, 6, 3);
        lcd_chr (1, 7, 3);
        lcd_chr (1, 8, 3);
        lcd_chr (1, 9, 3);
        lcd_chr (1, 10, 3);
        lcd_chr (2, 6, 3);
        lcd_chr (2, 7, 3);
        lcd_chr (2, 8, 3);
        lcd_chr (2, 9, 3);
        lcd_chr (2, 10, 3);
        delay_ms (500);
        lcd_chr (1, 6, 4);
        lcd_chr (1, 7, 4);
        lcd_chr (1, 8, 4);
        lcd_chr (1, 9, 4);
        lcd_chr (1, 10, 4);
        lcd_chr (2, 6, 4);
        lcd_chr (2, 7, 4);
        lcd_chr (2, 8, 4);
        lcd_chr (2, 9, 4);
        lcd_chr (2, 10, 4);
        delay_ms (700);
    }

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_out (1,3, "GAME OVER!!!");
    delay_ms(3000);

    if (boss_teste == 1) {
        game_over = 1;
        return game_over;
    }

    else {
        ApagaRam();
        return 0;
    }
}//~ final GameOver

/***********************************************
 * Name:
 *    WinGame
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Funcao chamado quando o jogador vence o game.
 *    É printado no LCD uma pequena historia e os creditos finais.
 ************************************************/
void WinGame(){

    Lcd_Cmd(_LCD_CLEAR);
    lcd_chr (1, 16, 3);
    lcd_chr (2, 16, 3);
    delay_ms (500);

    Lcd_Cmd(_LCD_CLEAR);
    lcd_chr (1, 16, 4);
    lcd_chr (2, 16, 4);
    delay_ms (500);

    Lcd_Cmd(_LCD_CLEAR);
    lcd_chr (1, 16, 3);
    lcd_chr (2, 16, 3);
    delay_ms (500);

    Lcd_Cmd(_LCD_CLEAR);
    lcd_chr (1, 16, 4);
    lcd_chr (2, 16, 4);
    delay_ms (500);

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out (1, 1, "Apos derrotar");
    Lcd_Out (2, 2, "As formigas");
    delay_ms (3000);

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out (1, 2, "Devoradoras de");
    Lcd_Out (2, 3, "Chocolates");
    delay_ms (3000);

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out (1, 3, "Chegamos ao");
    Lcd_Out (2, 2, "nosso destino.");
    delay_ms (3000);

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out (1, 1, "Assim degustamos");
    Lcd_Out (2, 3, "Com o Povo do");
    delay_ms (3000);

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out (1, 2, "Planeta Kripke");
    Lcd_Out (2, 2, "O Achocolatado");
    delay_ms (3000);

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out (1, 2, "Mais Saboroso");
    Lcd_Out (2, 2, "Belo e Magico");
    delay_ms (3000);

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out (1, 4, "de Toda a");
    Lcd_Out (2, 4, "VIA LACTA!");
    delay_ms (3000);

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out (1, 3, "Desenvolvido");
    Lcd_Out (2, 2, "Por Hollweg");
    delay_ms (4000);

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out (1, 3, "WEG Studios");
    Lcd_Out (2, 3, "WEG Bobagens");
    delay_ms (4000);

}//~ final WinGame


/***********************************************
 * Name:
 *    EscreveEnterprise
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *      Testa se a nave principal foi mudada de lugar
 ************************************************/
void EscreveEnterprise(){

    if (button(&PORTD, 0, 50, 1)){                                 //Se pressionado bit 0 de PORTD
        posicao_nave = 0b00000001;                                 //Nave é escrita e é armazenado valor 1 para comparação posterior
        armazena_enterprise = 0b00000001;                          //Nave Principal escrita na posicao desejada
        Lcd_chr (1,1, 0);
    }

    else if (button(&PORTD, 1, 50, 1)){                           //Se pressionado bit 1 de PORTD
        posicao_nave = 0b00000010;                                //Nave é escrita e é armazenado valor 2 para comparação posterior
        armazena_enterprise = 0b00000010;                         //Nave Principal escrita na posicao desejada
        Lcd_chr (2,1, 0);
    }

}//~ final EscreveEnterprise

/***********************************************
 * Name:
 *    ChamaEnterprise
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *      Chama a nave principal na tela de acordo com
 *      a ultima posicao de memoria switch entre posicao 0 e 1
 *      reescreve na tela de acordo com ultimo endereçamento
 *      de memoria.
 ************************************************/
void ChamaEnterprise() {

    switch (posicao_nave){
        case (0b00000001):
            Lcd_chr (1,1, 0);
            break;

        case (0b00000010):
            Lcd_chr (2,1, 0);
            break;
    }
}//~ final ChamaEnterprise

/***********************************************
 * Name:
 *    ChamaInimigo
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *      Testa em qual posicao foi armazenado o inimigo, e toda
 *      vez que for solicitada, retorna o valor armazenado - 1
 *      de forma a atualizar a tela, de acordo com o necessitado
 *      pelo usuario.
 ************************************************/
void ChamaInimigo() {
    if (linha1 == 0b00000001){
        if (armazena_pos_inimigo1 > 0){
            switch (armazena_pos_inimigo1){
                case (0b00001111):
                    Lcd_chr (1,15, 1);
                    break;                                      //testa primeiro se a variavel que representa inimigo na primeira
                                                                //linha é maior que um, e entra em uma função que chama a mesma
                case (0b00001110):                              //Senão se, testa se posicao inimigo está na linha 2, de forma
                    Lcd_chr (1,14, 1);                          //que escreve o inimigo em linha 1 ou 2
                    break;

                case (0b00001101):
                    Lcd_chr (1,13, 1);
                    break;

                case (0b00001100):
                    Lcd_chr (1,12, 1);
                    break;

                case (0b00001011):
                    Lcd_chr (1,11, 1);
                    break;

                case (0b00001010):
                    Lcd_chr (1,10, 1);
                    break;

                case (0b00001001):
                    Lcd_chr (1,9, 1);
                    break;

                case (0b00001000):
                    Lcd_chr (1,8, 1);
                    break;

                case (0b00000111):
                    Lcd_chr (1,7, 1);
                    break;

                case (0b00000110):
                    Lcd_chr (1,6, 1);
                    break;

                case (0b00000101):
                    Lcd_chr (1,5, 1);
                    break;

                case (0b00000100):
                    Lcd_chr (1,4, 1);
                    break;

                case (0b00000011):
                    Lcd_chr (1,3, 1);
                    break;

                case (0b00000010):
                    Lcd_chr (1,2, 1);
                    break;
            }
      }

    else if (armazena_pos_inimigo2 > 0){
        switch (armazena_pos_inimigo2)  {
            case (0b00001111):
                Lcd_chr (1,15, 2);
                break;                                      //testa primeiro se a variavel que representa inimigo na primeira
                                                            //linha é maior que um, e entra em uma função que chama a mesma
            case (0b00001110):                              //Senão se, testa se posicao inimigo está na linha 2, de forma
                Lcd_chr (1,14, 2);                          //que escreve o inimigo em linha 1 ou 2
                break;

            case (0b00001101):
                Lcd_chr (1,13, 2);
                break;

            case (0b00001100):
                Lcd_chr (1,12, 2);
                break;

            case (0b00001011):
                Lcd_chr (1,11, 2);
                break;

            case (0b00001010):
                Lcd_chr (1,10, 2);
                break;
            case (0b00001001):
                Lcd_chr (1,9, 2);
                break;

            case (0b00001000):
                Lcd_chr (1,8, 2);
                break;

            case (0b00000111):
                Lcd_chr (1,7, 2);
                break;

            case (0b00000110):
                Lcd_chr (1,6, 2);
                break;

            case (0b00000101):
                Lcd_chr (1,5, 2);
                break;

            case (0b00000100):
                Lcd_chr (1,4, 2);
                break;

            case (0b00000011):
                Lcd_chr (1,3, 2);
                break;

            case (0b00000010):
                Lcd_chr (1,2, 2);
                break;
            }
        }
    }

    else if (linha2 == 0b00000010){
        if (armazena_pos_inimigo1 > 0){
            switch (armazena_pos_inimigo1)  {
                case (0b00001111):
                    Lcd_chr (2,15, 1);
                    break;                                      //testa primeiro se a variavel que representa inimigo na primeira
                                                                //linha é maior que um, e entra em uma função que chama a mesma
                case (0b00001110):                              //Senão se, testa se posicao inimigo está na linha 2, de forma
                    Lcd_chr (2,14, 1);                          //que escreve o inimigo em linha 1 ou 2
                    break;
                case (0b00001101):
                    Lcd_chr (2,13, 1);
                    break;

                case (0b00001100):
                    Lcd_chr (2,12, 1);
                    break;

                case (0b00001011):
                    Lcd_chr (2,11, 1);
                    break;

                case (0b00001010):
                    Lcd_chr (2,10, 1);
                    break;

                case (0b00001001):
                    Lcd_chr (2,9, 1);
                    break;

                case (0b00001000):
                    Lcd_chr (2,8, 1);
                    break;

                case (0b00000111):
                    Lcd_chr (2,7, 1);
                    break;

                case (0b00000110):
                    Lcd_chr (2,6, 1);
                    break;

                case (0b00000101):
                    Lcd_chr (2,5, 1);
                    break;

                case (0b00000100):
                    Lcd_chr (2,4, 1);
                    break;

                case (0b00000011):
                    Lcd_chr (2,3, 1);
                    break;

                case (0b00000010):
                    Lcd_chr (2,2, 1);
                    break;

            }
        }

    else if (armazena_pos_inimigo2 > 0){
        switch (armazena_pos_inimigo2)  {
            case (0b00001111):
                Lcd_chr (2,15, 2);
                break;                                      //testa primeiro se a variavel que representa inimigo na primeira
                                                            //linha é maior que um, e entra em uma função que chama a mesma
            case (0b00001110):                              //Senão se, testa se posicao inimigo está na linha 2, de forma
                Lcd_chr (2,14, 2);                          //que escreve o inimigo em linha 1 ou 2
                break;

            case (0b00001101):
                Lcd_chr (2,13, 2);
                break;

            case (0b00001100):
                Lcd_chr (2,12, 2);
                break;

            case (0b00001011):
                Lcd_chr (2,11, 2);
                break;

            case (0b00001010):
                Lcd_chr (2,10, 2);
                break;

            case (0b00001001):
                Lcd_chr (2,9, 2);
                break;

            case (0b00001000):
                Lcd_chr (2,8, 2);
                break;

            case (0b00000111):
                Lcd_chr (2,7, 2);
                break;

            case (0b00000110):
                Lcd_chr (2,6, 2);
                break;

            case (0b00000101):
                Lcd_chr (2,5, 2);
                break;

            case (0b00000100):
                Lcd_chr (2,4, 2);
                break;

            case (0b00000011):
                Lcd_chr (2,3, 2);
                break;

            case (0b00000010):
                Lcd_chr (2,2, 2);
                break;

            }
        }

    else if (armazena_pos_inimigo3 > 0){
        switch (armazena_pos_inimigo3)  {
            case (0b00001111):
                Lcd_chr (2,15, 6);
                break;                                      //testa primeiro se a variavel que representa inimigo na primeira
                                                            //linha é maior que um, e entra em uma função que chama a mesma
            case (0b00001110):                              //Senão se, testa se posicao inimigo está na linha 2, de forma
                Lcd_chr (2,14, 6);                          //que escreve o inimigo em linha 1 ou 2
                break;

            case (0b00001101):
                Lcd_chr (2,13, 6);
               break;

            case (0b00001100):
                Lcd_chr (2,12, 6);
                break;

            case (0b00001011):
                Lcd_chr (2,11, 6);
                break;

            case (0b00001010):
                Lcd_chr (2,10, 6);
                break;

            case (0b00001001):
                Lcd_chr (2,9, 6);
                break;

            case (0b00001000):
                Lcd_chr (2,8, 6);
                break;

            case (0b00000111):
                Lcd_chr (2,7, 6);
                break;

            case (0b00000110):
                Lcd_chr (2,6, 6);
                break;

            case (0b00000101):
                Lcd_chr (2,5, 6);
                break;

            case (0b00000100):
                Lcd_chr (2,4, 6);
                break;

            case (0b00000011):
                Lcd_chr (2,3, 6);
                break;

            case (0b00000010):
                Lcd_chr (2,2, 6);
                break;
      }
    }
  }
}//~ final ChamaInimigo

/***********************************************
 * Name:
 *    TestaTiroInimigo
 * In:
 *    --
 * Out:
 *    testa_explosao
 * Description:
 *       Funcao que tem como objetivo testar se o inimigo possui a mesma posicao da nave principal
 *       Para isso sao feitos diversos testes, usando a variavel que armazena a posicao do tiro com
 *       a variavel que testa a posicao do inimigo, de forma que se estiver em linha 1, explode
 *       a posicao referente ao inimigo na linha 1, se na linha 2, explode na linha 2.
 ************************************************/
int TestaTiroInimigo(){

    int testa_explosao;
    if ((armazena_pos_tiro  == testa_inimigo1) && (linha1 == 0b00000001) && (store_tiro == 0b00000001)){
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();
        lcd_chr (1, testa_inimigo1, 3);
        delay_ms (300);
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();
        testa_explosao = 0b00000001;
        pos_inimigo_final = 0b00000000;
        return testa_explosao;
    }
    else if ((armazena_pos_tiro == testa_inimigo2) && (linha2 == 0b00000010) && (store_tiro == 0b00000010)){
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();
        lcd_chr (2, testa_inimigo2, 3);
        delay_ms (300);
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();
        testa_explosao = 0b00000001;
        pos_inimigo_final = 0b00000000;
        return testa_explosao;
    }
}//~ final TestaTiroInimigo

/***********************************************
 * Name:
 *    NaveTiro
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Funcao que chama e testa a posicao do tiro, quando solicitado pelo usuário
 *    Testa se a variável armazena tiro é 1 ou 2 e dessa forma, atira em linha 1 ou 2
 *    Chama todas as funções de escrita na tela e e testa onde escrever o tiro, após executado
 ************************************************/
void NaveTiro(){

    int teste = 0;                                //Funcao que chama e testa a posicao do tiro, quando solicitado
                                                  //pelo usuário
    if (store_tiro == 0b00000001){                //Testa se a variável armazena tiro é 1 ou 2
        Lcd_Cmd(_LCD_CLEAR);                      //e dessa forma, atira em linha 1 ou 2
        ChamaEnterprise();                       //Chama todas as funções de escrita na tela e
        ChamaInimigo();                          //e testa onde escrever o tiro, após executado

        teste = TestaTiroInimigo();
        if (teste == 0b00000001){
            testa_primeira_explosao = 0b00000001;
            linha1 = 0b00000000;
            Lcd_Cmd(_LCD_CLEAR);
            ChamaEnterprise();
            testa_tiro = 0b00000000;
            armazena_pos_tiro = 0b00000000;
        }
        else
            lcd_chr (1, tiro, 5);
        tiro++;
        armazena_pos_tiro  = tiro;
    }
    else if (store_tiro == 0b00000010){
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();
        ChamaInimigo();
        teste = TestaTiroInimigo();

        if (teste == 0b00000001){
            testa_primeira_explosao = 0b00000001;
            linha2 = 0b00000000;
            Lcd_Cmd(_LCD_CLEAR);
            ChamaEnterprise();
            testa_tiro = 0b00000000;
            armazena_pos_tiro = 0b00000000;
        }
        else
            lcd_chr (2, tiro, 5);
        tiro++;
        armazena_pos_tiro  = tiro;
    }
    teste = 0;
}//~ final NaveTiro

/***********************************************
 * Name:
 *    special
 * In:
 *    --
 * Out:
 *    return 0 ou 1
 * Description:
 *    De forma que testa se usuario pressionou botao do Ataque Especial
 *    Se sim, explode a nave, e obriga funcao a sair do for da nave inimiga
 ************************************************/
int special(){

    if ((((button(&PORTD, 3, 200, 1))) && (especial == 1))){
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();

        if (linha1 == 0b00000001){
            lcd_chr (1, testa_inimigo1, 3);
            delay_ms (250);
            especial = 0b00000000;
            return 1;
        }

        else if (linha2 == 0b00000010){
            lcd_chr (2, testa_inimigo2, 3);
            delay_ms (250);
            especial = 0b00000000;
            return 1;
        }

    }
    else
        return 0;
}//~ final special

/***********************************************
 * Name:
 *    Boss
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Batalha contra o boss final do nivel 1 do jogo.
 *
 ************************************************/
int Boss(){

    short int conta_tiro = 0;
    short int testa_tiro2;

    do {
        Boss_teste = 0b0000001;
        Lcd_Cmd(_LCD_CLEAR);                                                  //onde será escrito o caracter de explosão de nave
        ChamaEnterprise();                                                    //Chama nave_principal
        Lcd_chr (1,16, 7);                                                    //Escreve na tela, coluna 1, uma parte do boss
        Lcd_chr (2,16, 7);                                                    //Escreve na tela, coluna 2, a outra parte do boss
        EscreveEnterprise();                                                  //Testa se usuario quer mudar nave principal


        if (testa_tiro2 == 0b00000001){                                       //Testa se tiro = 1, e dessa forma executa a função tiro sem
            NaveTiro();                                                      //que o usuario pressione o botao
            Lcd_chr (1,16, 7);                                                //Escreve na tela, coluna 1, uma parte do boss
            Lcd_chr (2,16, 7);                                                //Escreve na tela, coluna 2, a outra parte do boss
            conta_tiro++;
        }

        else if ((button(&PORTD, 2, 200, 1))){   //Se o bit 2 do portd estiver pressionado
            store_tiro = posicao_nave;           //armazena na variavel a posicao da nave
            NaveTiro();                         //testa se usuario pediu para ser lançado um tiro
            Lcd_chr (1,16, 7);                   //Escreve na tela, coluna 1, uma parte do boss
            Lcd_chr (2,16, 7);                   //Escreve na tela, coluna 2, a outra parte do boss
            testa_tiro2 = 0b00000001;            //atribui 1 a testa_tiro
        }

    delay_ms (270);

    }while (conta_tiro < 0b00001101);

    if (store_tiro == 0b00000001)
        dano_boss1++;

    else if (store_tiro == 0b00000010)
        dano_boss2++;

    if (((dano_boss1 == 0b00000010) && (dano_boss2 == 0b00000000)) || ((dano_boss1 == 0b00000000) && (dano_boss2 == 0b00000010))  || ((dano_boss1 == 0b00000011) && (dano_boss2 == 0b00000001)) || ((dano_boss1 == 0b00000001) && (dano_boss2 == 0b00000011)) || ((dano_boss1 == 0b00000100) && (dano_boss2 == 0b00000010)) || ((dano_boss1 == 0b00000010) && (dano_boss2 == 0b00000100)) || ((dano_boss1 == 0b00000101) && (dano_boss2 == 0b00000011)) || ((dano_boss1 == 0b00000011) && (dano_boss2 == 0b00000101))){
        dano_boss1 = 0b00000000;
        dano_boss2 = 0b00000000;

        if( posicao_nave == 0b00000001){
            Lcd_Cmd(_LCD_CLEAR);
            lcd_chr (1, 1, 3);
            delay_ms (700);
            lcd_chr (1, 1, 4);
            delay_ms (700);
            lcd_chr (1, 1, 3);
            delay_ms (700);
            lcd_chr (1, 1, 4);
            delay_ms (700);
        }

        else if (posicao_nave == 0b00000010) {
            Lcd_Cmd(_LCD_CLEAR);
            lcd_chr (2, 1, 3);
            delay_ms (700);
            lcd_chr (2, 1, 4);
            delay_ms (700);
            lcd_chr (2, 1, 3);
            delay_ms (700);
            lcd_chr (2, 1, 4);
            delay_ms (700);
        }
        GameOver();
        return 0;
    }

    else if ((dano_boss1 == 4) && (dano_boss2 == 4)){
        WinGame();
        return 1;
    }

    conta_tiro = 0b0000000;
    testa_tiro2 = 0b0000000;
    tiro = 0b00000010;
    store_tiro = 0b00000000;
 }//~ final Boss