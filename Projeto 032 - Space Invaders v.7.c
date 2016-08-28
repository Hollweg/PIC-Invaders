//*****************************************************************************************************
//************************                   PIC INVADERS                ******************************
//************************             Última modificação: 08/16         ******************************
//************************                   Disponível em               ******************************
//************************             https://github.com/Hollweg        ******************************
//*****************************************************************************************************

#include "main.h"

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
}//~ final main