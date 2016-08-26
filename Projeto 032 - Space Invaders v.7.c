
//----------------------------------------------- Definicoes de tempo de REPIQUE e Interrupcoes ----------------------------------------------------------
// Definices LCD   ---------------   Padrao para funcionamento de qualquer software que utilize Display de LCD ------------------------------------------

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

// ----------------------------------------------------------------- Final de Definicoes LCD ------------------------------------------------------------
// -------------------------------------------------- Inicio Definicoes de Palavras LCD e Variaveis Globais--------------------------------------------

short posicao_nave = 0b00000001;                            // posicao da minha nave principal
short armazena_enterprise = 0b00000000;                     // armazena posicao nave principal para chamada e escrita de fun�ao
short armazena_pos_tiro = 0b00000000;                       // armazena posi�ao tiro para teste de explosao de nave inimiga
short tiro = 0b00000010;                                    // variavel tiro - usada para correr a tela, ponto a ponto
short testa_tiro = 0b00000000;                              // variavel testa_tiro, criada para saber se foi pressionado bot�o e apenas executar o for do tiro
short store_tiro = 0b00000000;                              // variavel criada para armazenar a posicao do tiro - teste se linha 1 ou 2
short pos_inimigo_final = 0b00000000;                       // ultima posicao da nave, que se ocasionada, causa game over
short armazena_pos_inimigo1 = 0b00000000;                   // armazena posicao inimigo 1 para chamada e escrita de fun�ao
short armazena_pos_inimigo2 = 0b00000000;                   // armazena posicao inimigo 2 para chamada e escrita de fun�ao
short armazena_pos_inimigo3 = 0b00000000;                   // armazena posicao inimigo 3 para chamada e escrita de fun�ao
short testa_inimigo1;                                       // armazena posicao inimigo 1 para teste com armazena_pos_tiro para explodir nave inimiga
short testa_inimigo2;                                       // armazena posicao inimigo 2 para teste com armazena_pos_tiro para explodir nave inimiga
short testa_explosao;                                       // Ainda nao usada
short linha1 = 0b00000000;                                  // Variavel usada para for�a explosao na linha certa - Testada em Teste_Nave_Tiro
short linha2 = 0b00000000;                                  // Variavel usada para for�a explosao na linha certa - Testada em Teste_Nave_Tiro
short testa_primeira_explosao = 0b00000000;                 // Variavel que testa a explosao antes da chamada de fun�ao e avan�o do tiro
short game_over = 0b00000000;                               // variavel que testa final de jogo
short especial = 0b00000000;                                // variavel que armazena especial
short dano_boss1 = 0b00000000;                              // Variavel criada para armazenar dano recebido pelo boss
short dano_boss2 = 0b00000000;                              // Variavel criada para armazenar dano recebido pelo Boss
short Boss_teste = 0b00000000;                              // Variavel criada para testar se estiver em funcao Boss ou nao, de forma que chame o game over de uma forma ou outra


// -------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------  Inicio Definicoes Caracteres especiais ----------------------------------------------------------

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
    //for (i = 0; i<=7; i++) Lcd_Chr_CP(character9[i]);

}

// -------------------------------------------------------- Final Definicoes Caracteres Especiais --------------------------------------------------------------
// -------------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// -------------------------------------------------------------- Inicio Funcao Apaga_RAM ---------------------------------------------------------------------


void apaga_ram(){
                                                             //Funcao Responsavel por limpar os valores do bank 1 e 2 da mem�ria do PIC
    char *ponteiro_apaga, contador;                          //De forma a resetar o microcontrolador, a fim de ser um reset por software
    ponteiro_apaga = (char) 0x00;                            //Bank 1 - Valor Inicial
    
    for(contador=0;contador<0x00;contador++)
        *ponteiro_apaga++ = 0;

    ponteiro_apaga = (char ) 0x100;                          // Bank 2 - Valor Inicial
    for(contador=0;contador<0x100;contador++)
        *ponteiro_apaga++ = 0;

/*os bancos 2 e 3 tem pouquissimos bytes em qualquer pic, e podem ser descartados*/

}

// ---------------------------------------------------------------- Final Funcao Apaga_RAM ---------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------- Inicio Funcao Gera Random. ----------------------------------------------------------------

int random(){

    int alea, random;
    char randomico;
    srand (randomico);                                   //gera numero aleatorio toda vez q executar o programa
    alea = rand()%255;                                   //%255 gera de 0  a 255 ai voc� define o valor q quiser

    if ((alea>= 0) && (alea<50))                         // Divide o numero char em 6 posi�oes, de forma com que de acordo com o numero
        random = 1;                                      // randomico gerado, ele entra em um uma ordem "randomica pr� definida"
                                                         // no main da fun�ao
    else if ((alea>= 50) && (alea<100))
        random = 2;

    else if ((alea>= 100) && (alea<150))
        random = 3;

    else if ((alea>= 150) && (alea<200))
        random = 4;

    else if ((alea>= 200) && (alea<255))
        random = 5;

    return random;

}

// ---------------------------------------------------------------- Final Funcao Gera Random.------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------- Inicio Funcao Game_Over ------------------------------------------------------------------

int GameOver() {
                                                                           //Apenas testa posicao. Se essa funcao for chamada, � fim de jogo para o usuario, sinal de que deixou uma nave inimiga passar de sua tela
    short j = 0;                                                           //e posteriormente � jogado Fim de jogo no LCD. Apenas � feita uma animacao na tela
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
        apaga_ram();
        return 0;
    }
}

// ---------------------------------------------------------- Final Funcao Game_Over  ------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------- Inicio Funcao Win_Game ------------------------------------------------------------------

void Win_Game(){

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
  
}

// ---------------------------------------------------------- Final Funcao Win_Game  ------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------- Inicio Funcao Escreve_Nave Principal ----------------------------------------------------------------------

void escreve_enterprise(){                                         // Testa se a nave principal foi mudada de lugar

    if (button(&PORTD, 0, 50, 1)){                                 //Se pressionado bit 0 de PORTD
        posicao_nave = 0b00000001;                                 //Nave � escrita e � armazenado valor 1 para compara��o posterior
        armazena_enterprise = 0b00000001;                          //Nave Principal escrita na posicao desejada
        Lcd_chr (1,1, 0);
    }

    else if (button(&PORTD, 1, 50, 1)){                           //Se pressionado bit 1 de PORTD
        posicao_nave = 0b00000010;                                //Nave � escrita e � armazenado valor 2 para compara��o posterior
        armazena_enterprise = 0b00000010;                         //Nave Principal escrita na posicao desejada
        Lcd_chr (2,1, 0);
    }

}

// -------------------------------------------------------------- Final Escreve_Nave Principal ------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------- Chama Enterprise ------------------------------------------------------------------


void Chama_Enterprise() {                                                 //Funcao super simples
                                                                          //Apenas chama a nave principal na tela
    switch (posicao_nave){                                                //de acordo com a ultima posicao de memoria switch entre posicao 0 e 1
        case (0b00000001):                                                //reescreve na tela de acordo com ultimo endere�amento
            Lcd_chr (1,1, 0);                                             //de memoria
            break;

        case (0b00000010):
            Lcd_chr (2,1, 0);
            break;
    }
}

// ------------------------------------------------------------- Final Funcao Chama Enterprise --------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------- Chama Inimigo ------------------------------------------------------------------

void Chama_Inimigo() {                                                  //Funcao Chama_Inimigo
                                                                        //Testa em qual posicao foi armazenado o inimigo, e toda
                                                                        //vez que for solicitada, retorna o valor armazenado - 1
                                                                        //de forma a atualizar a tela, de acordo com o necessitado
                                                                        //pelo usu�rio
    if (linha1 == 0b00000001){
        if (armazena_pos_inimigo1 > 0){
            switch (armazena_pos_inimigo1){
                case (0b00001111):
                    Lcd_chr (1,15, 1);
                    break;                                      //testa primeiro se a variavel que representa inimigo na primeira
                                                                              //linha � maior que um, e entra em uma fun��o que chama a mesma
                case (0b00001110):                               //Sen�o se, testa se posicao inimigo est� na linha 2, de forma
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
                                                            //linha � maior que um, e entra em uma fun��o que chama a mesma
            case (0b00001110):                              //Sen�o se, testa se posicao inimigo est� na linha 2, de forma
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
                                                                //linha � maior que um, e entra em uma fun��o que chama a mesma
                case (0b00001110):                              //Sen�o se, testa se posicao inimigo est� na linha 2, de forma
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
                                                            //linha � maior que um, e entra em uma fun��o que chama a mesma
            case (0b00001110):                              //Sen�o se, testa se posicao inimigo est� na linha 2, de forma
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
                                                            //linha � maior que um, e entra em uma fun��o que chama a mesma
            case (0b00001110):                              //Sen�o se, testa se posicao inimigo est� na linha 2, de forma
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
}
// ------------------------------------------------------------- Final Funcao Chama Inimigo --------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------- Inicio Funcao Testa_Tiro_Inimigo ------------------------------------------------------------------

int Testa_Tiro_Inimigo(){

    int testa_explosao;
    if ((armazena_pos_tiro  == testa_inimigo1) && (linha1 == 0b00000001) && (store_tiro == 0b00000001)){         //Funcao que tem como objetivo testar se o inimigo possui a mesma posicao da nave principal
        Lcd_Cmd(_LCD_CLEAR);                                                                                     //Para isso sao feitos diversos testes, usando a variavel que armazena a posicao do tiro com
        Chama_Enterprise();                                                                                      //a variavel que testa a posicao do inimigo, de forma que se estiver em linha 1, explode
        lcd_chr (1, testa_inimigo1, 3);                                                                          //a posicao referente ao inimigo na linha 1, se na linha 2, explode na linha 2.
        delay_ms (300);
        Lcd_Cmd(_LCD_CLEAR);
        Chama_Enterprise();
        testa_explosao = 0b00000001;
        pos_inimigo_final = 0b00000000;
        return testa_explosao;
    }
    else if ((armazena_pos_tiro == testa_inimigo2) && (linha2 == 0b00000010) && (store_tiro == 0b00000010)){
        Lcd_Cmd(_LCD_CLEAR);
        Chama_Enterprise();
        lcd_chr (2, testa_inimigo2, 3);
        delay_ms (300);
        Lcd_Cmd(_LCD_CLEAR);
        Chama_Enterprise();
        testa_explosao = 0b00000001;
        pos_inimigo_final = 0b00000000;
        return testa_explosao;
    }
}
// --------------------------------------------------------- Final Funcao Testa_Tiro_Inimigo ------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------- Inicio Funcao Nave_tiro ------------------------------------------------------------------

void nave_tiro(){           

    int teste = 0;                                //Funcao que chama e testa a posicao do tiro, quando solicitado
                                                  //pelo usu�rio
    if (store_tiro == 0b00000001){                //Testa se a vari�vel armazena tiro � 1 ou 2
        Lcd_Cmd(_LCD_CLEAR);                      //e dessa forma, atira em linha 1 ou 2
        Chama_Enterprise();                       //Chama todas as fun��es de escrita na tela e
        Chama_Inimigo();                          //e testa onde escrever o tiro, ap�s executado
                                      
        teste = Testa_Tiro_Inimigo();
        if (teste == 0b00000001){
            testa_primeira_explosao = 0b00000001;
            linha1 = 0b00000000;
            Lcd_Cmd(_LCD_CLEAR);
            Chama_Enterprise();
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
        Chama_Enterprise();
        Chama_Inimigo();
        teste = Testa_Tiro_Inimigo();
                                      
        if (teste == 0b00000001){
            testa_primeira_explosao = 0b00000001;
            linha2 = 0b00000000;
            Lcd_Cmd(_LCD_CLEAR);
            Chama_Enterprise();
            testa_tiro = 0b00000000;
            armazena_pos_tiro = 0b00000000;
        }
        else
            lcd_chr (2, tiro, 5);
        tiro++;
        armazena_pos_tiro  = tiro;
    }
    teste = 0;
}
// ------------------------------------------------------------- Final Funcao Nave_Tiro ------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------- Inicio Funcao Special----------------------------------------------------------------------

int special(){                                                                //Funcao Especial
                                                                              //De forma que testa se usuario pressionou botao do Ataque Especial
    if ((((button(&PORTD, 3, 200, 1))) && (especial == 1))){                  //Se sim, explode a nave, e obriga funcao a sair do for da nave inimiga
        Lcd_Cmd(_LCD_CLEAR);
        Chama_Enterprise();
          
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
}

// ------------------------------------------------------------- Final Funcao Special----------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------- Inicio Funcao Ataque_1 ----------------------------------------------------------------------

void ataque_1 (){

    int i = 0b00000000;                                         //contador posicao nave_inimigo
    int testa = 0b00000000;
    short explode_nave = 0b00000000;
    short tiro_especial;

    while (i<16)     {                                                        //execu��o rotina principal - andar naves
        linha1 = 0b00000001;
        Lcd_Cmd(_LCD_CLEAR);                                                  //onde ser� escrito o caracter de explos�o de nave
        Chama_Enterprise();                                                   //Chama nave_principal
        
        switch (i) {
            case 1:
                Lcd_chr (1,16, 1);                                    //Nave Inimiga I
                armazena_pos_inimigo1 = 0b00001111;                   //Armazena posicao do inimigo para teste posterior
                testa_inimigo1 = 0b00010000;                          //Atribui valor 16 para a vari�vel
                Chama_Enterprise();                                   //Chama ultima posicao de nave principal na tela

                if ((button(&PORTD, 2, 200, 1))){                     //Se o bit 2 do portd estiver pressionado
                    store_tiro = posicao_nave;           //armazena na variavel a posicao da nave
                    nave_tiro();                         //testa se usuario pediu para ser lan�ado um tiro
                    testa_tiro = 0b00000001;             //atribui 1 a testa_tiro
                }
                                                              
                testa = Testa_Tiro_Inimigo();                                         //chama a funcao testa_tiro, de modo que se coincidir, explode a nave

                /*tiro_especial = special();
                if (tiro_especial == 1){
                    i = 15;                          //linha1 = 0 (reseta vari�vel)
                    linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                    explode_nave = 0b00000001;
                }*/

                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)       // e atribui valor 1 a testa
                    i = 15;                                                             //se a vari�vel testa for = 1 e testa_primeira_explosao = 1
                                                                                        //i = 15, de modo que saia do for
                delay_ms (300);
                break;

            case 2:
                              Lcd_chr (1,15, 1);                              // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001110;             //armazena posicao do inimigo para atualizar a tela
                              testa_inimigo1 = 0b0001111;                     //armazena posicao inimigo para teste em colisao com tiro

                              Chama_Enterprise();                            //Chama ultima posicao de nave principal na tela
                              escreve_enterprise();                          //Testa se usuario quer mudar nave principal
                              
                              testa = Testa_Tiro_Inimigo();                  //recebe valor da funcao de teste tiro
                              if (testa == 0b00000001){                      //se a fun��o for = 1, armazena 15 no i
                                            i = 15;                          //linha1 = 0 (reseta vari�vel)
                                            linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                            explode_nave = 0b00000001;
                                                       }
                                                       
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }  */
                                                      
                              if (explode_nave == 0b00000000){                            //se variavel for = 0 (testada anteriormente)
                                          testa = Testa_Tiro_Inimigo();                   //recebe posicao da funcao
                                                                                          //de lugar - linha 1 ou 2
                                        
                                          if (testa_tiro == 0b00000001){                  //Testa se tiro = 1, e dessa forma executa a fun��o tiro sem
                                                   nave_tiro();                           //que o usuario pressione o botao
                                                                       }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){          //se pressinado
                                                           store_tiro = posicao_nave;                                   //store_posicao recebe posicao da nave
                                                           nave_tiro();                                                 //chama funcao do tiro
                                                           testa_tiro = 0b00000001;                                     //atribiui 1 a vari�vel testa_tiro na fun��o de chamar tiro
                                                                               }                                        //testa se usuario pediu para ser lan�ado um tiro
 
                                          testa = Testa_Tiro_Inimigo();                                         //recebe o valor da variavel Testa_Tiro_Inimigo � variavel testa
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){    //se testa for 1 OU testa_primeira_explosao for 1, atribui 15 ao i e sai do for
                                                        i = 15;                                                 //Segue mesma linha de racioc�nio nos casos seguintes
                                                                                                           }
                                                             }
                              delay_ms (300);
                              break;

            case 3:
                              Lcd_chr (1,14, 1);                               // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001101;
                              testa_inimigo1 = 0b00001110;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                        }
                                                        
                               /*tiro_especial = special();
                               if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }   */

                               if (explode_nave == 0b00000000){
                                              if (testa_tiro == 0b00000001){
                                                       nave_tiro();
                                                                           }

                                              else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                            store_tiro = posicao_nave;
                                                            nave_tiro();
                                                            testa_tiro = 0b00000001;
                                                                                  }            //testa se usuario pediu para ser lan�ado um tiro

                                                            testa = Testa_Tiro_Inimigo();
                                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                                          i = 15;         }
                                                                            }
                              delay_ms (300);
                              break;

                     case 4:
                              Lcd_chr (1,13, 1);                              // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001100;
                              testa_inimigo1 = 0b00001101;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }

                              /* tiro_especial = special();
                               if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }             */

                               if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                    }
                              delay_ms (300);
                              break;

                      case 5:
                              Lcd_chr (1,12, 1);                               // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001011;
                              testa_inimigo1 = 0b00001100;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }*/

                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                               }            //testa se usuario pediu para ser lan�ado um tiro
                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                    }
                              delay_ms (300);
                              break;

                      case 6:
                              Lcd_chr (1,11, 1);                               // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001010;
                              testa_inimigo1 =  0b00001011;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }                */

                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro
                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                    }
                              delay_ms (300);
                              break;

                      case 7:
                              Lcd_chr (1,10, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001001;
                              testa_inimigo1 =  0b00001010;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                       }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }  */

                              if (explode_nave == 0){
                                        if (testa_tiro == 1){
                                                 nave_tiro();
                                                           }

                                        else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                         store_tiro = posicao_nave;
                                                         nave_tiro();
                                                         testa_tiro = 0b00000001;
                                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                         testa = Testa_Tiro_Inimigo();
                                         if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                      i = 15;         }

                                                 }
                              delay_ms (300);
                              break;

                      case 8:
                              Lcd_chr (1,9, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001000;
                              testa_inimigo1 =  0b00001001;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }                 */

                              if (explode_nave == 0b00000000){
                                                if (testa_tiro == 0b00000001){
                                                         nave_tiro();
                                                                   }

                                                else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                                 store_tiro = posicao_nave;
                                                                 nave_tiro();
                                                                 testa_tiro = 0b00000001;
                                                                                    }            //testa se usuario pediu para ser lan�ado um tiro

                                                testa = Testa_Tiro_Inimigo();
                                                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                              i = 15;         }
                                                    }
                              delay_ms (300);
                              break;

                      case 9:
                              Lcd_chr (1,8, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00000111;
                              testa_inimigo1 =  0b00001000;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                        }

                               /*tiro_especial = special();
                               if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }          */

                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                 }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                       case 10:
                              Lcd_chr (1,7, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00000110;
                              testa_inimigo1 =  0b00000111;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; 
                                                       }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }     */

                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                       case 11:
                              Lcd_chr (1,6, 1);                                // Nave Inimiga
                              armazena_pos_inimigo1 = 0b00000101;
                              testa_inimigo1 =  0b00000110;

                              Chama_Enterprise();
                              escreve_enterprise();
                            
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }        */

                              if (explode_nave == 0b00000000){
                                      if (testa_tiro == 0b00000001){
                                               nave_tiro();
                                                         }

                                      else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                       store_tiro = posicao_nave;
                                                       nave_tiro();
                                                       testa_tiro = 0b00000001;
                                                          }            //testa se usuario pediu para ser lan�ado um tiro

                                      testa = Testa_Tiro_Inimigo();
                                      if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                    i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                        case 12:
                              Lcd_chr (1,5, 1);                                // Nave Inimiga
                              armazena_pos_inimigo1 = 0b00000100;
                              testa_inimigo1 =  0b00000101;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;}

                             /*tiro_especial = special();
                             if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }            */

                              if (explode_nave == 0b00000000){
                                        if (testa_tiro == 0b00000001){
                                                 nave_tiro();
                                                           }

                                        else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                         store_tiro = posicao_nave;
                                                         nave_tiro();
                                                         testa_tiro = 0b00000001;
                                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                        testa = Testa_Tiro_Inimigo();
                                        if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                      i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                        case 13:
                               Lcd_chr (1,4, 1);                               // Nave Inimiga I
                               armazena_pos_inimigo1 = 0b00000011;
                               testa_inimigo1 =  0b00000100;
                               
                               Chama_Enterprise();
                               escreve_enterprise();
                               
                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;}

                               /*tiro_especial = special();
                               if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }       */

                               if (explode_nave == 0b00000000){
                               
                                         if (testa_tiro == 0b00000001){
                                                 nave_tiro();
                                                                      }

                                         else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                         store_tiro = posicao_nave;
                                                         nave_tiro();
                                                         testa_tiro = 0b00000001;
                                                                              }            //testa se usuario pediu para ser lan�ado um tiro

                                         testa = Testa_Tiro_Inimigo();
                                         if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                      i = 15;                                             }
                                                    }
                               delay_ms (300);
                               break;

                        case 14:
                               Lcd_chr (1,3, 1);                               // Nave Inimiga I
                               armazena_pos_inimigo1 = 0b00000010;
                               testa_inimigo1 =  0b00000011;

                               Chama_Enterprise();
                               escreve_enterprise();
                               
                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }

                               /*tiro_especial = special();
                               if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }                     */

                               if (explode_nave == 0b00000000){
                               
                                     if (testa_tiro == 0b00000001){
                                             nave_tiro();
                                                                  }

                                     else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                     store_tiro = posicao_nave;
                                                     nave_tiro();
                                                     testa_tiro = 0b00000001;
                                                                                                         }            //testa se usuario pediu para ser lan�ado um tiro

                                    testa = Testa_Tiro_Inimigo();
                                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                  i = 15;         }
                                                      }

                              delay_ms (300);
                              break;


                        case 15:
                               Lcd_chr (1,2, 1);                               // Nave Inimiga I
                               armazena_pos_inimigo1 = 0b00000001;
                               testa_inimigo1 =  0b00000010;
                               pos_inimigo_final = 0b00000001;
                               
                               Chama_Enterprise();
                               escreve_enterprise();
                               
                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;}
                               
                               /*tiro_especial = special();
                               if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }            */

                               if (explode_nave == 0){
                               
                                       if (testa_tiro == 0b00000001){
                                               nave_tiro();
                                                         }

                                       else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                       store_tiro = posicao_nave;
                                                       nave_tiro();
                                                       testa_tiro = 0b00000001;
                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                        testa = Testa_Tiro_Inimigo();
                                        if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                    i = 15;         }

                                        else  if (pos_inimigo_final == 0b00000001) {
                                                     GameOver();                   }
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
}
// ------------------------------------------------------------------ Final Funcao Ataque_1 -------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------  Inicio Funcao Ataque_2 ----------------------------------------------------------------------

void ataque_2 (){

int i  = 0b00000000;                                //contador posicao nave_inimigo
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;

while (i<16)     {                                                 //execu��o rotina principal - andar naves

        linha2 = 0b00000010;
        Lcd_Cmd(_LCD_CLEAR);
        Chama_Enterprise();

        switch (i) {

                    case 1:
                              Lcd_chr (2,16, 2);                               //Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001111;
                              testa_inimigo2 =  0b00010000;
                              
                              if ((button(&PORTD, 2, 200, 1))){
                                               store_tiro = posicao_nave;
                                               nave_tiro();                   //testa se usuario pediu para ser lan�ado um tiro
                                               testa_tiro = 0b00000001;
                                                              }

                              testa = Testa_Tiro_Inimigo();
                              
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }    */
                                                      
                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                            i = 15;         }
                                            
                              delay_ms (300);
                              break;

                     case 2:
                              Lcd_chr (2,15, 2);                                // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001110;
                              testa_inimigo2 =  0b00001111;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                                             
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }   */

                              if (explode_nave == 0){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                              }

                                           else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                   }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                     case 3:
                              Lcd_chr (2,14, 2);                                // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001101;
                              testa_inimigo2 =  0b00001110;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                                             
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }      */

                              if (explode_nave == 0){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                  }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                         }
                              delay_ms (300);
                              break;

                     case 4:
                              Lcd_chr (2,13, 2);                                // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001100;
                              testa_inimigo2 =  0b00001101;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                            }
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }      */

                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                           else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                      }
                              delay_ms (300);
                              break;

                      case 5:
                              Lcd_chr (2,12, 2);                                // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001011;
                              testa_inimigo2 =  0b00001100;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                            }
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }     */

                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                      case 6:
                              Lcd_chr (2,11, 2);                                // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001010;
                              testa_inimigo2 =  0b00001011;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                            }
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }            */

                              if (explode_nave == 0b0000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                    }
                              delay_ms (300);
                              break;

                      case 7:
                              Lcd_chr (2,10, 2);                                 // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001001;
                              testa_inimigo2 =  0b00001010;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }  */

                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                        store_tiro = posicao_nave;
                                                        nave_tiro();
                                                        testa_tiro = 0b00000001;
                                                                                                               }  //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;                                              }
                                                             }
                              delay_ms (300);
                              break;

                      case 8:
                              Lcd_chr (2,9, 2);                                 // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001000;
                              testa_inimigo2 =  0b00001001;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }    */

                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                   }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                      }
                              delay_ms (300);
                              break;

                      case 9:
                              Lcd_chr (2,8, 2);                                 // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00000111;
                              testa_inimigo2 =  0b00001000;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }

                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }                           */

                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                                               }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;                                             }
                                                             }
                              delay_ms (300);
                              break;

                       case 10:
                              Lcd_chr (2,7, 2);                                 // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00000110;
                              testa_inimigo2 =  0b00000111;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }     */

                              if (explode_nave == 0b00000000){
                                              if (testa_tiro == 0b00000001){
                                                       nave_tiro();
                                                                 }

                                              else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                               store_tiro = posicao_nave;
                                                               nave_tiro();
                                                               testa_tiro = 0b00000001;
                                                                                    }            //testa se usuario pediu para ser lan�ado um tiro

                                              testa = Testa_Tiro_Inimigo();
                                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                            i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                       case 11:
                              Lcd_chr (2,6, 2);                                 // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00000101;
                              testa_inimigo2 =  0b00000110;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }         */

                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;

                                                                                                             }  //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 1){
                                                        i = 15;                                  }
                                                            }
                              delay_ms (300);
                              break;

                        case 12:
                              Lcd_chr (2,5, 2);                                 // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00000100;
                              testa_inimigo2 =  0b00000101;

                              Chama_Enterprise();
                              escreve_enterprise();
                              
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                       }

                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }        */

                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                                            }//testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;                                             }

                                                             }
                              delay_ms (300);
                              break;

                        case 13:
                               Lcd_chr (2,4, 2);                                // Nave Inimiga I
                               armazena_pos_inimigo2 = 0b00000011;
                               testa_inimigo2 =  0b00000100;

                               Chama_Enterprise();
                               escreve_enterprise();
                               
                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }

                              /* tiro_especial = special();
                               if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }           */

                               if (explode_nave == 0b00000000){
                                                  if (testa_tiro == 0b00000001){
                                                                    nave_tiro();
                                                                       }

                                                  else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                                    store_tiro = posicao_nave;
                                                                    nave_tiro();
                                                                    testa_tiro = 0b00000001;
                                                                                                                     }   //testa se usuario pediu para ser lan�ado um tiro

                                                  testa = Testa_Tiro_Inimigo();
                                                  if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                                    i = 15;                                        }
                                                               }
                              delay_ms (300);
                              break;

                        case 14:
                               Lcd_chr (2,3, 2);                                // Nave Inimiga I
                               armazena_pos_inimigo2 = 0b00000010;
                               testa_inimigo2 =  0b00000011;
                               pos_inimigo_final = 0b000000010;

                               Chama_Enterprise();
                               escreve_enterprise();
                               
                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }

                              /* tiro_especial = special();
                               if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }             */

                              if (explode_nave == 0b00000000){
                                              if (testa_tiro == 0b00000001){
                                                       nave_tiro();
                                                                 }

                                              else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                               store_tiro = posicao_nave;
                                                               nave_tiro();
                                                               testa_tiro = 0b00000001;
                                                                                     }            //testa se usuario pediu para ser lan�ado um tiro

                                              testa = Testa_Tiro_Inimigo();
                                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                            i = 15;         }
                                                      }
                              delay_ms (300);
                              break;

                         case 15:
                               Lcd_chr (2,2, 2);                                // Nave Inimiga I
                               armazena_pos_inimigo1 = 0b00000001;
                               testa_inimigo2 =  0b00000010;
                               pos_inimigo_final = 0b00000001;

                               Chama_Enterprise();
                               escreve_enterprise();
                               
                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }

                               /*tiro_especial = special();
                               if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }     */

                              if (explode_nave == 0b00000000){
                                                if (testa_tiro == 0b00000001){
                                                         nave_tiro();
                                                                   }

                                                else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                                 store_tiro = posicao_nave;
                                                                 nave_tiro();
                                                                 testa_tiro = 0b00000001;
                                                                                        }            //testa se usuario pediu para ser lan�ado um tiro

                                                testa = Testa_Tiro_Inimigo();
                                                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                              i = 15;         }


                                                else  if (pos_inimigo_final == 0b00000001) {
                                                               GameOver();    }
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
 }

// ------------------------------------------------------------- Final Funcao Ataque_2 -----------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------ Inicio Funcao Ataque_3 ----------------------------------------------------------------------

void ataque_3 (){


int i = 0b00000000;                                         //contador posicao nave_inimigo
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;


while (i<16)     {                                                            //execu��o rotina principal - andar naves

       linha1 = 0b00000001;
       Lcd_Cmd(_LCD_CLEAR);                                                  //onde ser� escrito o caracter de explos�o de nave
       Chama_Enterprise();                                                   //Chama nave_principal

        switch (i) {

                    case 1:
                              Lcd_chr (1,16, 2);                                    //Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001111;                   //Armazena posicao do inimigo para teste posterior
                              testa_inimigo1 = 0b00010000;                          //Atribui valor 16 para a vari�vel
                              Chama_Enterprise();                                   //Chama ultima posicao de nave principal na tela

                              if ((button(&PORTD, 2, 200, 1))){                     //Se o bit 2 do portd estiver pressionado
                                               store_tiro = posicao_nave;           //armazena na variavel a posicao da nave
                                               nave_tiro();                         //testa se usuario pediu para ser lan�ado um tiro
                                               testa_tiro = 0b00000001;             //atribui 1 a testa_tiro
                                                              }
                              testa = Testa_Tiro_Inimigo();                                         //chama a funcao testa_tiro, de modo que se coincidir, explode a nave
                                                                                                    // e atribui valor 1 a testa
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }  */
                                                      
                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)  {  //se a vari�vel testa for = 1 e testa_primeira_explosao = 1
                                           i = 15;        }                                         //i = 15, de modo que saia do for

                              delay_ms (150);
                              break;

                     case 2:
                              Lcd_chr (1,15, 2);                              // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001110;             //armazena posicao do inimigo para atualizar a tela
                              testa_inimigo1 = 0b0001111;                     //armazena posicao inimigo para teste em colisao com tiro

                              Chama_Enterprise();                            //Chama ultima posicao de nave principal na tela
                              escreve_enterprise();                          //Testa se usuario quer mudar nave principal

                              testa = Testa_Tiro_Inimigo();                  //recebe valor da funcao de teste tiro
                              if (testa == 0b00000001){                      //se a fun��o for = 1, armazena 15 no i
                                            i = 15;                          //linha1 = 0 (reseta vari�vel)
                                            linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                            explode_nave = 0b00000001;
                                                       }

                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      } */
                                                      
                              if (explode_nave == 0b00000000){                            //se variavel for = 0 (testada anteriormente)
                                          testa = Testa_Tiro_Inimigo();                   //recebe posicao da funcao
                                                                                          //de lugar - linha 1 ou 2
                                          if (testa_tiro == 0b00000001){                  //Testa se tiro = 1, e dessa forma executa a fun��o tiro sem
                                                   nave_tiro();                           //que o usuario pressione o botao
                                                                       }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){          //se pressinado
                                                           store_tiro = posicao_nave;           //store_posicao recebe posicao da nave
                                                           nave_tiro();                         //chama funcao do tiro
                                                           testa_tiro = 0b00000001;             //atribiui 1 a vari�vel testa_tiro na fun��o de chamar tiro
                                                                               }                //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();                                         //recebe o valor da variavel Testa_Tiro_Inimigo � variavel testa
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){    //se testa for 1 OU testa_primeira_explosao for 1, atribui 15 ao i e sai do for
                                                        i = 15;                                                 //Segue mesma linha de racioc�nio nos casos seguintes
                                                                                                           }
                                                             }
                              delay_ms (150);
                              break;

                     case 3:
                              Lcd_chr (1,14, 2);                               // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001101;
                              testa_inimigo1 = 0b00001110;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                        }

                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }         */
                                                      
                               if (explode_nave == 0b00000000){
                                              if (testa_tiro == 0b00000001){
                                                       nave_tiro();
                                                                           }

                                              else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                            store_tiro = posicao_nave;
                                                            nave_tiro();
                                                            testa_tiro = 0b00000001;
                                                                                  }            //testa se usuario pediu para ser lan�ado um tiro

                                                            testa = Testa_Tiro_Inimigo();
                                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                                          i = 15;         }
                                                                            }
                              delay_ms (150);
                              break;

                     case 4:
                              Lcd_chr (1,13, 2);                              // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001100;
                              testa_inimigo1 = 0b00001101;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }          */
                                                      
                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                    }
                              delay_ms (150);
                              break;

                      case 5:
                              Lcd_chr (1,12, 2);                               // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001011;
                              testa_inimigo1 = 0b00001100;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }

                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }       */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                               }            //testa se usuario pediu para ser lan�ado um tiro
                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                    }
                              delay_ms (300);
                              break;

                      case 6:
                              Lcd_chr (1,11, 2);                               // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001010;
                              testa_inimigo1 =  0b00001011;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }      */
                                                      
                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro
                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                    }
                              delay_ms (150);
                              break;

                      case 7:
                              Lcd_chr (1,10, 2);                                // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001001;
                              testa_inimigo1 =  0b00001010;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;}

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }         */
                                                      
                              if (explode_nave == 0){
                                        if (testa_tiro == 1){
                                                 nave_tiro();
                                                           }

                                        else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                         store_tiro = posicao_nave;
                                                         nave_tiro();
                                                         testa_tiro = 0b00000001;
                                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                         testa = Testa_Tiro_Inimigo();
                                         if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                      i = 15;         }

                                                 }
                              delay_ms (150);
                              break;

                      case 8:
                              Lcd_chr (1,9, 2);                                // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00001000;
                              testa_inimigo1 =  0b00001001;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }       */
                                                      
                              if (explode_nave == 0b00000000){
                                                if (testa_tiro == 0b00000001){
                                                         nave_tiro();
                                                                   }

                                                else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                                 store_tiro = posicao_nave;
                                                                 nave_tiro();
                                                                 testa_tiro = 0b00000001;
                                                                                    }            //testa se usuario pediu para ser lan�ado um tiro

                                                testa = Testa_Tiro_Inimigo();
                                                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                              i = 15;         }
                                                    }
                              delay_ms (150);
                              break;

                      case 9:
                              Lcd_chr (1,8, 2);                                // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00000111;
                              testa_inimigo1 =  0b00001000;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;}

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }     */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                 }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (150);
                              break;

                       case 10:
                              Lcd_chr (1,7, 2);                                // Nave Inimiga I
                              armazena_pos_inimigo2 = 0b00000110;
                              testa_inimigo1 =  0b00000111;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }

                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }   */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (150);
                              break;

                       case 11:
                              Lcd_chr (1,6, 2);                                // Nave Inimiga
                              armazena_pos_inimigo2 = 0b00000101;
                              testa_inimigo1 =  0b00000110;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }


                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }   */
                                                      
                              if (explode_nave == 0b00000000){
                                      if (testa_tiro == 0b00000001){
                                               nave_tiro();
                                                         }

                                      else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                       store_tiro = posicao_nave;
                                                       nave_tiro();
                                                       testa_tiro = 0b00000001;
                                                          }            //testa se usuario pediu para ser lan�ado um tiro

                                      testa = Testa_Tiro_Inimigo();
                                      if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                    i = 15;         }
                                                     }
                              delay_ms (150);
                              break;

                        case 12:
                              Lcd_chr (1,5, 2);                                // Nave Inimiga
                              armazena_pos_inimigo2 = 0b00000100;
                              testa_inimigo1 =  0b00000101;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;}


                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }            */
                                                      
                              if (explode_nave == 0b00000000){
                                        if (testa_tiro == 0b00000001){
                                                 nave_tiro();
                                                           }

                                        else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                         store_tiro = posicao_nave;
                                                         nave_tiro();
                                                         testa_tiro = 0b00000001;
                                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                        testa = Testa_Tiro_Inimigo();
                                        if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                      i = 15;         }
                                                     }
                              delay_ms (150);
                              break;

                        case 13:
                               Lcd_chr (1,4, 2);                               // Nave Inimiga I
                               armazena_pos_inimigo2 = 0b00000011;
                               testa_inimigo1 =  0b00000100;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;}

                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }  */
                                                      
                               if (explode_nave == 0b00000000){

                                         if (testa_tiro == 0b00000001){
                                                 nave_tiro();
                                                                      }

                                         else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                         store_tiro = posicao_nave;
                                                         nave_tiro();
                                                         testa_tiro = 0b00000001;
                                                                              }            //testa se usuario pediu para ser lan�ado um tiro

                                         testa = Testa_Tiro_Inimigo();
                                         if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                      i = 15;                                             }
                                                    }
                               delay_ms (150);
                               break;

                        case 14:
                               Lcd_chr (1,3, 2);                               // Nave Inimiga I
                               armazena_pos_inimigo2 = 0b00000010;
                               testa_inimigo1 =  0b00000011;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }        */
                                                      
                               if (explode_nave == 0b00000000){

                                     if (testa_tiro == 0b00000001){
                                             nave_tiro();
                                                                  }

                                     else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                     store_tiro = posicao_nave;
                                                     nave_tiro();
                                                     testa_tiro = 0b00000001;
                                                                                                         }            //testa se usuario pediu para ser lan�ado um tiro

                                    testa = Testa_Tiro_Inimigo();
                                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                  i = 15;         }
                                                      }

                              delay_ms (150);
                              break;


                        case 15:
                               Lcd_chr (1,2, 2);                               // Nave Inimiga I
                               armazena_pos_inimigo2 = 0b00000001;
                               testa_inimigo1 =  0b00000010;
                               pos_inimigo_final = 0b00000001;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;}


                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }   */
                                                      
                               if (explode_nave == 0){

                                       if (testa_tiro == 0b00000001){
                                               nave_tiro();
                                                         }

                                       else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                       store_tiro = posicao_nave;
                                                       nave_tiro();
                                                       testa_tiro = 0b00000001;
                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                        testa = Testa_Tiro_Inimigo();
                                        if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                    i = 15;         }

                                        else  if (pos_inimigo_final == 0b00000001) {
                                                     GameOver();    }
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

 }
// ------------------------------------------------------------- Final Funcao Ataque_3 -----------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------  Inicio Funcao Ataque_4 ----------------------------------------------------------------------

void ataque_4 (){


int i = 0b00000000;                                         //contador posicao nave_inimigo
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;

while (i<16)     {                                                 //execu��o rotina principal - andar naves

        linha2 = 0b00000010;
        Lcd_Cmd(_LCD_CLEAR);
        Chama_Enterprise();

        switch (i) {

                    case 1:
                              Lcd_chr (2,16, 1);                               //Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001111;
                              testa_inimigo2 =  0b00010000;

                              if ((button(&PORTD, 2, 200, 1))){
                                               store_tiro = posicao_nave;
                                               nave_tiro();                   //testa se usuario pediu para ser lan�ado um tiro
                                               testa_tiro = 0b00000001;
                                                              }

                             /* tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }   */
                                                      
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                            i = 15;         }

                              delay_ms (200);
                              break;

                     case 2:
                              Lcd_chr (2,15, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001110;
                              testa_inimigo2 =  0b00001111;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }          */
                              
                              if (explode_nave == 0){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                              }

                                           else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                   }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (200);
                              break;

                     case 3:
                              Lcd_chr (2,14, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001101;
                              testa_inimigo2 =  0b00001110;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                  }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                         }
                              delay_ms (200);
                              break;

                     case 4:
                              Lcd_chr (2,13, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001100;
                              testa_inimigo2 =  0b00001101;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                            }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                           else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                      }
                              delay_ms (200);
                              break;

                      case 5:
                              Lcd_chr (2,12, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001011;
                              testa_inimigo2 =  0b00001100;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                            }
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (200);
                              break;

                      case 6:
                              Lcd_chr (2,11, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001010;
                              testa_inimigo2 =  0b00001011;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                            }
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b0000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                    }
                              delay_ms (200);
                              break;

                      case 7:
                              Lcd_chr (2,10, 1);                                 // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001001;
                              testa_inimigo2 =  0b00001010;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                                             
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                        store_tiro = posicao_nave;
                                                        nave_tiro();
                                                        testa_tiro = 0b00000001;
                                                                                                               }  //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;                                              }
                                                             }
                              delay_ms (200);
                              break;

                      case 8:
                              Lcd_chr (2,9, 1);                                 // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001000;
                              testa_inimigo2 =  0b00001001;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }
                                                      
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                   }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                      }
                              delay_ms (200);
                              break;

                      case 9:
                              Lcd_chr (2,8, 1);                                 // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00000111;
                              testa_inimigo2 =  0b00001000;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }
                                                      
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                                               }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;                                             }
                                                             }
                              delay_ms (200);
                              break;

                       case 10:
                              Lcd_chr (2,7, 1);                                 // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00000110;
                              testa_inimigo2 =  0b00000111;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }
                                                      
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                              if (testa_tiro == 0b00000001){
                                                       nave_tiro();
                                                                 }

                                              else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                               store_tiro = posicao_nave;
                                                               nave_tiro();
                                                               testa_tiro = 0b00000001;
                                                                                    }            //testa se usuario pediu para ser lan�ado um tiro

                                              testa = Testa_Tiro_Inimigo();
                                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                            i = 15;         }
                                                     }
                              delay_ms (200);
                              break;

                       case 11:
                              Lcd_chr (2,6, 1);                                 // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00000101;
                              testa_inimigo2 =  0b00000110;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }
                                                      
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;

                                                                                                             }  //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 1){
                                                        i = 15;                                  }
                                                            }
                              delay_ms (200);
                              break;

                        case 12:
                              Lcd_chr (2,5, 1);                                 // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00000100;
                              testa_inimigo2 =  0b00000101;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                       }
                                                       
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                                            }//testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;                                             }

                                                             }
                              delay_ms (200);
                              break;

                        case 13:
                               Lcd_chr (2,4, 1);                                // Nave Inimiga I
                               armazena_pos_inimigo1 = 0b00000011;
                               testa_inimigo2 =  0b00000100;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                                             
                               /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                               if (explode_nave == 0b00000000){
                                                  if (testa_tiro == 0b00000001){
                                                                    nave_tiro();
                                                                       }

                                                  else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                                    store_tiro = posicao_nave;
                                                                    nave_tiro();
                                                                    testa_tiro = 0b00000001;
                                                                                                                     }   //testa se usuario pediu para ser lan�ado um tiro

                                                  testa = Testa_Tiro_Inimigo();
                                                  if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                                    i = 15;                                        }
                                                               }
                              delay_ms (200);
                              break;

                        case 14:
                               Lcd_chr (2,3, 1);                                // Nave Inimiga I
                               armazena_pos_inimigo1 = 0b00000010;
                               testa_inimigo2 =  0b00000011;
                               pos_inimigo_final = 0b000000010;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                                             
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                              if (testa_tiro == 0b00000001){
                                                       nave_tiro();
                                                                 }

                                              else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                               store_tiro = posicao_nave;
                                                               nave_tiro();
                                                               testa_tiro = 0b00000001;
                                                                                     }            //testa se usuario pediu para ser lan�ado um tiro

                                              testa = Testa_Tiro_Inimigo();
                                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                            i = 15;         }
                                                      }
                              delay_ms (200);
                              break;

                         case 15:
                               Lcd_chr (2,2, 1);                                // Nave Inimiga I
                               armazena_pos_inimigo1 = 0b00000001;
                               testa_inimigo2 =  0b00000010;
                               pos_inimigo_final = 0b00000001;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                                             
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                                if (testa_tiro == 0b00000001){
                                                         nave_tiro();
                                                                   }

                                                else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                                 store_tiro = posicao_nave;
                                                                 nave_tiro();
                                                                 testa_tiro = 0b00000001;
                                                                                        }            //testa se usuario pediu para ser lan�ado um tiro

                                                testa = Testa_Tiro_Inimigo();
                                                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                              i = 15;         }


                                                else  if (pos_inimigo_final == 0b00000001) {
                                                               GameOver();    }
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

}
// -------------------------------------------------------------- Final Funcao Ataque_4 -----------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------  Inicio Funcao Ataque_5 ----------------------------------------------------------------------

void ataque_5 (){

int i = 0b00000000;                                         //contador posicao nave_inimigo
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;


while (i<16)     {                                                            //execu��o rotina principal - andar naves

       linha1 = 0b00000001;
       Lcd_Cmd(_LCD_CLEAR);                                                  //onde ser� escrito o caracter de explos�o de nave
       Chama_Enterprise();                                                   //Chama nave_principal

        switch (i) {

                    case 1:
                              Lcd_chr (1,16, 1);                                    //Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001111;                   //Armazena posicao do inimigo para teste posterior
                              testa_inimigo1 = 0b00010000;                          //Atribui valor 16 para a vari�vel
                              Chama_Enterprise();                                   //Chama ultima posicao de nave principal na tela

                              if ((button(&PORTD, 2, 200, 1))){                     //Se o bit 2 do portd estiver pressionado
                                               store_tiro = posicao_nave;           //armazena na variavel a posicao da nave
                                               nave_tiro();                         //testa se usuario pediu para ser lan�ado um tiro
                                               testa_tiro = 0b00000001;             //atribui 1 a testa_tiro
                                                              }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              testa = Testa_Tiro_Inimigo();                                         //chama a funcao testa_tiro, de modo que se coincidir, explode a nave
                                                                                                    // e atribui valor 1 a testa
                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)  {  //se a vari�vel testa for = 1 e testa_primeira_explosao = 1
                                           i = 15;        }                                         //i = 15, de modo que saia do for

                              delay_ms (300);
                              break;

                     case 2:
                              //Lcd_chr (1,15, 1);                              // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001110;             //armazena posicao do inimigo para atualizar a tela
                              testa_inimigo1 = 0b0001111;                     //armazena posicao inimigo para teste em colisao com tiro

                              Chama_Enterprise();                            //Chama ultima posicao de nave principal na tela
                              escreve_enterprise();                          //Testa se usuario quer mudar nave principal

                              testa = Testa_Tiro_Inimigo();                  //recebe valor da funcao de teste tiro
                              if (testa == 0b00000001){                      //se a fun��o for = 1, armazena 15 no i
                                            i = 15;                          //linha1 = 0 (reseta vari�vel)
                                            linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                            explode_nave = 0b00000001;
                                                       }
                                                       
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){                            //se variavel for = 0 (testada anteriormente)
                                          testa = Testa_Tiro_Inimigo();                   //recebe posicao da funcao
                                                                                          //de lugar - linha 1 ou 2
                                          if (testa_tiro == 0b00000001){                  //Testa se tiro = 1, e dessa forma executa a fun��o tiro sem
                                                   nave_tiro();                           //que o usuario pressione o botao
                                                                       }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){          //se pressinado
                                                           store_tiro = posicao_nave;           //store_posicao recebe posicao da nave
                                                           nave_tiro();                         //chama funcao do tiro
                                                           testa_tiro = 0b00000001;             //atribiui 1 a vari�vel testa_tiro na fun��o de chamar tiro
                                                                               }                //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();                                         //recebe o valor da variavel Testa_Tiro_Inimigo � variavel testa
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){    //se testa for 1 OU testa_primeira_explosao for 1, atribui 15 ao i e sai do for
                                                        i = 15;                                                 //Segue mesma linha de racioc�nio nos casos seguintes
                                                                                                           }
                                                             }
                              delay_ms (300);
                              break;

                     case 3:
                              //Lcd_chr (1,14, 1);                               // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001101;
                              testa_inimigo1 = 0b00001110;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                        }
                                                        
                               /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                               if (explode_nave == 0b00000000){
                                              if (testa_tiro == 0b00000001){
                                                       nave_tiro();
                                                                           }

                                              else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                            store_tiro = posicao_nave;
                                                            nave_tiro();
                                                            testa_tiro = 0b00000001;
                                                                                  }            //testa se usuario pediu para ser lan�ado um tiro

                                                            testa = Testa_Tiro_Inimigo();
                                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                                          i = 15;         }
                                                                            }
                              delay_ms (300);
                              break;

                     case 4:
                              Lcd_chr (1,13, 1);                              // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001100;
                              testa_inimigo1 = 0b00001101;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                    }
                              delay_ms (300);
                              break;

                      case 5:
                              //Lcd_chr (1,12, 1);                               // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001011;
                              testa_inimigo1 = 0b00001100;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                               }            //testa se usuario pediu para ser lan�ado um tiro
                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                    }
                              delay_ms (300);
                              break;

                      case 6:
                              Lcd_chr (1,11, 1);                               // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001010;
                              testa_inimigo1 =  0b00001011;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro
                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                    }
                              delay_ms (300);
                              break;

                      case 7:
                              Lcd_chr (1,10, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001001;
                              testa_inimigo1 =  0b00001010;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;}
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0){
                                        if (testa_tiro == 1){
                                                 nave_tiro();
                                                           }

                                        else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                         store_tiro = posicao_nave;
                                                         nave_tiro();
                                                         testa_tiro = 0b00000001;
                                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                         testa = Testa_Tiro_Inimigo();
                                         if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                      i = 15;         }

                                                 }
                              delay_ms (300);
                              break;

                      case 8:
                              //Lcd_chr (1,9, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00001000;
                              testa_inimigo1 =  0b00001001;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                                if (testa_tiro == 0b00000001){
                                                         nave_tiro();
                                                                   }

                                                else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                                 store_tiro = posicao_nave;
                                                                 nave_tiro();
                                                                 testa_tiro = 0b00000001;
                                                                                    }            //testa se usuario pediu para ser lan�ado um tiro

                                                testa = Testa_Tiro_Inimigo();
                                                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                              i = 15;         }
                                                    }
                              delay_ms (300);
                              break;

                      case 9:
                              Lcd_chr (1,8, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00000111;
                              testa_inimigo1 =  0b00001000;

                              Chama_Enterprise();
                              escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;}
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                 }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                       case 10:
                              Lcd_chr (1,7, 1);                                // Nave Inimiga I
                              armazena_pos_inimigo1 = 0b00000110;
                              testa_inimigo1 =  0b00000111;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }
                                            
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                       case 11:
                              //Lcd_chr (1,6, 1);                                // Nave Inimiga
                              armazena_pos_inimigo1 = 0b00000101;
                              testa_inimigo1 =  0b00000110;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001; }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                      if (testa_tiro == 0b00000001){
                                               nave_tiro();
                                                         }

                                      else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                       store_tiro = posicao_nave;
                                                       nave_tiro();
                                                       testa_tiro = 0b00000001;
                                                          }            //testa se usuario pediu para ser lan�ado um tiro

                                      testa = Testa_Tiro_Inimigo();
                                      if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                    i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                        case 12:
                              //Lcd_chr (1,5, 1);                                // Nave Inimiga
                              armazena_pos_inimigo1 = 0b00000100;
                              testa_inimigo1 =  0b00000101;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                       }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                        if (testa_tiro == 0b00000001){
                                                 nave_tiro();
                                                           }

                                        else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                         store_tiro = posicao_nave;
                                                         nave_tiro();
                                                         testa_tiro = 0b00000001;
                                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                        testa = Testa_Tiro_Inimigo();
                                        if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                      i = 15;         }
                                                     }
                              delay_ms (300);
                              break;

                        case 13:
                               Lcd_chr (1,4, 1);                               // Nave Inimiga I
                               armazena_pos_inimigo1 = 0b00000011;
                               testa_inimigo1 =  0b00000100;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                       }
                               
                               /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                               if (explode_nave == 0b00000000){

                                         if (testa_tiro == 0b00000001){
                                                 nave_tiro();
                                                                      }

                                         else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                         store_tiro = posicao_nave;
                                                         nave_tiro();
                                                         testa_tiro = 0b00000001;
                                                                              }            //testa se usuario pediu para ser lan�ado um tiro

                                         testa = Testa_Tiro_Inimigo();
                                         if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                      i = 15;                                             }
                                                    }
                               delay_ms (300);
                               break;

                        case 14:
                               Lcd_chr (1,3, 1);                               // Nave Inimiga I
                               armazena_pos_inimigo1 = 0b00000010;
                               testa_inimigo1 =  0b00000011;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                       }
                                                       
                               /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                               if (explode_nave == 0b00000000){

                                     if (testa_tiro == 0b00000001){
                                             nave_tiro();
                                                                  }

                                     else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                     store_tiro = posicao_nave;
                                                     nave_tiro();
                                                     testa_tiro = 0b00000001;
                                                                                                         }            //testa se usuario pediu para ser lan�ado um tiro

                                    testa = Testa_Tiro_Inimigo();
                                    if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                  i = 15;         }
                                                      }

                              delay_ms (300);
                              break;


                        case 15:
                               Lcd_chr (1,2, 1);                               // Nave Inimiga I
                               armazena_pos_inimigo1 = 0b00000001;
                               testa_inimigo1 =  0b00000010;
                               pos_inimigo_final = 0b00000001;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha1 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                       }

                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                               if (explode_nave == 0){

                                       if (testa_tiro == 0b00000001){
                                               nave_tiro();
                                                         }

                                       else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                       store_tiro = posicao_nave;
                                                       nave_tiro();
                                                       testa_tiro = 0b00000001;
                                                             }            //testa se usuario pediu para ser lan�ado um tiro

                                        testa = Testa_Tiro_Inimigo();
                                        if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                    i = 15;         }

                                        else  if (pos_inimigo_final == 0b00000001) {
                                                     GameOver();    }
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

// ------------------------------------------------------------- Final Funcao Ataque_5 -----------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------  Inicio Funcao Ataque_6 ----------------------------------------------------------------------

void ataque_6 (){

int i = 0b00000000;                                         //contador posicao nave_inimigo
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;

while (i<16)     {                                                 //execu��o rotina principal - andar naves

        linha2 = 0b00000010;
        Lcd_Cmd(_LCD_CLEAR);
        Chama_Enterprise();

        switch (i) {

                    case 1:
                              Lcd_chr (2,16, 6);                               //Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00001111;
                              testa_inimigo2 =  0b00010000;

                              if ((button(&PORTD, 2, 200, 1))){
                                               store_tiro = posicao_nave;
                                               nave_tiro();                   //testa se usuario pediu para ser lan�ado um tiro
                                               testa_tiro = 0b00000001;
                                                              }
                                                              
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                            i = 15;         }

                              delay_ms (200);
                              break;

                     case 2:
                              Lcd_chr (2,15, 6);                                // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00001110;
                              testa_inimigo2 =  0b00001111;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                                             
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                              }

                                           else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                   }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (200);
                              break;

                     case 3:
                              Lcd_chr (2,14, 6);                                // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00001101;
                              testa_inimigo2 =  0b00001110;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                                             
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                  }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                         }
                              delay_ms (200);
                              break;

                     case 4:
                              Lcd_chr (2,13, 6);                                // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00001100;
                              testa_inimigo2 =  0b00001101;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                            }
                              
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                           else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                      }
                              delay_ms (200);
                              break;

                      case 5:
                              Lcd_chr (2,12, 6);                                // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00001011;
                              testa_inimigo2 =  0b00001100;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                            }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;
                                                   linha1 = 0b00000000;
                                                   explode_nave = 0b00000001;
                                                      }              */
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                     }
                              delay_ms (200);
                              break;

                      case 6:
                              Lcd_chr (2,11, 6);                                // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00001010;
                              testa_inimigo2 =  0b00001011;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                            }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                              if (explode_nave == 0b0000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                }            //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;         }
                                                    }
                              delay_ms (200);
                              break;

                      case 7:
                              //Lcd_chr (2,10, 6);                                 // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00001001;
                              testa_inimigo2 =  0b00001010;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                        store_tiro = posicao_nave;
                                                        nave_tiro();
                                                        testa_tiro = 0b00000001;
                                                                                                               }  //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;                                              }
                                                             }
                              delay_ms (200);
                              break;

                      case 8:
                              Lcd_chr (2,9, 6);                                 // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00001000;
                              testa_inimigo2 =  0b00001001;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                   }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;         }
                                                      }
                              delay_ms (200);
                              break;

                      case 9:
                              Lcd_chr (2,8, 6);                                 // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00000111;
                              testa_inimigo2 =  0b00001000;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                              if (explode_nave == 0b00000000){
                                            if (testa_tiro == 0b00000001){
                                                     nave_tiro();
                                                               }

                                            else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                             store_tiro = posicao_nave;
                                                             nave_tiro();
                                                             testa_tiro = 0b00000001;
                                                                                                               }            //testa se usuario pediu para ser lan�ado um tiro

                                            testa = Testa_Tiro_Inimigo();
                                            if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                          i = 15;                                             }
                                                             }
                              delay_ms (200);
                              break;

                       case 10:
                              Lcd_chr (2,7, 6);                                 // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00000110;
                              testa_inimigo2 =  0b00000111;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */;
                              if (explode_nave == 0b00000000){
                                              if (testa_tiro == 0b00000001){
                                                       nave_tiro();
                                                                 }

                                              else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                               store_tiro = posicao_nave;
                                                               nave_tiro();
                                                               testa_tiro = 0b00000001;
                                                                                    }            //testa se usuario pediu para ser lan�ado um tiro

                                              testa = Testa_Tiro_Inimigo();
                                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                            i = 15;         }
                                                     }
                              delay_ms (200);
                              break;

                       case 11:
                              Lcd_chr (2,6, 6);                                 // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00000101;
                              testa_inimigo2 =  0b00000110;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                      }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;

                                                                                                             }  //testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 1){
                                                        i = 15;                                  }
                                                            }
                              delay_ms (200);
                              break;

                        case 12:
                              Lcd_chr (2,5, 6);                                 // Nave Inimiga I
                              armazena_pos_inimigo3 = 0b00000100;
                              testa_inimigo2 =  0b00000101;

                              Chama_Enterprise();
                              escreve_enterprise();

                              testa = Testa_Tiro_Inimigo();
                              if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                                       }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                              if (explode_nave == 0b00000000){
                                          if (testa_tiro == 0b00000001){
                                                   nave_tiro();
                                                             }

                                          else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                           store_tiro = posicao_nave;
                                                           nave_tiro();
                                                           testa_tiro = 0b00000001;
                                                                                                            }//testa se usuario pediu para ser lan�ado um tiro

                                          testa = Testa_Tiro_Inimigo();
                                          if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                        i = 15;                                             }

                                                             }
                              delay_ms (200);
                              break;

                        case 13:
                               Lcd_chr (2,4, 6);                                // Nave Inimiga I
                               armazena_pos_inimigo3 = 0b00000011;
                               testa_inimigo2 =  0b00000100;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                              /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                               if (explode_nave == 0b00000000){
                                                  if (testa_tiro == 0b00000001){
                                                                    nave_tiro();
                                                                       }

                                                  else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                                    store_tiro = posicao_nave;
                                                                    nave_tiro();
                                                                    testa_tiro = 0b00000001;
                                                                                                                     }   //testa se usuario pediu para ser lan�ado um tiro

                                                  testa = Testa_Tiro_Inimigo();
                                                  if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                                    i = 15;                                        }
                                                               }
                              delay_ms (200);
                              break;

                        case 14:
                               Lcd_chr (2,3, 6);                                // Nave Inimiga I
                               armazena_pos_inimigo3 = 0b00000010;
                               testa_inimigo2 =  0b00000011;
                               pos_inimigo_final = 0b000000010;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                               /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                               if (explode_nave == 0b00000000){
                                              if (testa_tiro == 0b00000001){
                                                       nave_tiro();
                                                                 }

                                              else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                               store_tiro = posicao_nave;
                                                               nave_tiro();
                                                               testa_tiro = 0b00000001;
                                                                                     }            //testa se usuario pediu para ser lan�ado um tiro

                                              testa = Testa_Tiro_Inimigo();
                                              if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                            i = 15;         }
                                                      }
                              delay_ms (200);
                              break;

                         case 15:
                               Lcd_chr (2,2, 6);                                // Nave Inimiga I
                               armazena_pos_inimigo3 = 0b00000001;
                               testa_inimigo2 =  0b00000010;
                               pos_inimigo_final = 0b00000001;

                               Chama_Enterprise();
                               escreve_enterprise();

                               testa = Testa_Tiro_Inimigo();
                               if (testa == 0b00000001){
                                            i = 15;
                                            linha2 = 0b00000000;
                                            explode_nave = 0b00000001;
                                             }
                               /*tiro_especial = special();
                              if (tiro_especial == 1){
                                                   i = 15;                          //linha1 = 0 (reseta vari�vel)
                                                   linha1 = 0b00000000;             //explode_nave = 1 e sai do for
                                                   explode_nave = 0b00000001;
                                                      }              */
                                                      
                               if (explode_nave == 0b00000000){
                                                if (testa_tiro == 0b00000001){
                                                         nave_tiro();
                                                                   }

                                                else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
                                                                 store_tiro = posicao_nave;
                                                                 nave_tiro();
                                                                 testa_tiro = 0b00000001;
                                                                                        }            //testa se usuario pediu para ser lan�ado um tiro

                                                testa = Testa_Tiro_Inimigo();
                                                if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
                                                              i = 15;         }


                                                else  if (pos_inimigo_final == 0b00000001) {
                                                               GameOver();    }
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
}

// --------------------------------------------------------------- Final Funcao Ataque_6 -----------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// --------------------------------------------------------------- Inicio Funcao Menu ----------------------------------------------------------------------

void Menu(){                                                                //Funcao Menu
                                                                            //Definida todas palavras utilizadas em menu
 char txt1[] =  "PIC INVADERS";                                             //de acordo com solitacao por usuario
 char txt2[] =  "VIA LACTA";                                                //Declara�ao de todas variaveis char usadas na funcao
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
 Lcd_out (1,3, txt3);                   //Tela de apresenta��o do Game
 Lcd_out (2,3, txt4);                   //New Game, About e Help
 Lcd_out (1,12, txt29);                 //Para voltar para Menu - Pressionar Bit 1 do PORTD
 delay_ms (250);

 if (button(&PORTD, 0, 200, 1)){        //Inicia o Game com frase cl�ssica
                                        //Mostrar para usuario que o desenvolvedor n�o tava de brincadeira
      Lcd_Cmd(_LCD_CLEAR);              // e que o jogo � Fromhell
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
      
      return;     }


 else if (button(&PORTD, 1, 200, 1)) {    //Escreve Informa��o de como
                                          //foi desenvolvido o game
       while (1){                         //e versao atual
            Lcd_Cmd(_LCD_CLEAR);
            Lcd_out (1,1, txt5);
            Lcd_out (2,1, txt6);
            Lcd_out (2,13, txt7);
            delay_ms (600);

            if (button(&PORTD, 1, 200, 1))
                     goto menu;

               }
                                     }

 else if (button(&PORTD, 2, 200, 1)) {   //Escreve Instru��es de jogabilidade
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
  }


// --------------------------------------------------------------- Final Funcao Menu ------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------ Inicio Funcao Atira_Boss ----------------------------------------------------------------------

int Boss(){

short conta_tiro = 0;
short testa_tiro2;

do {
    Boss_teste = 0b0000001;
    Lcd_Cmd(_LCD_CLEAR);                                                  //onde ser� escrito o caracter de explos�o de nave
    Chama_Enterprise();                                                   //Chama nave_principal
    Lcd_chr (1,16, 7);                                                    //Escreve na tela, coluna 1, uma parte do boss
    Lcd_chr (2,16, 7);                                                    //Escreve na tela, coluna 2, a outra parte do boss
    escreve_enterprise();                                                 //Testa se usuario quer mudar nave principal


     if (testa_tiro2 == 0b00000001){                                       //Testa se tiro = 1, e dessa forma executa a fun��o tiro sem
                             nave_tiro();                                  //que o usuario pressione o botao
                             Lcd_chr (1,16, 7);                            //Escreve na tela, coluna 1, uma parte do boss
                             Lcd_chr (2,16, 7);                            //Escreve na tela, coluna 2, a outra parte do boss
                             conta_tiro++;
                                   }

     else if ((button(&PORTD, 2, 200, 1))){                                         //Se o bit 2 do portd estiver pressionado
                                               store_tiro = posicao_nave;           //armazena na variavel a posicao da nave
                                               nave_tiro();                         //testa se usuario pediu para ser lan�ado um tiro
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

             if( posicao_nave == 0b00000001)     {
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
                      
 else if ((dano_boss1 == 4) && (dano_boss2 == 4))   {
             Win_Game();
             return 1;
                                                     }
                                                     
 conta_tiro = 0b0000000;
 testa_tiro2 = 0b0000000;
 tiro = 0b00000010;
 store_tiro = 0b00000000;
 
 }
 
// --------------------------------------------------------------- Final Funcao Atira_Boss ----------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------- Inicio Funcao Main ----------------------------------------------------------------------

void main(){

 int var_random;                                                               //definicoes de variaveis e pinagem de hardware
 short testa_final;                                                            //
 short k;
 
 TRISB = 0b00000000;
 TRISD = 0b00001111;

 PORTB = 0;
 PORTD = 0;

 ANSELA = 0;
 ANSELB = 0;
 ANSELC = 0;
 ANSELD = 0;

 Lcd_Init();                         //Inicia Display
 Lcd_Cmd(_LCD_CLEAR);                //Limpa Display
 Lcd_Cmd(_LCD_CURSOR_OFF);           //Desliga cursor display

 comeco:

 Lcd_Cmd(_LCD_CLEAR);
 Menu();                             //Chama funcao Menu
 CustomChar();                       //Carrega caracteres especiais - Um heito deles!
 Lcd_Cmd(_LCD_CLEAR);

 inicio_jogo:

var_random = random();                  //Chama funcao randomica - Testado cada valor de acordo com funcao pr�-definida
                                        //no topo do c�digo - L�gica de gera��o "randomica pr� definida"
 if (var_random == 1) {                 //Executa rotina de acordo com a variavel randomica gerada pelo PIC
                                        //Segue sequencia pr� definida por programados, testando,intercaladamente, se foi ou nao game over
    for (k = 0; k<2; k++){              //Repete testes abaixo, mais 4 vezes
              
              ataque_1();
              ataque_3();
              especial = 0b00000001;

              ataque_4();
              ataque_2();
              especial = 0b00000001;

              ataque_5();
              ataque_6();
              especial = 0b00000001;
              
               }
                           
     k = 0;
     
     testa_final = Boss();         //Testa o valor da funcao Boss
     if (testa_final == 1){        //se 1, parab�ns, jogo terminado e de volta a tela inicial  - reseta o game
             goto comeco;          //se 0, a nave do usu�rio � destru�da e o jogo � recome�ado
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
                                 
     ataque_3();                   //E chamar� as fun��es Boss, 16 vezes, de modo que o usu�rio deva dividir os ataques no boss
     ataque_4();                   //de 1 a 1, a modo de destru�-los simultaneamente. Caso contr�rio, � game over e nave do usu�rio � destruida
     
     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_2();
     ataque_5();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_6();
     ataque_6();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_1();
     ataque_2();
     
     if (game_over == 1)          {
     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_4();
     ataque_5();
     
     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }

     ataque_5();
     ataque_6();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }

     ataque_6();
     ataque_3();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }

                     }
  }
    
 else if (var_random == 2){

     for (k = 0; k<2; k++){
     
                  ataque_5();
                  ataque_2();
                  especial = 0b00000001;
                  
                  ataque_4();
                  ataque_6();
                  especial = 0b00000001;

                  ataque_3();
                  especial = 0b00000001;
                  
                  ataque_1();
                  especial = 0b00000001;
                           }
     
     k = 0;

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }

     ataque_2();
     ataque_3();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_1();
     ataque_4();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_4();
     ataque_5();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_6();
     ataque_6();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_5();
     ataque_6();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_3();
     ataque_4();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_2();
     ataque_5();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
                                 
               }

 else if (var_random == 3){

   for (k = 0; k<2; k++){

              ataque_3();
              ataque_2();
              especial = 0b00000001;

              ataque_5();
              ataque_4();
              especial = 0b00000001;

              ataque_1();
              ataque_6();
              especial = 0b00000001;
                           }

     k = 0;

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }

     ataque_5();
     ataque_4();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_6();
     ataque_3();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_2();
     ataque_5();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_1();
     ataque_3();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_4();
     ataque_3();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_1();
     ataque_2();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_6();
     ataque_4();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
               }

 else if (var_random == 4){

   for (k = 0; k<2; k++){

                ataque_4();
                ataque_5();
                especial = 0b00000001;
                
                ataque_1();
                ataque_6();
                especial = 0b00000001;

                ataque_3();
                ataque_2();
                especial = 0b00000001;
            }
                           
     k = 0;

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }

     ataque_2();
     ataque_1();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_3();
     ataque_4();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_6();
     ataque_3();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_2();
     ataque_1();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_4();
     ataque_6();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_6();
     ataque_2();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_1();
     ataque_3();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
                                 
               }
               
 /*else if (var_random == 5){

   for (k = 0; k<2; k++){

                ataque_2();
                ataque_1();
                especial = 0b00000001;

                ataque_3();
                ataque_6();
                especial = 0b00000001;

                ataque_5();
                ataque_4();
                especial = 0b00000001;
       }
                           
     k = 0;

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }

     ataque_1();
     ataque_5();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                }
     ataque_6();
     ataque_3();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_2();
     ataque_1();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_3();
     ataque_4();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_2();
     ataque_1();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_5();
     ataque_6();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }
     ataque_3();
     ataque_4();

     testa_final = Boss();
     if (testa_final == 1){
             goto comeco;
                          }

     else if (testa_final == 0) {
             Lcd_Cmd(_LCD_CLEAR);
             Lcd_Out (1, 4, "Nivel 1");
             delay_ms (3000);
             goto inicio_jogo;
                                 }

               }        */
               
}