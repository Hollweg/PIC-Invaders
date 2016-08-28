//*****************************************************************************************************
//************************                   PIC INVADERS                ******************************
//************************             Última modificação: 08/16         ******************************
//************************                   Disponível em               ******************************
//************************             https://github.com/Hollweg        ******************************
//*****************************************************************************************************

sbit LCD_RS at LATB1_bit;
sbit LCD_EN at LATB0_bit;
sbit LCD_D4 at LATB4_bit;
sbit LCD_D5 at LATB5_bit;
sbit LCD_D6 at LATB6_bit;
sbit LCD_D7 at LATB7_bit;

sbit LCD_RS_Direction at TRISB1_bit;
sbit LCD_EN_Direction at TRISB0_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;

short posicao_nave = 0b00000001;                            // posicao da minha nave principal
short armazena_enterprise = 0b00000000;                     // armazena posicao nave principal para chamada e escrita de funçao
short armazena_pos_tiro = 0b00000000;                       // armazena posiçao tiro para teste de explosao de nave inimiga
short tiro = 0b00000010;                                    // variavel tiro - usada para correr a tela, ponto a ponto
short testa_tiro = 0b00000000;                              // variavel testa_tiro, criada para saber se foi pressionado botão e apenas executar o for do tiro
short store_tiro = 0b00000000;                              // variavel criada para armazenar a posicao do tiro - teste se linha 1 ou 2
short pos_inimigo_final = 0b00000000;                       // ultima posicao da nave, que se ocasionada, causa game over
short armazena_pos_inimigo1 = 0b00000000;                   // armazena posicao inimigo 1 para chamada e escrita de funçao
short armazena_pos_inimigo2 = 0b00000000;                   // armazena posicao inimigo 2 para chamada e escrita de funçao
short armazena_pos_inimigo3 = 0b00000000;                   // armazena posicao inimigo 3 para chamada e escrita de funçao
short testa_inimigo1;                                       // armazena posicao inimigo 1 para teste com armazena_pos_tiro para explodir nave inimiga
short testa_inimigo2;                                       // armazena posicao inimigo 2 para teste com armazena_pos_tiro para explodir nave inimiga
short testa_explosao;                                       // Ainda nao usada
short linha1 = 0b00000000;                                  // Variavel usada para força explosao na linha certa - Testada em Teste_NaveTiro
short linha2 = 0b00000000;                                  // Variavel usada para força explosao na linha certa - Testada em Teste_NaveTiro
short testa_primeira_explosao = 0b00000000;                 // Variavel que testa a explosao antes da chamada de funçao e avanço do tiro
short game_over = 0b00000000;                               // variavel que testa final de jogo
short especial = 0b00000000;                                // variavel que armazena especial
short dano_boss1 = 0b00000000;                              // Variavel criada para armazenar dano recebido pelo boss
short dano_boss2 = 0b00000000;                              // Variavel criada para armazenar dano recebido pelo Boss
short Boss_teste = 0b00000000;                              // Variavel criada para testar se estiver em funcao Boss ou nao, de forma que chame o game over de uma forma ou outra


/***********************************************
 * Name:
 *    CustomChar
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Caracteres especiais usados ao longo do projeto
 ************************************************/
void CustomChar(){

    const char character1[] = {0,24,4,22,22,4,24,0};           //Space Invaders nave
    const char character2[] = {0,0,6,12,6,0,0,0};              //Space Invaders Nave Inmiga 1
    const char character3[] = {0,3,6,10,6,3,0,0};              //Space Invaders Nave Inmiga 2
    const char character4[] = {0,0,17,10,4,10,17,0};           //Space Invaders Explosao
    const char character5[] = {0,0,4,4,31,4,4,0};              //Space Invaders Explosao 2
    const char character6[] = {0,0,0,14,14,0,0,0};             //Space Invaders Tiro de nave
    const char character7[] = {5,6,14,28,28,14,6,5};           //Space Invaders Nave Inmiga 3
    const char character8[] = {6,12,12,28,28,12,12,6};         //Boss
    //const char character9[] = {15,15,7,6,4,28,6,3};          //Space Invaders Tiro Special

    char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character8[i]);

}//~ final CustomChar

/***********************************************
 * Name:
 *    ApagaRam
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Funcao Responsavel por limpar os valores do bank 1 e 2 da memória do PIC
 *    De forma a resetar o microcontrolador, a fim de ser um reset por software
 ************************************************/
void ApagaRam(){
                                                             
    char *ponteiro_apaga, contador;                          
    ponteiro_apaga = (char) 0x00;                            //Bank 1 - Valor Inicial
    
    for(contador=0;contador<0x00;contador++)
        *ponteiro_apaga++ = 0;

    ponteiro_apaga = (char ) 0x100;                          // Bank 2 - Valor Inicial
    for(contador=0;contador<0x100;contador++)
        *ponteiro_apaga++ = 0;
/*os bancos 2 e 3 tem pouquissimos bytes em qualquer pic, e podem ser descartados*/

}//~ final ApagaRam

/***********************************************
 * Name:
 *    Random
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Funcao responsavel por gerar um valor pseudorandomico
 ************************************************/
int Random(){

    int alea, random;
    char randomico;
    srand (randomico);                                   //gera numero aleatorio toda vez q executar o programa
    alea = rand()%255;                                   //%255 gera de 0  a 255 ai você define o valor q quiser

    if ((alea>= 0) && (alea<50))                         // Divide o numero char em 6 posiçoes, de forma com que de acordo com o numero
        random = 1;                                      // randomico gerado, ele entra em um uma ordem "randomica pré definida"
                                                         // no main da funçao
    else if ((alea>= 50) && (alea<100))
        random = 2;

    else if ((alea>= 100) && (alea<150))
        random = 3;

    else if ((alea>= 150) && (alea<200))
        random = 4;

    else if ((alea>= 200) && (alea<255))
        random = 5;

    return random;

}//~ final Random

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
    Lcd_out (1,3, "GAME OVER!!");
    delay_ms(5000);
                  
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
 *    --
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
 *    --
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

    while (i<16)     {                                                        //execução rotina principal - andar naves
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
void Ataque2 (){

    int i  = 0b00000000;                           
    int testa = 0b00000000;
    short explode_nave = 0b00000000;
    short tiro_especial;

    while (i<16){                                  
        linha2 = 0b00000010;
        Lcd_Cmd(_LCD_CLEAR);
        ChamaEnterprise();
        switch (i){
            case 1:
                Lcd_chr (2,16, 2);                 
                armazena_pos_inimigo2 = 0b00001111;
                testa_inimigo2 =  0b00010000;
                              
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

/***********************************************
 * Name:
 *    Menu
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    Definida todas palavras utilizadas em menu
 *    de acordo com solitacao por usuario
 *    Declaraçao de todas variaveis char usadas na funcao
 ************************************************/
void Menu(){                                                                 
                                                                             
    char txt1[] =  "PIC INVADERS";                                           
    char txt2[] =  "VIA LACTA";                                              
    char txt3[] =  "NEW GAME";
    char txt4[] =  "ABOUT";
    char txt5[] =  "Desenvolvido por:";
    char txt6[] =  "Hollweg";
    char txt7[] =  "v.6";
    char txt8[] =  "Diario";
    char txt9[] =  "do Capitao";
    char txt10[] =  "Data Estelar";
    char txt11[] =  "1512.2";
    char txt12[] =  "Seguiamos para o";
    char txt13[] =  "Planeta Kripke";
    char txt14[] =  "Em Busca do";
    char txt15[] =  "Chocolate Magico";
    char txt16[] =  "Mas avistamos";
    char txt17[] =  "Formigas Aliens";
    char txt18[] =  "Famintas Crueis";
    char txt19[] =  "Sedentas por";
    char txt20[] =  "Acucar Humano.";
    char txt21[] =  "Colocamos Nossos";
    char txt22[] =  "Phasers no Modo";
    char txt23[] =  "Caramelizar...";
    char txt24[] =  "A Batalha Estava";
    char txt25[] =  "Proxima...";
    char txt26[] =  "Sacamos as Armas";
    char txt27[] =  "E Combatemos";
    char txt28[] =  "Esses Aliens";
    char txt35[] =  "Diabeticos!";
    char txt29[] =  "HELP";
    char txt30[] =  "Button 0:UP";
    char txt31[] =  "Button 1:DOWN";
    char txt32[] =  "Button 2:Fire!";
    char txt33[] =  "Button 3:SPECIAL";
    char txt34[] =  "NIVEL 1";
    char txt36[] =  "EM BUSCA DO";
    char txt37[] =  "CHOCOLATE MAGICO";

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_out (1,3, txt1);
    Lcd_out (2,4, txt2);
    delay_ms (5000);
 
    Lcd_Cmd(_LCD_CLEAR);
    Lcd_out (1,3, txt36);
    Lcd_out (2,1, txt37);
    delay_ms (5000);

menu:

    Lcd_Cmd(_LCD_CLEAR);
    Lcd_out (1,3, txt3);                   //Tela de apresentação do Game
    Lcd_out (2,3, txt4);                   //New Game, About e Help
    Lcd_out (1,12, txt29);                 //Para voltar para Menu - Pressionar Bit 1 do PORTD
    delay_ms (250);

    if (button(&PORTD, 0, 200, 1)){         //Inicia o Game com frase clássica
                                            //Mostrar para usuario que o desenvolvedor não tava de brincadeira e que o jogo é Fromhell
        Lcd_Cmd(_LCD_CLEAR);                  
        Lcd_out (1,6, txt8);
        Lcd_out (2,4, txt9);
        delay_ms (4000);
      
        if (button(&PORTD, 0, 200, 1))
            goto nivel1;
      
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,3, txt10);
        Lcd_out (2,6, txt11);
        delay_ms (4000);
      
        if (button(&PORTD, 0, 200, 1))
            goto nivel1;
      
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,1, txt12);
        Lcd_out (2,2, txt13);
        delay_ms (4000);
      
        if (button(&PORTD, 0, 200, 1))
            goto nivel1;
      
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,3, txt14);
        Lcd_out (2,1, txt15);
        delay_ms (4000);
      
        if (button(&PORTD, 0, 200, 1))
            goto nivel1;
      
          Lcd_Cmd(_LCD_CLEAR);
          Lcd_out (1,2, txt16);
          Lcd_out (2,1, txt17);
          delay_ms (4000);
      
        if (button(&PORTD, 0, 200, 1))
            goto nivel1;
      
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,2, txt18);
        Lcd_out (2,3, txt19);
        delay_ms (4000);
      
        if (button(&PORTD, 0, 200, 1))
            goto nivel1;
      
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,2, txt20);
        Lcd_out (2,1, txt21);
        delay_ms (4000);
      
        if (button(&PORTD, 0, 200, 1))
            goto nivel1;
      
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,1, txt22);
        Lcd_out (2,2, txt23);
        delay_ms (4000);
      
        if (button(&PORTD, 0, 200, 1))
            goto nivel1;
      
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,1, txt24);
        Lcd_out (2,4, txt25);
        delay_ms (4000);
      
        if (button(&PORTD, 0, 200, 1))
            goto nivel1;
      
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,1, txt26);
        Lcd_out (2,2, txt27);
        delay_ms (4000);
      
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,1, txt28);
        Lcd_out (2,4, txt35);
        delay_ms (4000);
      
nivel1:
      
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,5, txt34);
        delay_ms (5000);
      
        return;     
    }

    else if (button(&PORTD, 1, 200, 1)) {       //Escreve Informação de como foi desenvolvido o game e versao atual
        while (1){                               
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_out (1,1, txt5);
            Lcd_out (2,1, txt6);
            Lcd_out (2,13, txt7);
            delay_ms (600);

            if (button(&PORTD, 1, 200, 1))
                goto menu;

        }
    }

    else if (button(&PORTD, 2, 200, 1)) {   //Escreve Instruções de jogabilidade
        while (1){                         //Lembrete: Pressionar bit 1 do PORTD para voltar para Menu ROOT
            if (button(&PORTD, 1, 200, 1))
                goto menu;

            Lcd_Cmd(_LCD_CLEAR);
            Lcd_out (1,1, txt30);
            Lcd_out (2,1, txt31);
            delay_ms (2000);

            if (button(&PORTD, 1, 200, 1))
                goto menu;

            Lcd_Cmd(_LCD_CLEAR);
            Lcd_out (1,1, txt32);
            Lcd_out (2,1, txt33);
            delay_ms (2000);

            if (button(&PORTD, 1, 200, 1))
                goto menu;
        }
    }
  goto menu;
}//~ final Menu

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
            lcd_chr (1, 1, 4)
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
 
/***********************************************
 * Name:
 *    main()
 * In:
 *    --
 * Out:
 *    --
 * Description:
 *    --
 *
 ************************************************/
void main(){

  int var_random;                                                               
  short testa_final;                                                            
  short k;
   
  TRISB = 0b00000000;
  TRISD = 0b00001111;

  PORTB = 0;
  PORTD = 0;

  ANSELA = 0;
  ANSELB = 0;
  ANSELC = 0;
  ANSELD = 0;
   
  Lcd_Init();                         
  Lcd_Cmd(_LCD_CLEAR);                
  Lcd_Cmd(_LCD_CURSOR_OFF);           

comeco:

  Lcd_Cmd(_LCD_CLEAR);
  Menu();                             
  CustomChar();                       
  Lcd_Cmd(_LCD_CLEAR);

inicio_jogo:

  var_random = Random();                //Chama funcao randomica - Testado cada valor de acordo com funcao pré-definida
                                        //no topo do código - Lógica de geraçâo "randomica pré definida"
  if (var_random == 1){                 //Executa rotina de acordo com a variavel randomica gerada pelo PIC
                                        //Segue sequencia pré definida por programados, testando,intercaladamente, se foi ou nao game over
      for (k = 0; k<2; k++){            //Repete testes abaixo, mais 4 vezes
          Ataque1();
          Ataque3();
          especial = 0b00000001;
          Ataque4();
          Ataque2();
          especial = 0b00000001;
          Ataque5();
          Ataque6();
          especial = 0b00000001;
      }
                           
      k = 0;
     
      testa_final = Boss();         //Testa o valor da funcao Boss
      if (testa_final == 1)         //se 1, parabéns, jogo terminado e de volta a tela inicial  - reseta o game
          goto comeco;              //se 0, a nave do usuário é destruída e o jogo é recomeçado
                          
      else if (testa_final == 0){
          Lcd_Cmd(_LCD_CLEAR);
          Lcd_Out (1, 4, "Nivel 1");
          delay_ms (3000);
          goto inicio_jogo;
      }
                                 
      Ataque3();                   //E chamará as funções Boss, 16 vezes, de modo que o usuário deva dividir os ataques no boss
      Ataque4();                   //de 1 a 1, a modo de destruí-los simultaneamente. Caso contrário, é game over e nave do usuário é destruida
     
      testa_final = Boss();
      if (testa_final == 1)
          goto comeco;
                          
      else if (testa_final == 0){
          Lcd_Cmd(_LCD_CLEAR);
          Lcd_Out (1, 4, "Nivel 1");
          delay_ms (3000);
          goto inicio_jogo;
      }
      Ataque2();
      Ataque5();

      testa_final = Boss();
      if (testa_final == 1)
             goto comeco;
                          
      else if (testa_final == 0){
          Lcd_Cmd(_LCD_CLEAR);
          Lcd_Out (1, 4, "Nivel 1");
          delay_ms (3000);
          goto inicio_jogo;
      }
      Ataque6();
      Ataque6();

      testa_final = Boss();
      if (testa_final == 1)
          goto comeco;
                          
      else if (testa_final == 0) {
          Lcd_Cmd(_LCD_CLEAR);
          Lcd_Out (1, 4, "Nivel 1");
          delay_ms (3000);
          goto inicio_jogo;
      }
      Ataque1();
      Ataque2();
     
      if (game_over == 1){
          testa_final = Boss();
          if (testa_final == 1)
              goto comeco;
                      
          else if (testa_final == 0){
              Lcd_Cmd(_LCD_CLEAR);
              Lcd_Out (1, 4, "Nivel 1");
              delay_ms (3000);
              goto inicio_jogo;
          }
          Ataque4();
          Ataque5();
     
          testa_final = Boss();
          if (testa_final == 1)
              goto comeco;
                          
          else if (testa_final == 0) {
              Lcd_Cmd(_LCD_CLEAR);
              Lcd_Out (1, 4, "Nivel 1");
              delay_ms (3000);
              goto inicio_jogo;
          }

          Ataque5();
          Ataque6();

          testa_final = Boss();
          if (testa_final == 1)
             goto comeco;
                          
          else if (testa_final == 0){
              Lcd_Cmd(_LCD_CLEAR);
              Lcd_Out (1, 4, "Nivel 1");
              delay_ms (3000);
              goto inicio_jogo;
          }

          Ataque6();
          Ataque3();

          testa_final = Boss();
          if (testa_final == 1)
              goto comeco;
                          
          else if (testa_final == 0){
              Lcd_Cmd(_LCD_CLEAR);
              Lcd_Out (1, 4, "Nivel 1");
              delay_ms (3000);
              goto inicio_jogo;
          }
       }
    }
    else if (var_random == 2){
        for (k = 0; k<2; k++){
            Ataque5();
            Ataque2();
            especial = 0b00000001;     
            Ataque4();
            Ataque6();
            especial = 0b00000001;
            Ataque3();
            especial = 0b00000001;
            Ataque1();
            especial = 0b00000001;
        }
        
        k = 0;
        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }

        Ataque2();
        Ataque3();

        testa_final = Boss();
        if (testa_final == 1)
             goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque1();
        Ataque4();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
            
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque4();
        Ataque5();

        testa_final = Boss();
        if (testa_final == 1)
             goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque6();
        Ataque6();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
          }
        Ataque5();
        Ataque6();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque3();
        Ataque4();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque2();
        Ataque5();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }                       
      }

    else if (var_random == 3){
        for (k = 0; k<2; k++){
            Ataque3();
            Ataque2();
            especial = 0b00000001;
            Ataque5();
            Ataque4();
            especial = 0b00000001;
            Ataque1();
            Ataque6();
            especial = 0b00000001;
        }

        k = 0;

        testa_final = Boss();
        if (testa_final == 1)
             goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }

        Ataque5();
        Ataque4();

        testa_final = Boss();
        if (testa_final == 1)
             goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque6();
        Ataque3();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque2();
        Ataque5();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque1();
        Ataque3();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                        
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque4();
        Ataque3();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque1();
        Ataque2();

        testa_final = Boss();
        if (testa_final == 1)
             goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque6();
        Ataque4();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
    }

    else if (var_random == 4){
        for (k = 0; k<2; k++){
            Ataque4();
            Ataque5();
            especial = 0b00000001;
            Ataque1();
            Ataque6();
            especial = 0b00000001;
            Ataque3();
            Ataque2();
            especial = 0b00000001;
        }
                           
        k = 0;

        testa_final = Boss();
        if (testa_final == 1)
             goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }

        Ataque2();
        Ataque1();

        testa_final = Boss();
        if (testa_final == 1)
             goto comeco;
        
        else if (testa_final == 0) {
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque3();
        Ataque4();

        testa_final = Boss();
        if (testa_final == 1)
             goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque6();
        Ataque3();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          

        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque2();
        Ataque1();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                        
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque4();
        Ataque6();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque6();
        Ataque2();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0) {
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }
        Ataque1();
        Ataque3();

        testa_final = Boss();
        if (testa_final == 1)
            goto comeco;
                          
        else if (testa_final == 0){
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_Out (1, 4, "Nivel 1");
            delay_ms (3000);
            goto inicio_jogo;
        }                      
    }             
}//~ final main