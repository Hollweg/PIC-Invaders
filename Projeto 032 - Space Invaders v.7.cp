#line 1 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"




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




short posicao_nave = 0b00000001;
short armazena_enterprise = 0b00000000;
short armazena_pos_tiro = 0b00000000;
short tiro = 0b00000010;
short testa_tiro = 0b00000000;
short store_tiro = 0b00000000;
short pos_inimigo_final = 0b00000000;
short armazena_pos_inimigo1 = 0b00000000;
short armazena_pos_inimigo2 = 0b00000000;
short armazena_pos_inimigo3 = 0b00000000;
short testa_inimigo1;
short testa_inimigo2;
short testa_explosao;
short linha1 = 0b00000000;
short linha2 = 0b00000000;
short testa_primeira_explosao = 0b00000000;
short game_over = 0b00000000;
short especial = 0b00000000;
short dano_boss1 = 0b00000000;
short dano_boss2 = 0b00000000;
short Boss_teste = 0b00000000;





void CustomChar () {

 const char character1[] = {0,24,4,22,22,4,24,0};
 const char character2[] = {0,0,6,12,6,0,0,0};
 const char character3[] = {0,3,6,10,6,3,0,0};
 const char character4[] = {0,0,17,10,4,10,17,0};
 const char character5[] = {0,0,4,4,31,4,4,0};
 const char character6[] = {0,0,0,14,14,0,0,0};
 const char character7[] = {5,6,14,28,28,14,6,5};
 const char character8[] = {6,12,12,28,28,12,12,6};




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


 }









void apaga_ram(){

char *ponteiro_apaga, contador;

ponteiro_apaga = (char) 0x00;

for(contador=0;contador<0x00;contador++)
 *ponteiro_apaga++ = 0;

ponteiro_apaga = (char ) 0x100;

for(contador=0;contador<0x100;contador++)
 *ponteiro_apaga++ = 0;



}







int random () {

int alea, random;
char randomico;

srand (randomico);
alea = rand()%255;

if ((alea>= 0) && (alea<50))
 random = 1;

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
 apaga_ram();
 return 0;
 }
}







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






void escreve_enterprise(){

 if (button(&PORTD, 0, 50, 1)) {
 posicao_nave = 0b00000001;
 armazena_enterprise = 0b00000001;
 Lcd_chr (1,1, 0);
 }


 else if (button(&PORTD, 1, 50, 1)){
 posicao_nave = 0b00000010;
 armazena_enterprise = 0b00000010;
 Lcd_chr (2,1, 0);
 }

 }








void Chama_Enterprise() {

 switch (posicao_nave) {

 case (0b00000001):
 Lcd_chr (1,1, 0);
 break;

 case (0b00000010):
 Lcd_chr (2,1, 0);
 break;


 }
 }










void Chama_Inimigo() {




 if (linha1 == 0b00000001){

 if (armazena_pos_inimigo1 > 0){

 switch (armazena_pos_inimigo1) {

 case (0b00001111):
 Lcd_chr (1,15, 1);
 break;

 case (0b00001110):
 Lcd_chr (1,14, 1);
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

 switch (armazena_pos_inimigo2) {

 case (0b00001111):
 Lcd_chr (1,15, 2);
 break;

 case (0b00001110):
 Lcd_chr (1,14, 2);
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

 switch (armazena_pos_inimigo1) {

 case (0b00001111):
 Lcd_chr (2,15, 1);
 break;

 case (0b00001110):
 Lcd_chr (2,14, 1);
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

 switch (armazena_pos_inimigo2) {

 case (0b00001111):
 Lcd_chr (2,15, 2);
 break;

 case (0b00001110):
 Lcd_chr (2,14, 2);
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

 switch (armazena_pos_inimigo3) {

 case (0b00001111):
 Lcd_chr (2,15, 6);
 break;

 case (0b00001110):
 Lcd_chr (2,14, 6);
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






int Testa_Tiro_Inimigo(){

int testa_explosao;

 if ((armazena_pos_tiro == testa_inimigo1) && (linha1 == 0b00000001) && (store_tiro == 0b00000001)){
 Lcd_Cmd(_LCD_CLEAR);
 Chama_Enterprise();
 lcd_chr (1, testa_inimigo1, 3);
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






void nave_tiro(){

int teste = 0;

 if (store_tiro == 0b00000001){
 Lcd_Cmd(_LCD_CLEAR);
 Chama_Enterprise();
 Chama_Inimigo();

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
 armazena_pos_tiro = tiro;
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
 armazena_pos_tiro = tiro;
 }
 teste = 0;
 }






int special(){

if ((((button(&PORTD, 3, 200, 1))) && (especial == 1))){
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







void ataque_1 (){

int i = 0b00000000;
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;


while (i<16) {

 linha1 = 0b00000001;
 Lcd_Cmd(_LCD_CLEAR);
 Chama_Enterprise();

 switch (i) {

 case 1:
 Lcd_chr (1,16, 1);
 armazena_pos_inimigo1 = 0b00001111;
 testa_inimigo1 = 0b00010000;
 Chama_Enterprise();

 if ((button(&PORTD, 2, 200, 1))){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
#line 805 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001) {
 i = 15;
 }

 delay_ms (300);
 break;

 case 2:
 Lcd_chr (1,15, 1);
 armazena_pos_inimigo1 = 0b00001110;
 testa_inimigo1 = 0b0001111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 834 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 testa = Testa_Tiro_Inimigo();


 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15;
 }
 }
 delay_ms (300);
 break;

 case 3:
 Lcd_chr (1,14, 1);
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
#line 878 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 4:
 Lcd_chr (1,13, 1);
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
#line 918 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 5:
 Lcd_chr (1,12, 1);
 armazena_pos_inimigo1 = 0b00001011;
 testa_inimigo1 = 0b00001100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 957 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }
 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 6:
 Lcd_chr (1,11, 1);
 armazena_pos_inimigo1 = 0b00001010;
 testa_inimigo1 = 0b00001011;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 995 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }
 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 7:
 Lcd_chr (1,10, 1);
 armazena_pos_inimigo1 = 0b00001001;
 testa_inimigo1 = 0b00001010;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1034 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){
 if (testa_tiro == 1){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 }
 delay_ms (300);
 break;

 case 8:
 Lcd_chr (1,9, 1);
 armazena_pos_inimigo1 = 0b00001000;
 testa_inimigo1 = 0b00001001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 1074 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 9:
 Lcd_chr (1,8, 1);
 armazena_pos_inimigo1 = 0b00000111;
 testa_inimigo1 = 0b00001000;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1114 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 10:
 Lcd_chr (1,7, 1);
 armazena_pos_inimigo1 = 0b00000110;
 testa_inimigo1 = 0b00000111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();

 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1155 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 11:
 Lcd_chr (1,6, 1);
 armazena_pos_inimigo1 = 0b00000101;
 testa_inimigo1 = 0b00000110;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 1194 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 12:
 Lcd_chr (1,5, 1);
 armazena_pos_inimigo1 = 0b00000100;
 testa_inimigo1 = 0b00000101;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;}
#line 1233 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 13:
 Lcd_chr (1,4, 1);
 armazena_pos_inimigo1 = 0b00000011;
 testa_inimigo1 = 0b00000100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;}
#line 1272 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 14:
 Lcd_chr (1,3, 1);
 armazena_pos_inimigo1 = 0b00000010;
 testa_inimigo1 = 0b00000011;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 1312 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }

 delay_ms (300);
 break;


 case 15:
 Lcd_chr (1,2, 1);
 armazena_pos_inimigo1 = 0b00000001;
 testa_inimigo1 = 0b00000010;
 pos_inimigo_final = 0b00000001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;}
#line 1355 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 else if (pos_inimigo_final == 0b00000001) {
 GameOver(); }
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






void ataque_2 (){

int i = 0b00000000;
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;

while (i<16) {

 linha2 = 0b00000010;
 Lcd_Cmd(_LCD_CLEAR);
 Chama_Enterprise();

 switch (i) {

 case 1:
 Lcd_chr (2,16, 2);
 armazena_pos_inimigo2 = 0b00001111;
 testa_inimigo2 = 0b00010000;

 if ((button(&PORTD, 2, 200, 1))){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
#line 1435 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 delay_ms (300);
 break;

 case 2:
 Lcd_chr (2,15, 2);
 armazena_pos_inimigo2 = 0b00001110;
 testa_inimigo2 = 0b00001111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1463 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 3:
 Lcd_chr (2,14, 2);
 armazena_pos_inimigo2 = 0b00001101;
 testa_inimigo2 = 0b00001110;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1503 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 4:
 Lcd_chr (2,13, 2);
 armazena_pos_inimigo2 = 0b00001100;
 testa_inimigo2 = 0b00001101;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1543 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 5:
 Lcd_chr (2,12, 2);
 armazena_pos_inimigo2 = 0b00001011;
 testa_inimigo2 = 0b00001100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1583 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 6:
 Lcd_chr (2,11, 2);
 armazena_pos_inimigo2 = 0b00001010;
 testa_inimigo2 = 0b00001011;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1623 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b0000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 7:
 Lcd_chr (2,10, 2);
 armazena_pos_inimigo2 = 0b00001001;
 testa_inimigo2 = 0b00001010;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1663 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 8:
 Lcd_chr (2,9, 2);
 armazena_pos_inimigo2 = 0b00001000;
 testa_inimigo2 = 0b00001001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1703 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 9:
 Lcd_chr (2,8, 2);
 armazena_pos_inimigo2 = 0b00000111;
 testa_inimigo2 = 0b00001000;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1743 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 10:
 Lcd_chr (2,7, 2);
 armazena_pos_inimigo2 = 0b00000110;
 testa_inimigo2 = 0b00000111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1783 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 11:
 Lcd_chr (2,6, 2);
 armazena_pos_inimigo2 = 0b00000101;
 testa_inimigo2 = 0b00000110;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1823 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;

 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 1){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 12:
 Lcd_chr (2,5, 2);
 armazena_pos_inimigo2 = 0b00000100;
 testa_inimigo2 = 0b00000101;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1864 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 }
 delay_ms (300);
 break;

 case 13:
 Lcd_chr (2,4, 2);
 armazena_pos_inimigo2 = 0b00000011;
 testa_inimigo2 = 0b00000100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1905 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 14:
 Lcd_chr (2,3, 2);
 armazena_pos_inimigo2 = 0b00000010;
 testa_inimigo2 = 0b00000011;
 pos_inimigo_final = 0b000000010;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1946 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 15:
 Lcd_chr (2,2, 2);
 armazena_pos_inimigo1 = 0b00000001;
 testa_inimigo2 = 0b00000010;
 pos_inimigo_final = 0b00000001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 1987 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }


 else if (pos_inimigo_final == 0b00000001) {
 GameOver(); }
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







void ataque_3 (){


int i = 0b00000000;
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;


while (i<16) {

 linha1 = 0b00000001;
 Lcd_Cmd(_LCD_CLEAR);
 Chama_Enterprise();

 switch (i) {

 case 1:
 Lcd_chr (1,16, 2);
 armazena_pos_inimigo2 = 0b00001111;
 testa_inimigo1 = 0b00010000;
 Chama_Enterprise();

 if ((button(&PORTD, 2, 200, 1))){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }
 testa = Testa_Tiro_Inimigo();
#line 2071 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001) {
 i = 15; }

 delay_ms (150);
 break;

 case 2:
 Lcd_chr (1,15, 2);
 armazena_pos_inimigo2 = 0b00001110;
 testa_inimigo1 = 0b0001111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 2099 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 testa = Testa_Tiro_Inimigo();

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15;
 }
 }
 delay_ms (150);
 break;

 case 3:
 Lcd_chr (1,14, 2);
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
#line 2142 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (150);
 break;

 case 4:
 Lcd_chr (1,13, 2);
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
#line 2182 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (150);
 break;

 case 5:
 Lcd_chr (1,12, 2);
 armazena_pos_inimigo2 = 0b00001011;
 testa_inimigo1 = 0b00001100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 2221 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }
 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 6:
 Lcd_chr (1,11, 2);
 armazena_pos_inimigo2 = 0b00001010;
 testa_inimigo1 = 0b00001011;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 2259 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }
 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (150);
 break;

 case 7:
 Lcd_chr (1,10, 2);
 armazena_pos_inimigo2 = 0b00001001;
 testa_inimigo1 = 0b00001010;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;}
#line 2297 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){
 if (testa_tiro == 1){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 }
 delay_ms (150);
 break;

 case 8:
 Lcd_chr (1,9, 2);
 armazena_pos_inimigo2 = 0b00001000;
 testa_inimigo1 = 0b00001001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 2337 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (150);
 break;

 case 9:
 Lcd_chr (1,8, 2);
 armazena_pos_inimigo2 = 0b00000111;
 testa_inimigo1 = 0b00001000;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;}
#line 2376 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (150);
 break;

 case 10:
 Lcd_chr (1,7, 2);
 armazena_pos_inimigo2 = 0b00000110;
 testa_inimigo1 = 0b00000111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 2415 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (150);
 break;

 case 11:
 Lcd_chr (1,6, 2);
 armazena_pos_inimigo2 = 0b00000101;
 testa_inimigo1 = 0b00000110;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 2455 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (150);
 break;

 case 12:
 Lcd_chr (1,5, 2);
 armazena_pos_inimigo2 = 0b00000100;
 testa_inimigo1 = 0b00000101;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;}
#line 2495 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (150);
 break;

 case 13:
 Lcd_chr (1,4, 2);
 armazena_pos_inimigo2 = 0b00000011;
 testa_inimigo1 = 0b00000100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;}
#line 2534 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (150);
 break;

 case 14:
 Lcd_chr (1,3, 2);
 armazena_pos_inimigo2 = 0b00000010;
 testa_inimigo1 = 0b00000011;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 2574 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }

 delay_ms (150);
 break;


 case 15:
 Lcd_chr (1,2, 2);
 armazena_pos_inimigo2 = 0b00000001;
 testa_inimigo1 = 0b00000010;
 pos_inimigo_final = 0b00000001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;}
#line 2618 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 else if (pos_inimigo_final == 0b00000001) {
 GameOver(); }
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





void ataque_4 (){


int i = 0b00000000;
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;

while (i<16) {

 linha2 = 0b00000010;
 Lcd_Cmd(_LCD_CLEAR);
 Chama_Enterprise();

 switch (i) {

 case 1:
 Lcd_chr (2,16, 1);
 armazena_pos_inimigo1 = 0b00001111;
 testa_inimigo2 = 0b00010000;

 if ((button(&PORTD, 2, 200, 1))){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }
#line 2697 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 delay_ms (200);
 break;

 case 2:
 Lcd_chr (2,15, 1);
 armazena_pos_inimigo1 = 0b00001110;
 testa_inimigo2 = 0b00001111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 2726 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 3:
 Lcd_chr (2,14, 1);
 armazena_pos_inimigo1 = 0b00001101;
 testa_inimigo2 = 0b00001110;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 2766 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 4:
 Lcd_chr (2,13, 1);
 armazena_pos_inimigo1 = 0b00001100;
 testa_inimigo2 = 0b00001101;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 2805 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 5:
 Lcd_chr (2,12, 1);
 armazena_pos_inimigo1 = 0b00001011;
 testa_inimigo2 = 0b00001100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 2845 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 6:
 Lcd_chr (2,11, 1);
 armazena_pos_inimigo1 = 0b00001010;
 testa_inimigo2 = 0b00001011;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 2885 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b0000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 7:
 Lcd_chr (2,10, 1);
 armazena_pos_inimigo1 = 0b00001001;
 testa_inimigo2 = 0b00001010;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 2925 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 8:
 Lcd_chr (2,9, 1);
 armazena_pos_inimigo1 = 0b00001000;
 testa_inimigo2 = 0b00001001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 2965 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 9:
 Lcd_chr (2,8, 1);
 armazena_pos_inimigo1 = 0b00000111;
 testa_inimigo2 = 0b00001000;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3005 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 10:
 Lcd_chr (2,7, 1);
 armazena_pos_inimigo1 = 0b00000110;
 testa_inimigo2 = 0b00000111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3045 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 11:
 Lcd_chr (2,6, 1);
 armazena_pos_inimigo1 = 0b00000101;
 testa_inimigo2 = 0b00000110;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3085 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;

 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 1){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 12:
 Lcd_chr (2,5, 1);
 armazena_pos_inimigo1 = 0b00000100;
 testa_inimigo2 = 0b00000101;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3126 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 }
 delay_ms (200);
 break;

 case 13:
 Lcd_chr (2,4, 1);
 armazena_pos_inimigo1 = 0b00000011;
 testa_inimigo2 = 0b00000100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3167 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 14:
 Lcd_chr (2,3, 1);
 armazena_pos_inimigo1 = 0b00000010;
 testa_inimigo2 = 0b00000011;
 pos_inimigo_final = 0b000000010;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3208 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 15:
 Lcd_chr (2,2, 1);
 armazena_pos_inimigo1 = 0b00000001;
 testa_inimigo2 = 0b00000010;
 pos_inimigo_final = 0b00000001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3249 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }


 else if (pos_inimigo_final == 0b00000001) {
 GameOver(); }
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






void ataque_5 (){

int i = 0b00000000;
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;


while (i<16) {

 linha1 = 0b00000001;
 Lcd_Cmd(_LCD_CLEAR);
 Chama_Enterprise();

 switch (i) {

 case 1:
 Lcd_chr (1,16, 1);
 armazena_pos_inimigo1 = 0b00001111;
 testa_inimigo1 = 0b00010000;
 Chama_Enterprise();

 if ((button(&PORTD, 2, 200, 1))){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }
#line 3330 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 testa = Testa_Tiro_Inimigo();

 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001) {
 i = 15; }

 delay_ms (300);
 break;

 case 2:

 armazena_pos_inimigo1 = 0b00001110;
 testa_inimigo1 = 0b0001111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3360 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 testa = Testa_Tiro_Inimigo();

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15;
 }
 }
 delay_ms (300);
 break;

 case 3:

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
#line 3403 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 4:
 Lcd_chr (1,13, 1);
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
#line 3442 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 5:

 armazena_pos_inimigo1 = 0b00001011;
 testa_inimigo1 = 0b00001100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 3481 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }
 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 6:
 Lcd_chr (1,11, 1);
 armazena_pos_inimigo1 = 0b00001010;
 testa_inimigo1 = 0b00001011;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 3519 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }
 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 7:
 Lcd_chr (1,10, 1);
 armazena_pos_inimigo1 = 0b00001001;
 testa_inimigo1 = 0b00001010;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;}
#line 3557 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){
 if (testa_tiro == 1){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 }
 delay_ms (300);
 break;

 case 8:

 armazena_pos_inimigo1 = 0b00001000;
 testa_inimigo1 = 0b00001001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 3597 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 9:
 Lcd_chr (1,8, 1);
 armazena_pos_inimigo1 = 0b00000111;
 testa_inimigo1 = 0b00001000;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;}
#line 3636 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 10:
 Lcd_chr (1,7, 1);
 armazena_pos_inimigo1 = 0b00000110;
 testa_inimigo1 = 0b00000111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 3675 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 11:

 armazena_pos_inimigo1 = 0b00000101;
 testa_inimigo1 = 0b00000110;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001; }
#line 3714 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 12:

 armazena_pos_inimigo1 = 0b00000100;
 testa_inimigo1 = 0b00000101;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3754 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 13:
 Lcd_chr (1,4, 1);
 armazena_pos_inimigo1 = 0b00000011;
 testa_inimigo1 = 0b00000100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3794 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (300);
 break;

 case 14:
 Lcd_chr (1,3, 1);
 armazena_pos_inimigo1 = 0b00000010;
 testa_inimigo1 = 0b00000011;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3835 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }

 delay_ms (300);
 break;


 case 15:
 Lcd_chr (1,2, 1);
 armazena_pos_inimigo1 = 0b00000001;
 testa_inimigo1 = 0b00000010;
 pos_inimigo_final = 0b00000001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha1 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3879 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){

 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 else if (pos_inimigo_final == 0b00000001) {
 GameOver(); }
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








void ataque_6 (){

int i = 0b00000000;
int testa = 0b00000000;
short explode_nave = 0b00000000;
short tiro_especial;

while (i<16) {

 linha2 = 0b00000010;
 Lcd_Cmd(_LCD_CLEAR);
 Chama_Enterprise();

 switch (i) {

 case 1:
 Lcd_chr (2,16, 6);
 armazena_pos_inimigo3 = 0b00001111;
 testa_inimigo2 = 0b00010000;

 if ((button(&PORTD, 2, 200, 1))){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }
#line 3959 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 delay_ms (200);
 break;

 case 2:
 Lcd_chr (2,15, 6);
 armazena_pos_inimigo3 = 0b00001110;
 testa_inimigo2 = 0b00001111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 3988 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 3:
 Lcd_chr (2,14, 6);
 armazena_pos_inimigo3 = 0b00001101;
 testa_inimigo2 = 0b00001110;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4028 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 4:
 Lcd_chr (2,13, 6);
 armazena_pos_inimigo3 = 0b00001100;
 testa_inimigo2 = 0b00001101;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4068 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 5:
 Lcd_chr (2,12, 6);
 armazena_pos_inimigo3 = 0b00001011;
 testa_inimigo2 = 0b00001100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4106 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 6:
 Lcd_chr (2,11, 6);
 armazena_pos_inimigo3 = 0b00001010;
 testa_inimigo2 = 0b00001011;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4144 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b0000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 7:

 armazena_pos_inimigo3 = 0b00001001;
 testa_inimigo2 = 0b00001010;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4182 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 8:
 Lcd_chr (2,9, 6);
 armazena_pos_inimigo3 = 0b00001000;
 testa_inimigo2 = 0b00001001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4220 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 9:
 Lcd_chr (2,8, 6);
 armazena_pos_inimigo3 = 0b00000111;
 testa_inimigo2 = 0b00001000;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4258 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 10:
 Lcd_chr (2,7, 6);
 armazena_pos_inimigo3 = 0b00000110;
 testa_inimigo2 = 0b00000111;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4295 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 ;
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 11:
 Lcd_chr (2,6, 6);
 armazena_pos_inimigo3 = 0b00000101;
 testa_inimigo2 = 0b00000110;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4334 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;

 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 1){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 12:
 Lcd_chr (2,5, 6);
 armazena_pos_inimigo3 = 0b00000100;
 testa_inimigo2 = 0b00000101;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4373 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }

 }
 delay_ms (200);
 break;

 case 13:
 Lcd_chr (2,4, 6);
 armazena_pos_inimigo3 = 0b00000011;
 testa_inimigo2 = 0b00000100;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4412 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 14:
 Lcd_chr (2,3, 6);
 armazena_pos_inimigo3 = 0b00000010;
 testa_inimigo2 = 0b00000011;
 pos_inimigo_final = 0b000000010;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4451 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }
 }
 delay_ms (200);
 break;

 case 15:
 Lcd_chr (2,2, 6);
 armazena_pos_inimigo3 = 0b00000001;
 testa_inimigo2 = 0b00000010;
 pos_inimigo_final = 0b00000001;

 Chama_Enterprise();
 escreve_enterprise();

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001){
 i = 15;
 linha2 = 0b00000000;
 explode_nave = 0b00000001;
 }
#line 4491 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
 if (explode_nave == 0b00000000){
 if (testa_tiro == 0b00000001){
 nave_tiro();
 }

 else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
 store_tiro = posicao_nave;
 nave_tiro();
 testa_tiro = 0b00000001;
 }

 testa = Testa_Tiro_Inimigo();
 if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
 i = 15; }


 else if (pos_inimigo_final == 0b00000001) {
 GameOver(); }
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






void Menu(){

 char txt1[] = "PIC INVADERS";
 char txt2[] = "VIA LACTA";
 char txt3[] = "NEW GAME";
 char txt4[] = "ABOUT";
 char txt5[] = "Desenvolvido por:";
 char txt6[] = "Hollweg";
 char txt7[] = "v.6";
 char txt8[] = "Diario";
 char txt9[] = "do Capitao";
 char txt10[] = "Data Estelar";
 char txt11[] = "1512.2";
 char txt12[] = "Seguiamos para o";
 char txt13[] = "Planeta Kripke";
 char txt14[] = "Em Busca do";
 char txt15[] = "Chocolate Magico";
 char txt16[] = "Mas avistamos";
 char txt17[] = "Formigas Aliens";
 char txt18[] = "Famintas Crueis";
 char txt19[] = "Sedentas por";
 char txt20[] = "Acucar Humano.";
 char txt21[] = "Colocamos Nossos";
 char txt22[] = "Phasers no Modo";
 char txt23[] = "Caramelizar...";
 char txt24[] = "A Batalha Estava";
 char txt25[] = "Proxima...";
 char txt26[] = "Sacamos as Armas";
 char txt27[] = "E Combatemos";
 char txt28[] = "Esses Aliens";
 char txt35[] = "Diabeticos!";
 char txt29[] = "HELP";
 char txt30[] = "Button 0:UP";
 char txt31[] = "Button 1:DOWN";
 char txt32[] = "Button 2:Fire!";
 char txt33[] = "Button 3:SPECIAL";
 char txt34[] = "NIVEL 1";
 char txt36[] = "EM BUSCA DO";
 char txt37[] = "CHOCOLATE MAGICO";

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
 Lcd_out (1,3, txt3);
 Lcd_out (2,3, txt4);
 Lcd_out (1,12, txt29);
 delay_ms (250);

 if (button(&PORTD, 0, 200, 1)){

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

 return; }


 else if (button(&PORTD, 1, 200, 1)) {

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

 else if (button(&PORTD, 2, 200, 1)) {
 while (1){

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








int Boss(){

short conta_tiro = 0;
short testa_tiro2;

do {
 Boss_teste = 0b0000001;
 Lcd_Cmd(_LCD_CLEAR);
 Chama_Enterprise();
 Lcd_chr (1,16, 7);
 Lcd_chr (2,16, 7);
 escreve_enterprise();


 if (testa_tiro2 == 0b00000001){
 nave_tiro();
 Lcd_chr (1,16, 7);
 Lcd_chr (2,16, 7);
 conta_tiro++;
 }

 else if ((button(&PORTD, 2, 200, 1))){
 store_tiro = posicao_nave;
 nave_tiro();
 Lcd_chr (1,16, 7);
 Lcd_chr (2,16, 7);
 testa_tiro2 = 0b00000001;
 }


 delay_ms (270);

 }while (conta_tiro < 0b00001101);

 if (store_tiro == 0b00000001)
 dano_boss1++;

 else if (store_tiro == 0b00000010)
 dano_boss2++;

 if (((dano_boss1 == 0b00000010) && (dano_boss2 == 0b00000000)) || ((dano_boss1 == 0b00000000) && (dano_boss2 == 0b00000010)) || ((dano_boss1 == 0b00000011) && (dano_boss2 == 0b00000001)) || ((dano_boss1 == 0b00000001) && (dano_boss2 == 0b00000011)) || ((dano_boss1 == 0b00000100) && (dano_boss2 == 0b00000010)) || ((dano_boss1 == 0b00000010) && (dano_boss2 == 0b00000100)) || ((dano_boss1 == 0b00000101) && (dano_boss2 == 0b00000011)) || ((dano_boss1 == 0b00000011) && (dano_boss2 == 0b00000101))){
 dano_boss1 = 0b00000000;
 dano_boss2 = 0b00000000;

 if( posicao_nave == 0b00000001) {
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

 else if ((dano_boss1 == 4) && (dano_boss2 == 4)) {
 Win_Game();
 return 1;
 }

 conta_tiro = 0b0000000;
 testa_tiro2 = 0b0000000;
 tiro = 0b00000010;
 store_tiro = 0b00000000;

 }







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

var_random = random();

 if (var_random == 1) {

 for (k = 0; k<2; k++){

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

 if (game_over == 1) {
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
#line 5523 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 032 - Space Invaders/Projeto 032 - Space Invaders v.7/MyProject.c"
}
