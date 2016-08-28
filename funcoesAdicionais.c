
#include "main.h"

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
