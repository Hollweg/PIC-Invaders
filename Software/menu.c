
#include "main.h"

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
<<<<<<< HEAD
        delay_ms (4000);
=======
        delay_ms (3000);
>>>>>>> v8

        if (button(&PORTD, 0, 200, 1))
            goto nivel1;

        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,3, txt10);
        Lcd_out (2,6, txt11);
<<<<<<< HEAD
        delay_ms (4000);
=======
        delay_ms (3000);
>>>>>>> v8

        if (button(&PORTD, 0, 200, 1))
            goto nivel1;

        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,1, txt12);
        Lcd_out (2,2, txt13);
<<<<<<< HEAD
        delay_ms (4000);
=======
        delay_ms (3000);
>>>>>>> v8

        if (button(&PORTD, 0, 200, 1))
            goto nivel1;

        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,3, txt14);
        Lcd_out (2,1, txt15);
<<<<<<< HEAD
        delay_ms (4000);
=======
        delay_ms (3000);
>>>>>>> v8

        if (button(&PORTD, 0, 200, 1))
            goto nivel1;

          Lcd_Cmd(_LCD_CLEAR);
          Lcd_out (1,2, txt16);
          Lcd_out (2,1, txt17);
<<<<<<< HEAD
          delay_ms (4000);
=======
          delay_ms (3000);
>>>>>>> v8

        if (button(&PORTD, 0, 200, 1))
            goto nivel1;

        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,2, txt18);
        Lcd_out (2,3, txt19);
<<<<<<< HEAD
        delay_ms (4000);
=======
        delay_ms (3000);
>>>>>>> v8

        if (button(&PORTD, 0, 200, 1))
            goto nivel1;

        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,2, txt20);
        Lcd_out (2,1, txt21);
<<<<<<< HEAD
        delay_ms (4000);
=======
        delay_ms (3000);
>>>>>>> v8

        if (button(&PORTD, 0, 200, 1))
            goto nivel1;

        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,1, txt22);
        Lcd_out (2,2, txt23);
<<<<<<< HEAD
        delay_ms (4000);
=======
        delay_ms (3000);
>>>>>>> v8

        if (button(&PORTD, 0, 200, 1))
            goto nivel1;

        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,1, txt24);
        Lcd_out (2,4, txt25);
<<<<<<< HEAD
        delay_ms (4000);
=======
        delay_ms (3000);
>>>>>>> v8

        if (button(&PORTD, 0, 200, 1))
            goto nivel1;

        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,1, txt26);
        Lcd_out (2,2, txt27);
<<<<<<< HEAD
        delay_ms (4000);
=======
        delay_ms (3000);
>>>>>>> v8

        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,1, txt28);
        Lcd_out (2,4, txt35);
<<<<<<< HEAD
        delay_ms (4000);
=======
        delay_ms (3000);
>>>>>>> v8

nivel1:

        Lcd_Cmd(_LCD_CLEAR);
        Lcd_out (1,5, txt34);
<<<<<<< HEAD
        delay_ms (5000);
=======
        delay_ms (4000);
>>>>>>> v8

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