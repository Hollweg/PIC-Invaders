
_CustomChar:

;MyProject.c,48 :: 		void CustomChar () {
;MyProject.c,63 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,64 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
	CLRF        CustomChar_i_L0+0 
L_CustomChar0:
	MOVF        CustomChar_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar1
	MOVLW       CustomChar_character1_L0+0
	ADDWF       CustomChar_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(CustomChar_character1_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(CustomChar_character1_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar_i_L0+0, 1 
	GOTO        L_CustomChar0
L_CustomChar1:
;MyProject.c,65 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
	CLRF        CustomChar_i_L0+0 
L_CustomChar3:
	MOVF        CustomChar_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar4
	MOVLW       CustomChar_character2_L0+0
	ADDWF       CustomChar_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(CustomChar_character2_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(CustomChar_character2_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar_i_L0+0, 1 
	GOTO        L_CustomChar3
L_CustomChar4:
;MyProject.c,66 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
	CLRF        CustomChar_i_L0+0 
L_CustomChar6:
	MOVF        CustomChar_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar7
	MOVLW       CustomChar_character3_L0+0
	ADDWF       CustomChar_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(CustomChar_character3_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(CustomChar_character3_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar_i_L0+0, 1 
	GOTO        L_CustomChar6
L_CustomChar7:
;MyProject.c,67 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
	CLRF        CustomChar_i_L0+0 
L_CustomChar9:
	MOVF        CustomChar_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar10
	MOVLW       CustomChar_character4_L0+0
	ADDWF       CustomChar_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(CustomChar_character4_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(CustomChar_character4_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar_i_L0+0, 1 
	GOTO        L_CustomChar9
L_CustomChar10:
;MyProject.c,68 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
	CLRF        CustomChar_i_L0+0 
L_CustomChar12:
	MOVF        CustomChar_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar13
	MOVLW       CustomChar_character5_L0+0
	ADDWF       CustomChar_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(CustomChar_character5_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(CustomChar_character5_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar_i_L0+0, 1 
	GOTO        L_CustomChar12
L_CustomChar13:
;MyProject.c,69 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
	CLRF        CustomChar_i_L0+0 
L_CustomChar15:
	MOVF        CustomChar_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar16
	MOVLW       CustomChar_character6_L0+0
	ADDWF       CustomChar_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(CustomChar_character6_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(CustomChar_character6_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar_i_L0+0, 1 
	GOTO        L_CustomChar15
L_CustomChar16:
;MyProject.c,70 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
	CLRF        CustomChar_i_L0+0 
L_CustomChar18:
	MOVF        CustomChar_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar19
	MOVLW       CustomChar_character7_L0+0
	ADDWF       CustomChar_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(CustomChar_character7_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(CustomChar_character7_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar_i_L0+0, 1 
	GOTO        L_CustomChar18
L_CustomChar19:
;MyProject.c,71 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character8[i]);
	CLRF        CustomChar_i_L0+0 
L_CustomChar21:
	MOVF        CustomChar_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar22
	MOVLW       CustomChar_character8_L0+0
	ADDWF       CustomChar_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(CustomChar_character8_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(CustomChar_character8_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar_i_L0+0, 1 
	GOTO        L_CustomChar21
L_CustomChar22:
;MyProject.c,74 :: 		}
L_end_CustomChar:
	RETURN      0
; end of _CustomChar

_apaga_ram:

;MyProject.c,84 :: 		void apaga_ram(){
;MyProject.c,88 :: 		ponteiro_apaga = (char) 0x00;                            //Bank 1 - Valor Inicial
	CLRF        R1 
	CLRF        R2 
;MyProject.c,90 :: 		for(contador=0;contador<0x00;contador++)
	CLRF        R3 
L_apaga_ram24:
	MOVLW       0
	SUBWF       R3, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_apaga_ram25
;MyProject.c,91 :: 		*ponteiro_apaga++ = 0;
	MOVFF       R1, FSR1L
	MOVFF       R2, FSR1H
	CLRF        POSTINC1+0 
	INFSNZ      R1, 1 
	INCF        R2, 1 
;MyProject.c,90 :: 		for(contador=0;contador<0x00;contador++)
	INCF        R3, 1 
;MyProject.c,91 :: 		*ponteiro_apaga++ = 0;
	GOTO        L_apaga_ram24
L_apaga_ram25:
;MyProject.c,93 :: 		ponteiro_apaga = (char ) 0x100;                          // Bank 2 - Valor Inicial
	MOVLW       0
	MOVWF       R1 
	MOVLW       1
	MOVWF       R2 
;MyProject.c,95 :: 		for(contador=0;contador<0x100;contador++)
	CLRF        R3 
L_apaga_ram27:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__apaga_ram1699
	MOVLW       0
	SUBWF       R3, 0 
L__apaga_ram1699:
	BTFSC       STATUS+0, 0 
	GOTO        L_apaga_ram28
;MyProject.c,96 :: 		*ponteiro_apaga++ = 0;
	MOVFF       R1, FSR1L
	MOVFF       R2, FSR1H
	CLRF        POSTINC1+0 
	INFSNZ      R1, 1 
	INCF        R2, 1 
;MyProject.c,95 :: 		for(contador=0;contador<0x100;contador++)
	INCF        R3, 1 
;MyProject.c,96 :: 		*ponteiro_apaga++ = 0;
	GOTO        L_apaga_ram27
L_apaga_ram28:
;MyProject.c,100 :: 		}
L_end_apaga_ram:
	RETURN      0
; end of _apaga_ram

_random:

;MyProject.c,108 :: 		int random () {
;MyProject.c,113 :: 		srand (randomico);                                   //gera numero aleatorio toda vez q executar o programa
	MOVF        random_randomico_L0+0, 0 
	MOVWF       FARG_srand_x+0 
	MOVLW       0
	MOVWF       FARG_srand_x+1 
	CALL        _srand+0, 0
;MyProject.c,114 :: 		alea = rand()%255;                                   //%255 gera de 0  a 255 ai você define o valor q quiser
	CALL        _rand+0, 0
	MOVLW       255
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       random_alea_L0+0 
	MOVF        R1, 0 
	MOVWF       random_alea_L0+1 
;MyProject.c,116 :: 		if ((alea>= 0) && (alea<50))                         // Divide o numero char em 6 posiçoes, de forma com que de acordo com o numero
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__random1701
	MOVLW       0
	SUBWF       R0, 0 
L__random1701:
	BTFSS       STATUS+0, 0 
	GOTO        L_random32
	MOVLW       128
	XORWF       random_alea_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__random1702
	MOVLW       50
	SUBWF       random_alea_L0+0, 0 
L__random1702:
	BTFSC       STATUS+0, 0 
	GOTO        L_random32
L__random1509:
;MyProject.c,117 :: 		random = 1;                                   // randomico gerado, ele entra em um uma ordem "randomica pré definida"
	MOVLW       1
	MOVWF       random_random_L0+0 
	MOVLW       0
	MOVWF       random_random_L0+1 
	GOTO        L_random33
L_random32:
;MyProject.c,119 :: 		else if ((alea>= 50) && (alea<100))
	MOVLW       128
	XORWF       random_alea_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__random1703
	MOVLW       50
	SUBWF       random_alea_L0+0, 0 
L__random1703:
	BTFSS       STATUS+0, 0 
	GOTO        L_random36
	MOVLW       128
	XORWF       random_alea_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__random1704
	MOVLW       100
	SUBWF       random_alea_L0+0, 0 
L__random1704:
	BTFSC       STATUS+0, 0 
	GOTO        L_random36
L__random1508:
;MyProject.c,120 :: 		random = 2;
	MOVLW       2
	MOVWF       random_random_L0+0 
	MOVLW       0
	MOVWF       random_random_L0+1 
	GOTO        L_random37
L_random36:
;MyProject.c,122 :: 		else if ((alea>= 100) && (alea<150))
	MOVLW       128
	XORWF       random_alea_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__random1705
	MOVLW       100
	SUBWF       random_alea_L0+0, 0 
L__random1705:
	BTFSS       STATUS+0, 0 
	GOTO        L_random40
	MOVLW       128
	XORWF       random_alea_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__random1706
	MOVLW       150
	SUBWF       random_alea_L0+0, 0 
L__random1706:
	BTFSC       STATUS+0, 0 
	GOTO        L_random40
L__random1507:
;MyProject.c,123 :: 		random = 3;
	MOVLW       3
	MOVWF       random_random_L0+0 
	MOVLW       0
	MOVWF       random_random_L0+1 
	GOTO        L_random41
L_random40:
;MyProject.c,125 :: 		else if ((alea>= 150) && (alea<200))
	MOVLW       128
	XORWF       random_alea_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__random1707
	MOVLW       150
	SUBWF       random_alea_L0+0, 0 
L__random1707:
	BTFSS       STATUS+0, 0 
	GOTO        L_random44
	MOVLW       128
	XORWF       random_alea_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__random1708
	MOVLW       200
	SUBWF       random_alea_L0+0, 0 
L__random1708:
	BTFSC       STATUS+0, 0 
	GOTO        L_random44
L__random1506:
;MyProject.c,126 :: 		random = 4;
	MOVLW       4
	MOVWF       random_random_L0+0 
	MOVLW       0
	MOVWF       random_random_L0+1 
	GOTO        L_random45
L_random44:
;MyProject.c,128 :: 		else if ((alea>= 200) && (alea<255))
	MOVLW       128
	XORWF       random_alea_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__random1709
	MOVLW       200
	SUBWF       random_alea_L0+0, 0 
L__random1709:
	BTFSS       STATUS+0, 0 
	GOTO        L_random48
	MOVLW       128
	XORWF       random_alea_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__random1710
	MOVLW       255
	SUBWF       random_alea_L0+0, 0 
L__random1710:
	BTFSC       STATUS+0, 0 
	GOTO        L_random48
L__random1505:
;MyProject.c,129 :: 		random = 5;
	MOVLW       5
	MOVWF       random_random_L0+0 
	MOVLW       0
	MOVWF       random_random_L0+1 
L_random48:
L_random45:
L_random41:
L_random37:
L_random33:
;MyProject.c,131 :: 		return random;
	MOVF        random_random_L0+0, 0 
	MOVWF       R0 
	MOVF        random_random_L0+1, 0 
	MOVWF       R1 
;MyProject.c,133 :: 		}
L_end_random:
	RETURN      0
; end of _random

_GameOver:

;MyProject.c,141 :: 		int GameOver() {
;MyProject.c,143 :: 		short j = 0;                                                            // Se essa funcao for chamada, é fim de jogo para o usuario,
	CLRF        GameOver_j_L0+0 
;MyProject.c,147 :: 		for (j = 0; j<4; j++){
	CLRF        GameOver_j_L0+0 
L_GameOver49:
	MOVLW       128
	XORWF       GameOver_j_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       4
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_GameOver50
;MyProject.c,149 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,150 :: 		lcd_chr (1, 6, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,151 :: 		lcd_chr (1, 7, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,152 :: 		lcd_chr (1, 8, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,153 :: 		lcd_chr (1, 9, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,154 :: 		lcd_chr (1, 10, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,155 :: 		lcd_chr (2, 6, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,156 :: 		lcd_chr (2, 7, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,157 :: 		lcd_chr (2, 8, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,158 :: 		lcd_chr (2, 9, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,159 :: 		lcd_chr (2, 10, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,160 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_GameOver52:
	DECFSZ      R13, 1, 1
	BRA         L_GameOver52
	DECFSZ      R12, 1, 1
	BRA         L_GameOver52
	DECFSZ      R11, 1, 1
	BRA         L_GameOver52
	NOP
;MyProject.c,161 :: 		lcd_chr (1, 6, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,162 :: 		lcd_chr (1, 7, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,163 :: 		lcd_chr (1, 8, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,164 :: 		lcd_chr (1, 9, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,165 :: 		lcd_chr (1, 10, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,166 :: 		lcd_chr (2, 6, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,167 :: 		lcd_chr (2, 7, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,168 :: 		lcd_chr (2, 8, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,169 :: 		lcd_chr (2, 9, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,170 :: 		lcd_chr (2, 10, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,171 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_GameOver53:
	DECFSZ      R13, 1, 1
	BRA         L_GameOver53
	DECFSZ      R12, 1, 1
	BRA         L_GameOver53
	DECFSZ      R11, 1, 1
	BRA         L_GameOver53
	NOP
;MyProject.c,147 :: 		for (j = 0; j<4; j++){
	INCF        GameOver_j_L0+0, 1 
;MyProject.c,173 :: 		}
	GOTO        L_GameOver49
L_GameOver50:
;MyProject.c,174 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,175 :: 		Lcd_out (1,3, "GAME OVER!!");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,176 :: 		delay_ms(5000);
	MOVLW       127
	MOVWF       R11, 0
	MOVLW       212
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_GameOver54:
	DECFSZ      R13, 1, 1
	BRA         L_GameOver54
	DECFSZ      R12, 1, 1
	BRA         L_GameOver54
	DECFSZ      R11, 1, 1
	BRA         L_GameOver54
	NOP
	NOP
;MyProject.c,178 :: 		if (boss_teste == 1) {
	MOVF        _Boss_teste+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_GameOver55
;MyProject.c,179 :: 		game_over = 1;
	MOVLW       1
	MOVWF       _game_over+0 
;MyProject.c,180 :: 		return game_over;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_GameOver
;MyProject.c,181 :: 		}
L_GameOver55:
;MyProject.c,183 :: 		apaga_ram();
	CALL        _apaga_ram+0, 0
;MyProject.c,184 :: 		return 0;
	CLRF        R0 
	CLRF        R1 
;MyProject.c,186 :: 		}
L_end_GameOver:
	RETURN      0
; end of _GameOver

_Win_Game:

;MyProject.c,194 :: 		void Win_Game(){
;MyProject.c,196 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,197 :: 		lcd_chr (1, 16, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,198 :: 		lcd_chr (2, 16, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,199 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_Win_Game57:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game57
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game57
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game57
	NOP
;MyProject.c,201 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,202 :: 		lcd_chr (1, 16, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,203 :: 		lcd_chr (2, 16, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,204 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_Win_Game58:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game58
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game58
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game58
	NOP
;MyProject.c,206 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,207 :: 		lcd_chr (1, 16, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,208 :: 		lcd_chr (2, 16, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,209 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_Win_Game59:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game59
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game59
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game59
	NOP
;MyProject.c,211 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,212 :: 		lcd_chr (1, 16, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,213 :: 		lcd_chr (2, 16, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,214 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_Win_Game60:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game60
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game60
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game60
	NOP
;MyProject.c,216 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,217 :: 		Lcd_Out (1, 1, "Apos derrotar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,218 :: 		Lcd_Out (2, 2, "As formigas");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,219 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Win_Game61:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game61
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game61
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game61
	NOP
	NOP
;MyProject.c,221 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,222 :: 		Lcd_Out (1, 2, "Devoradoras de");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,223 :: 		Lcd_Out (2, 3, "Chocolates");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,224 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Win_Game62:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game62
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game62
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game62
	NOP
	NOP
;MyProject.c,226 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,227 :: 		Lcd_Out (1, 3, "Chegamos ao");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,228 :: 		Lcd_Out (2, 2, "nosso destino.");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,229 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Win_Game63:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game63
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game63
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game63
	NOP
	NOP
;MyProject.c,231 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,232 :: 		Lcd_Out (1, 1, "Assim degustamos");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,233 :: 		Lcd_Out (2, 3, "Com o Povo do");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,234 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Win_Game64:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game64
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game64
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game64
	NOP
	NOP
;MyProject.c,236 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,237 :: 		Lcd_Out (1, 2, "Planeta Kripke");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,238 :: 		Lcd_Out (2, 2, "O Achocolatado");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,239 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Win_Game65:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game65
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game65
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game65
	NOP
	NOP
;MyProject.c,241 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,242 :: 		Lcd_Out (1, 2, "Mais Saboroso");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,243 :: 		Lcd_Out (2, 2, "Belo e Magico");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,244 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Win_Game66:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game66
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game66
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game66
	NOP
	NOP
;MyProject.c,246 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,247 :: 		Lcd_Out (1, 4, "de Toda a");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,248 :: 		Lcd_Out (2, 4, "VIA LACTA!");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,249 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Win_Game67:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game67
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game67
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game67
	NOP
	NOP
;MyProject.c,251 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,252 :: 		Lcd_Out (1, 3, "Desenvolvido");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,253 :: 		Lcd_Out (2, 2, "Por Hollweg");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,254 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Win_Game68:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game68
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game68
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game68
;MyProject.c,256 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,257 :: 		Lcd_Out (1, 3, "WEG Studios");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr18_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr18_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,258 :: 		Lcd_Out (2, 3, "WEG Bobagens");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr19_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr19_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,259 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Win_Game69:
	DECFSZ      R13, 1, 1
	BRA         L_Win_Game69
	DECFSZ      R12, 1, 1
	BRA         L_Win_Game69
	DECFSZ      R11, 1, 1
	BRA         L_Win_Game69
;MyProject.c,261 :: 		}
L_end_Win_Game:
	RETURN      0
; end of _Win_Game

_escreve_enterprise:

;MyProject.c,268 :: 		void escreve_enterprise(){                                           // Testa se a nave principal foi mudada de lugar
;MyProject.c,270 :: 		if (button(&PORTD, 0, 50, 1))    {                                 //Se pressionado bit 0 de PORTD
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_escreve_enterprise70
;MyProject.c,271 :: 		posicao_nave = 0b00000001;                       //Nave é escrita e é armazenado valor 1 para comparação posterior
	MOVLW       1
	MOVWF       _posicao_nave+0 
;MyProject.c,272 :: 		armazena_enterprise = 0b00000001;                //Nave Principal escrita na posicao desejada
	MOVLW       1
	MOVWF       _armazena_enterprise+0 
;MyProject.c,273 :: 		Lcd_chr (1,1, 0);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,274 :: 		}
	GOTO        L_escreve_enterprise71
L_escreve_enterprise70:
;MyProject.c,277 :: 		else if (button(&PORTD, 1, 50, 1)){                                //Se pressionado bit 1 de PORTD
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_escreve_enterprise72
;MyProject.c,278 :: 		posicao_nave = 0b00000010;                       //Nave é escrita e é armazenado valor 2 para comparação posterior
	MOVLW       2
	MOVWF       _posicao_nave+0 
;MyProject.c,279 :: 		armazena_enterprise = 0b00000010;                //Nave Principal escrita na posicao desejada
	MOVLW       2
	MOVWF       _armazena_enterprise+0 
;MyProject.c,280 :: 		Lcd_chr (2,1, 0);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,281 :: 		}
L_escreve_enterprise72:
L_escreve_enterprise71:
;MyProject.c,283 :: 		}
L_end_escreve_enterprise:
	RETURN      0
; end of _escreve_enterprise

_Chama_Enterprise:

;MyProject.c,292 :: 		void Chama_Enterprise() {                                                   //Funcao super simples
;MyProject.c,294 :: 		switch (posicao_nave)  {                                                //de acordo com a ultima posicao de memoria
	GOTO        L_Chama_Enterprise73
;MyProject.c,296 :: 		case (0b00000001):                                         //reescreve na tela de acordo com ultimo endereçamento
L_Chama_Enterprise75:
;MyProject.c,297 :: 		Lcd_chr (1,1, 0);                                     //de memoria
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,298 :: 		break;
	GOTO        L_Chama_Enterprise74
;MyProject.c,300 :: 		case (0b00000010):
L_Chama_Enterprise76:
;MyProject.c,301 :: 		Lcd_chr (2,1, 0);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,302 :: 		break;
	GOTO        L_Chama_Enterprise74
;MyProject.c,305 :: 		}
L_Chama_Enterprise73:
	MOVF        _posicao_nave+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Enterprise75
	MOVF        _posicao_nave+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Enterprise76
L_Chama_Enterprise74:
;MyProject.c,306 :: 		}
L_end_Chama_Enterprise:
	RETURN      0
; end of _Chama_Enterprise

_Chama_Inimigo:

;MyProject.c,317 :: 		void Chama_Inimigo() {                                                  //Funcao Chama_Inimigo
;MyProject.c,322 :: 		if (linha1 == 0b00000001){
	MOVF        _linha1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Chama_Inimigo77
;MyProject.c,324 :: 		if (armazena_pos_inimigo1 > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _armazena_pos_inimigo1+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_Chama_Inimigo78
;MyProject.c,326 :: 		switch (armazena_pos_inimigo1)  {
	GOTO        L_Chama_Inimigo79
;MyProject.c,328 :: 		case (0b00001111):
L_Chama_Inimigo81:
;MyProject.c,329 :: 		Lcd_chr (1,15, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,330 :: 		break;                                      //testa primeiro se a variavel que representa inimigo na primeira
	GOTO        L_Chama_Inimigo80
;MyProject.c,332 :: 		case (0b00001110):                               //Senão se, testa se posicao inimigo está na linha 2, de forma
L_Chama_Inimigo82:
;MyProject.c,333 :: 		Lcd_chr (1,14, 1);                          //que escreve o inimigo em linha 1 ou 2
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,334 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,336 :: 		case (0b00001101):
L_Chama_Inimigo83:
;MyProject.c,337 :: 		Lcd_chr (1,13, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,338 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,340 :: 		case (0b00001100):
L_Chama_Inimigo84:
;MyProject.c,341 :: 		Lcd_chr (1,12, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,342 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,344 :: 		case (0b00001011):
L_Chama_Inimigo85:
;MyProject.c,345 :: 		Lcd_chr (1,11, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,346 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,348 :: 		case (0b00001010):
L_Chama_Inimigo86:
;MyProject.c,349 :: 		Lcd_chr (1,10, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,350 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,352 :: 		case (0b00001001):
L_Chama_Inimigo87:
;MyProject.c,353 :: 		Lcd_chr (1,9, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,354 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,356 :: 		case (0b00001000):
L_Chama_Inimigo88:
;MyProject.c,357 :: 		Lcd_chr (1,8, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,358 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,360 :: 		case (0b00000111):
L_Chama_Inimigo89:
;MyProject.c,361 :: 		Lcd_chr (1,7, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,362 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,364 :: 		case (0b00000110):
L_Chama_Inimigo90:
;MyProject.c,365 :: 		Lcd_chr (1,6, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,366 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,368 :: 		case (0b00000101):
L_Chama_Inimigo91:
;MyProject.c,369 :: 		Lcd_chr (1,5, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,370 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,372 :: 		case (0b00000100):
L_Chama_Inimigo92:
;MyProject.c,373 :: 		Lcd_chr (1,4, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,374 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,376 :: 		case (0b00000011):
L_Chama_Inimigo93:
;MyProject.c,377 :: 		Lcd_chr (1,3, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,378 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,380 :: 		case (0b00000010):
L_Chama_Inimigo94:
;MyProject.c,381 :: 		Lcd_chr (1,2, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,382 :: 		break;
	GOTO        L_Chama_Inimigo80
;MyProject.c,384 :: 		}
L_Chama_Inimigo79:
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo81
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo82
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo83
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo84
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo85
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo86
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo87
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo88
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo89
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo90
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo91
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo92
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo93
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo94
L_Chama_Inimigo80:
;MyProject.c,385 :: 		}
	GOTO        L_Chama_Inimigo95
L_Chama_Inimigo78:
;MyProject.c,387 :: 		else if (armazena_pos_inimigo2 > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _armazena_pos_inimigo2+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_Chama_Inimigo96
;MyProject.c,389 :: 		switch (armazena_pos_inimigo2)  {
	GOTO        L_Chama_Inimigo97
;MyProject.c,391 :: 		case (0b00001111):
L_Chama_Inimigo99:
;MyProject.c,392 :: 		Lcd_chr (1,15, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,393 :: 		break;                                      //testa primeiro se a variavel que representa inimigo na primeira
	GOTO        L_Chama_Inimigo98
;MyProject.c,395 :: 		case (0b00001110):                               //Senão se, testa se posicao inimigo está na linha 2, de forma
L_Chama_Inimigo100:
;MyProject.c,396 :: 		Lcd_chr (1,14, 2);                          //que escreve o inimigo em linha 1 ou 2
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,397 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,399 :: 		case (0b00001101):
L_Chama_Inimigo101:
;MyProject.c,400 :: 		Lcd_chr (1,13, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,401 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,403 :: 		case (0b00001100):
L_Chama_Inimigo102:
;MyProject.c,404 :: 		Lcd_chr (1,12, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,405 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,407 :: 		case (0b00001011):
L_Chama_Inimigo103:
;MyProject.c,408 :: 		Lcd_chr (1,11, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,409 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,411 :: 		case (0b00001010):
L_Chama_Inimigo104:
;MyProject.c,412 :: 		Lcd_chr (1,10, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,413 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,415 :: 		case (0b00001001):
L_Chama_Inimigo105:
;MyProject.c,416 :: 		Lcd_chr (1,9, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,417 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,419 :: 		case (0b00001000):
L_Chama_Inimigo106:
;MyProject.c,420 :: 		Lcd_chr (1,8, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,421 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,423 :: 		case (0b00000111):
L_Chama_Inimigo107:
;MyProject.c,424 :: 		Lcd_chr (1,7, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,425 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,427 :: 		case (0b00000110):
L_Chama_Inimigo108:
;MyProject.c,428 :: 		Lcd_chr (1,6, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,429 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,431 :: 		case (0b00000101):
L_Chama_Inimigo109:
;MyProject.c,432 :: 		Lcd_chr (1,5, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,433 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,435 :: 		case (0b00000100):
L_Chama_Inimigo110:
;MyProject.c,436 :: 		Lcd_chr (1,4, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,437 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,439 :: 		case (0b00000011):
L_Chama_Inimigo111:
;MyProject.c,440 :: 		Lcd_chr (1,3, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,441 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,443 :: 		case (0b00000010):
L_Chama_Inimigo112:
;MyProject.c,444 :: 		Lcd_chr (1,2, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,445 :: 		break;
	GOTO        L_Chama_Inimigo98
;MyProject.c,447 :: 		}
L_Chama_Inimigo97:
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo99
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo100
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo101
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo102
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo103
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo104
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo105
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo106
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo107
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo108
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo109
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo110
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo111
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo112
L_Chama_Inimigo98:
;MyProject.c,448 :: 		}
L_Chama_Inimigo96:
L_Chama_Inimigo95:
;MyProject.c,449 :: 		}
	GOTO        L_Chama_Inimigo113
L_Chama_Inimigo77:
;MyProject.c,451 :: 		else if (linha2 == 0b00000010){
	MOVF        _linha2+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_Chama_Inimigo114
;MyProject.c,453 :: 		if (armazena_pos_inimigo1 > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _armazena_pos_inimigo1+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_Chama_Inimigo115
;MyProject.c,455 :: 		switch (armazena_pos_inimigo1)  {
	GOTO        L_Chama_Inimigo116
;MyProject.c,457 :: 		case (0b00001111):
L_Chama_Inimigo118:
;MyProject.c,458 :: 		Lcd_chr (2,15, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,459 :: 		break;                                      //testa primeiro se a variavel que representa inimigo na primeira
	GOTO        L_Chama_Inimigo117
;MyProject.c,461 :: 		case (0b00001110):                               //Senão se, testa se posicao inimigo está na linha 2, de forma
L_Chama_Inimigo119:
;MyProject.c,462 :: 		Lcd_chr (2,14, 1);                          //que escreve o inimigo em linha 1 ou 2
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,463 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,465 :: 		case (0b00001101):
L_Chama_Inimigo120:
;MyProject.c,466 :: 		Lcd_chr (2,13, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,467 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,469 :: 		case (0b00001100):
L_Chama_Inimigo121:
;MyProject.c,470 :: 		Lcd_chr (2,12, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,471 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,473 :: 		case (0b00001011):
L_Chama_Inimigo122:
;MyProject.c,474 :: 		Lcd_chr (2,11, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,475 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,477 :: 		case (0b00001010):
L_Chama_Inimigo123:
;MyProject.c,478 :: 		Lcd_chr (2,10, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,479 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,481 :: 		case (0b00001001):
L_Chama_Inimigo124:
;MyProject.c,482 :: 		Lcd_chr (2,9, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,483 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,485 :: 		case (0b00001000):
L_Chama_Inimigo125:
;MyProject.c,486 :: 		Lcd_chr (2,8, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,487 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,489 :: 		case (0b00000111):
L_Chama_Inimigo126:
;MyProject.c,490 :: 		Lcd_chr (2,7, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,491 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,493 :: 		case (0b00000110):
L_Chama_Inimigo127:
;MyProject.c,494 :: 		Lcd_chr (2,6, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,495 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,497 :: 		case (0b00000101):
L_Chama_Inimigo128:
;MyProject.c,498 :: 		Lcd_chr (2,5, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,499 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,501 :: 		case (0b00000100):
L_Chama_Inimigo129:
;MyProject.c,502 :: 		Lcd_chr (2,4, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,503 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,505 :: 		case (0b00000011):
L_Chama_Inimigo130:
;MyProject.c,506 :: 		Lcd_chr (2,3, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,507 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,509 :: 		case (0b00000010):
L_Chama_Inimigo131:
;MyProject.c,510 :: 		Lcd_chr (2,2, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,511 :: 		break;
	GOTO        L_Chama_Inimigo117
;MyProject.c,513 :: 		}
L_Chama_Inimigo116:
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo118
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo119
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo120
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo121
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo122
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo123
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo124
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo125
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo126
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo127
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo128
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo129
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo130
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo131
L_Chama_Inimigo117:
;MyProject.c,514 :: 		}
	GOTO        L_Chama_Inimigo132
L_Chama_Inimigo115:
;MyProject.c,516 :: 		else if (armazena_pos_inimigo2 > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _armazena_pos_inimigo2+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_Chama_Inimigo133
;MyProject.c,518 :: 		switch (armazena_pos_inimigo2)  {
	GOTO        L_Chama_Inimigo134
;MyProject.c,520 :: 		case (0b00001111):
L_Chama_Inimigo136:
;MyProject.c,521 :: 		Lcd_chr (2,15, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,522 :: 		break;                                      //testa primeiro se a variavel que representa inimigo na primeira
	GOTO        L_Chama_Inimigo135
;MyProject.c,524 :: 		case (0b00001110):                               //Senão se, testa se posicao inimigo está na linha 2, de forma
L_Chama_Inimigo137:
;MyProject.c,525 :: 		Lcd_chr (2,14, 2);                          //que escreve o inimigo em linha 1 ou 2
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,526 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,528 :: 		case (0b00001101):
L_Chama_Inimigo138:
;MyProject.c,529 :: 		Lcd_chr (2,13, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,530 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,532 :: 		case (0b00001100):
L_Chama_Inimigo139:
;MyProject.c,533 :: 		Lcd_chr (2,12, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,534 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,536 :: 		case (0b00001011):
L_Chama_Inimigo140:
;MyProject.c,537 :: 		Lcd_chr (2,11, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,538 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,540 :: 		case (0b00001010):
L_Chama_Inimigo141:
;MyProject.c,541 :: 		Lcd_chr (2,10, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,542 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,544 :: 		case (0b00001001):
L_Chama_Inimigo142:
;MyProject.c,545 :: 		Lcd_chr (2,9, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,546 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,548 :: 		case (0b00001000):
L_Chama_Inimigo143:
;MyProject.c,549 :: 		Lcd_chr (2,8, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,550 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,552 :: 		case (0b00000111):
L_Chama_Inimigo144:
;MyProject.c,553 :: 		Lcd_chr (2,7, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,554 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,556 :: 		case (0b00000110):
L_Chama_Inimigo145:
;MyProject.c,557 :: 		Lcd_chr (2,6, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,558 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,560 :: 		case (0b00000101):
L_Chama_Inimigo146:
;MyProject.c,561 :: 		Lcd_chr (2,5, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,562 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,564 :: 		case (0b00000100):
L_Chama_Inimigo147:
;MyProject.c,565 :: 		Lcd_chr (2,4, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,566 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,568 :: 		case (0b00000011):
L_Chama_Inimigo148:
;MyProject.c,569 :: 		Lcd_chr (2,3, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,570 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,572 :: 		case (0b00000010):
L_Chama_Inimigo149:
;MyProject.c,573 :: 		Lcd_chr (2,2, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,574 :: 		break;
	GOTO        L_Chama_Inimigo135
;MyProject.c,576 :: 		}
L_Chama_Inimigo134:
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo136
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo137
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo138
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo139
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo140
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo141
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo142
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo143
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo144
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo145
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo146
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo147
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo148
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo149
L_Chama_Inimigo135:
;MyProject.c,577 :: 		}
	GOTO        L_Chama_Inimigo150
L_Chama_Inimigo133:
;MyProject.c,579 :: 		else if (armazena_pos_inimigo3 > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _armazena_pos_inimigo3+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_Chama_Inimigo151
;MyProject.c,581 :: 		switch (armazena_pos_inimigo3)  {
	GOTO        L_Chama_Inimigo152
;MyProject.c,583 :: 		case (0b00001111):
L_Chama_Inimigo154:
;MyProject.c,584 :: 		Lcd_chr (2,15, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,585 :: 		break;                                      //testa primeiro se a variavel que representa inimigo na primeira
	GOTO        L_Chama_Inimigo153
;MyProject.c,587 :: 		case (0b00001110):                               //Senão se, testa se posicao inimigo está na linha 2, de forma
L_Chama_Inimigo155:
;MyProject.c,588 :: 		Lcd_chr (2,14, 6);                          //que escreve o inimigo em linha 1 ou 2
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,589 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,591 :: 		case (0b00001101):
L_Chama_Inimigo156:
;MyProject.c,592 :: 		Lcd_chr (2,13, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,593 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,595 :: 		case (0b00001100):
L_Chama_Inimigo157:
;MyProject.c,596 :: 		Lcd_chr (2,12, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,597 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,599 :: 		case (0b00001011):
L_Chama_Inimigo158:
;MyProject.c,600 :: 		Lcd_chr (2,11, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,601 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,603 :: 		case (0b00001010):
L_Chama_Inimigo159:
;MyProject.c,604 :: 		Lcd_chr (2,10, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,605 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,607 :: 		case (0b00001001):
L_Chama_Inimigo160:
;MyProject.c,608 :: 		Lcd_chr (2,9, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,609 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,611 :: 		case (0b00001000):
L_Chama_Inimigo161:
;MyProject.c,612 :: 		Lcd_chr (2,8, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,613 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,615 :: 		case (0b00000111):
L_Chama_Inimigo162:
;MyProject.c,616 :: 		Lcd_chr (2,7, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,617 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,619 :: 		case (0b00000110):
L_Chama_Inimigo163:
;MyProject.c,620 :: 		Lcd_chr (2,6, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,621 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,623 :: 		case (0b00000101):
L_Chama_Inimigo164:
;MyProject.c,624 :: 		Lcd_chr (2,5, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,625 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,627 :: 		case (0b00000100):
L_Chama_Inimigo165:
;MyProject.c,628 :: 		Lcd_chr (2,4, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,629 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,631 :: 		case (0b00000011):
L_Chama_Inimigo166:
;MyProject.c,632 :: 		Lcd_chr (2,3, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,633 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,635 :: 		case (0b00000010):
L_Chama_Inimigo167:
;MyProject.c,636 :: 		Lcd_chr (2,2, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,637 :: 		break;
	GOTO        L_Chama_Inimigo153
;MyProject.c,639 :: 		}
L_Chama_Inimigo152:
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo154
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo155
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo156
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo157
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo158
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo159
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo160
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo161
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo162
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo163
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo164
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo165
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo166
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_Chama_Inimigo167
L_Chama_Inimigo153:
;MyProject.c,640 :: 		}
L_Chama_Inimigo151:
L_Chama_Inimigo150:
L_Chama_Inimigo132:
;MyProject.c,641 :: 		}
L_Chama_Inimigo114:
L_Chama_Inimigo113:
;MyProject.c,642 :: 		}
L_end_Chama_Inimigo:
	RETURN      0
; end of _Chama_Inimigo

_Testa_Tiro_Inimigo:

;MyProject.c,649 :: 		int Testa_Tiro_Inimigo(){
;MyProject.c,653 :: 		if ((armazena_pos_tiro  == testa_inimigo1) && (linha1 == 0b00000001) && (store_tiro == 0b00000001)){                  //Funcao que tem como objetivo testar se o inimigo possui a mesma posicao da nave principal
	MOVF        _armazena_pos_tiro+0, 0 
	XORWF       _testa_inimigo1+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_Testa_Tiro_Inimigo170
	MOVF        _linha1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Testa_Tiro_Inimigo170
	MOVF        _store_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Testa_Tiro_Inimigo170
L__Testa_Tiro_Inimigo1511:
;MyProject.c,654 :: 		Lcd_Cmd(_LCD_CLEAR);                                                                                     //Para isso sao feitos diversos testes, usando a variavel que armazena a posicao do tiro com
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,655 :: 		Chama_Enterprise();                                                                                      //a variavel que testa a posicao do inimigo, de forma que se estiver em linha 1, explode
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,656 :: 		lcd_chr (1, testa_inimigo1, 3);                                                                          //a posicao referente ao inimigo na linha 1, se na linha 2, explode na linha 2.
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _testa_inimigo1+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,657 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Testa_Tiro_Inimigo171:
	DECFSZ      R13, 1, 1
	BRA         L_Testa_Tiro_Inimigo171
	DECFSZ      R12, 1, 1
	BRA         L_Testa_Tiro_Inimigo171
	DECFSZ      R11, 1, 1
	BRA         L_Testa_Tiro_Inimigo171
	NOP
	NOP
;MyProject.c,658 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,659 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,661 :: 		pos_inimigo_final = 0b00000000;
	CLRF        _pos_inimigo_final+0 
;MyProject.c,662 :: 		return testa_explosao;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_Testa_Tiro_Inimigo
;MyProject.c,663 :: 		}
L_Testa_Tiro_Inimigo170:
;MyProject.c,665 :: 		else if ((armazena_pos_tiro == testa_inimigo2) && (linha2 == 0b00000010) && (store_tiro == 0b00000010)){
	MOVF        _armazena_pos_tiro+0, 0 
	XORWF       _testa_inimigo2+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_Testa_Tiro_Inimigo175
	MOVF        _linha2+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_Testa_Tiro_Inimigo175
	MOVF        _store_tiro+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_Testa_Tiro_Inimigo175
L__Testa_Tiro_Inimigo1510:
;MyProject.c,666 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,667 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,668 :: 		lcd_chr (2, testa_inimigo2, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _testa_inimigo2+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,669 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Testa_Tiro_Inimigo176:
	DECFSZ      R13, 1, 1
	BRA         L_Testa_Tiro_Inimigo176
	DECFSZ      R12, 1, 1
	BRA         L_Testa_Tiro_Inimigo176
	DECFSZ      R11, 1, 1
	BRA         L_Testa_Tiro_Inimigo176
	NOP
	NOP
;MyProject.c,670 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,671 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,673 :: 		pos_inimigo_final = 0b00000000;
	CLRF        _pos_inimigo_final+0 
;MyProject.c,674 :: 		return testa_explosao;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_Testa_Tiro_Inimigo
;MyProject.c,675 :: 		}
L_Testa_Tiro_Inimigo175:
;MyProject.c,678 :: 		}
L_end_Testa_Tiro_Inimigo:
	RETURN      0
; end of _Testa_Tiro_Inimigo

_nave_tiro:

;MyProject.c,685 :: 		void nave_tiro(){
;MyProject.c,687 :: 		int teste = 0;                                                                   //Funcao que chama e testa a posicao do tiro, quando solicitado
;MyProject.c,689 :: 		if (store_tiro == 0b00000001){                  //Testa se a variável armazena tiro é 1 ou 2
	MOVF        _store_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_nave_tiro177
;MyProject.c,690 :: 		Lcd_Cmd(_LCD_CLEAR);                      //e dessa forma, atira em linha 1 ou 2
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,691 :: 		Chama_Enterprise();                       //Chama todas as funções de escrita na tela e
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,692 :: 		Chama_Inimigo();                          //e testa onde escrever o tiro, após executado
	CALL        _Chama_Inimigo+0, 0
;MyProject.c,694 :: 		teste = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,695 :: 		if (teste == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__nave_tiro1718
	MOVLW       1
	XORWF       R0, 0 
L__nave_tiro1718:
	BTFSS       STATUS+0, 2 
	GOTO        L_nave_tiro178
;MyProject.c,696 :: 		testa_primeira_explosao = 0b00000001;
	MOVLW       1
	MOVWF       _testa_primeira_explosao+0 
;MyProject.c,697 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,698 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,699 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,700 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;MyProject.c,701 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;MyProject.c,702 :: 		}
	GOTO        L_nave_tiro179
L_nave_tiro178:
;MyProject.c,704 :: 		lcd_chr (1, tiro, 5);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _tiro+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
L_nave_tiro179:
;MyProject.c,705 :: 		tiro++;
	INCF        _tiro+0, 1 
;MyProject.c,706 :: 		armazena_pos_tiro  = tiro;
	MOVF        _tiro+0, 0 
	MOVWF       _armazena_pos_tiro+0 
;MyProject.c,707 :: 		}
	GOTO        L_nave_tiro180
L_nave_tiro177:
;MyProject.c,709 :: 		else if (store_tiro == 0b00000010){
	MOVF        _store_tiro+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_nave_tiro181
;MyProject.c,710 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,711 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,712 :: 		Chama_Inimigo();
	CALL        _Chama_Inimigo+0, 0
;MyProject.c,713 :: 		teste = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,715 :: 		if (teste == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__nave_tiro1719
	MOVLW       1
	XORWF       R0, 0 
L__nave_tiro1719:
	BTFSS       STATUS+0, 2 
	GOTO        L_nave_tiro182
;MyProject.c,716 :: 		testa_primeira_explosao = 0b00000001;
	MOVLW       1
	MOVWF       _testa_primeira_explosao+0 
;MyProject.c,717 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,718 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,719 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,720 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;MyProject.c,721 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;MyProject.c,722 :: 		}
	GOTO        L_nave_tiro183
L_nave_tiro182:
;MyProject.c,724 :: 		lcd_chr (2, tiro, 5);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _tiro+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
L_nave_tiro183:
;MyProject.c,725 :: 		tiro++;
	INCF        _tiro+0, 1 
;MyProject.c,726 :: 		armazena_pos_tiro  = tiro;
	MOVF        _tiro+0, 0 
	MOVWF       _armazena_pos_tiro+0 
;MyProject.c,727 :: 		}
L_nave_tiro181:
L_nave_tiro180:
;MyProject.c,729 :: 		}
L_end_nave_tiro:
	RETURN      0
; end of _nave_tiro

_special:

;MyProject.c,736 :: 		int special(){                                                                //Funcao Especial
;MyProject.c,738 :: 		if ((((button(&PORTD, 3, 200, 1))) && (especial == 1))){                      //Se sim, explode a nave, e obriga funcao a sair do for da nave inimiga
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       3
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_special186
	MOVF        _especial+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_special186
L__special1512:
;MyProject.c,739 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,740 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,742 :: 		if (linha1 == 0b00000001){
	MOVF        _linha1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_special187
;MyProject.c,743 :: 		lcd_chr (1, testa_inimigo1, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _testa_inimigo1+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,744 :: 		delay_ms (250);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       88
	MOVWF       R12, 0
	MOVLW       89
	MOVWF       R13, 0
L_special188:
	DECFSZ      R13, 1, 1
	BRA         L_special188
	DECFSZ      R12, 1, 1
	BRA         L_special188
	DECFSZ      R11, 1, 1
	BRA         L_special188
	NOP
	NOP
;MyProject.c,745 :: 		especial = 0b00000000;
	CLRF        _especial+0 
;MyProject.c,746 :: 		return 1;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_special
;MyProject.c,747 :: 		}
L_special187:
;MyProject.c,749 :: 		else if (linha2 == 0b00000010){
	MOVF        _linha2+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_special190
;MyProject.c,750 :: 		lcd_chr (2, testa_inimigo2, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _testa_inimigo2+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,751 :: 		delay_ms (250);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       88
	MOVWF       R12, 0
	MOVLW       89
	MOVWF       R13, 0
L_special191:
	DECFSZ      R13, 1, 1
	BRA         L_special191
	DECFSZ      R12, 1, 1
	BRA         L_special191
	DECFSZ      R11, 1, 1
	BRA         L_special191
	NOP
	NOP
;MyProject.c,752 :: 		especial = 0b00000000;
	CLRF        _especial+0 
;MyProject.c,753 :: 		return 1;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_special
;MyProject.c,754 :: 		}
L_special190:
;MyProject.c,756 :: 		}
	GOTO        L_special192
L_special186:
;MyProject.c,758 :: 		return 0;
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_special
L_special192:
;MyProject.c,760 :: 		}
L_end_special:
	RETURN      0
; end of _special

_ataque_1:

;MyProject.c,768 :: 		void ataque_1 (){
;MyProject.c,770 :: 		int i = 0b00000000;                                         //contador posicao nave_inimigo
	CLRF        ataque_1_i_L0+0 
	CLRF        ataque_1_i_L0+1 
	CLRF        ataque_1_explode_nave_L0+0 
;MyProject.c,776 :: 		while (i<16)     {                                                            //execução rotina principal - andar naves
L_ataque_1193:
	MOVLW       128
	XORWF       ataque_1_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11722
	MOVLW       16
	SUBWF       ataque_1_i_L0+0, 0 
L__ataque_11722:
	BTFSC       STATUS+0, 0 
	GOTO        L_ataque_1194
;MyProject.c,778 :: 		linha1 = 0b00000001;
	MOVLW       1
	MOVWF       _linha1+0 
;MyProject.c,779 :: 		Lcd_Cmd(_LCD_CLEAR);                                                  //onde será escrito o caracter de explosão de nave
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,780 :: 		Chama_Enterprise();                                                   //Chama nave_principal
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,782 :: 		switch (i) {
	GOTO        L_ataque_1195
;MyProject.c,784 :: 		case 1:
L_ataque_1197:
;MyProject.c,785 :: 		Lcd_chr (1,16, 1);                                    //Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,786 :: 		armazena_pos_inimigo1 = 0b00001111;                   //Armazena posicao do inimigo para teste posterior
	MOVLW       15
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,787 :: 		testa_inimigo1 = 0b00010000;                          //Atribui valor 16 para a variável
	MOVLW       16
	MOVWF       _testa_inimigo1+0 
;MyProject.c,788 :: 		Chama_Enterprise();                                   //Chama ultima posicao de nave principal na tela
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,790 :: 		if ((button(&PORTD, 2, 200, 1))){                     //Se o bit 2 do portd estiver pressionado
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1198
;MyProject.c,791 :: 		store_tiro = posicao_nave;           //armazena na variavel a posicao da nave
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,792 :: 		nave_tiro();                         //testa se usuario pediu para ser lançado um tiro
	CALL        _nave_tiro+0, 0
;MyProject.c,793 :: 		testa_tiro = 0b00000001;             //atribui 1 a testa_tiro
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,794 :: 		}
L_ataque_1198:
;MyProject.c,796 :: 		testa = Testa_Tiro_Inimigo();                                         //chama a funcao testa_tiro, de modo que se coincidir, explode a nave
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,805 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)  {   // e atribui valor 1 a testa
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11723
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11723:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11541
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11541
	GOTO        L_ataque_1201
L__ataque_11541:
;MyProject.c,806 :: 		i = 15;                                                 //se a variável testa for = 1 e testa_primeira_explosao = 1
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,807 :: 		}  //i = 15, de modo que saia do for
L_ataque_1201:
;MyProject.c,809 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1202:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1202
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1202
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1202
	NOP
	NOP
;MyProject.c,810 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,812 :: 		case 2:
L_ataque_1203:
;MyProject.c,813 :: 		Lcd_chr (1,15, 1);                              // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,814 :: 		armazena_pos_inimigo1 = 0b00001110;             //armazena posicao do inimigo para atualizar a tela
	MOVLW       14
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,815 :: 		testa_inimigo1 = 0b0001111;                     //armazena posicao inimigo para teste em colisao com tiro
	MOVLW       15
	MOVWF       _testa_inimigo1+0 
;MyProject.c,817 :: 		Chama_Enterprise();                            //Chama ultima posicao de nave principal na tela
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,818 :: 		escreve_enterprise();                          //Testa se usuario quer mudar nave principal
	CALL        _escreve_enterprise+0, 0
;MyProject.c,820 :: 		testa = Testa_Tiro_Inimigo();                  //recebe valor da funcao de teste tiro
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,821 :: 		if (testa == 0b00000001){                      //se a função for = 1, armazena 15 no i
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11724
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11724:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1204
;MyProject.c,822 :: 		i = 15;                          //linha1 = 0 (reseta variável)
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,823 :: 		linha1 = 0b00000000;             //explode_nave = 1 e sai do for
	CLRF        _linha1+0 
;MyProject.c,824 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
;MyProject.c,825 :: 		}
L_ataque_1204:
;MyProject.c,834 :: 		if (explode_nave == 0b00000000){                            //se variavel for = 0 (testada anteriormente)
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1205
;MyProject.c,835 :: 		testa = Testa_Tiro_Inimigo();                   //recebe posicao da funcao
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,838 :: 		if (testa_tiro == 0b00000001){                  //Testa se tiro = 1, e dessa forma executa a função tiro sem
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1206
;MyProject.c,839 :: 		nave_tiro();                           //que o usuario pressione o botao
	CALL        _nave_tiro+0, 0
;MyProject.c,840 :: 		}
	GOTO        L_ataque_1207
L_ataque_1206:
;MyProject.c,842 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){          //se pressinado
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1210
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1210
L__ataque_11540:
;MyProject.c,843 :: 		store_tiro = posicao_nave;                                   //store_posicao recebe posicao da nave
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,844 :: 		nave_tiro();                                                 //chama funcao do tiro
	CALL        _nave_tiro+0, 0
;MyProject.c,845 :: 		testa_tiro = 0b00000001;                                     //atribiui 1 a variável testa_tiro na função de chamar tiro
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,846 :: 		}                                        //testa se usuario pediu para ser lançado um tiro
L_ataque_1210:
L_ataque_1207:
;MyProject.c,848 :: 		testa = Testa_Tiro_Inimigo();                                         //recebe o valor da variavel Testa_Tiro_Inimigo à variavel testa
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,849 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){    //se testa for 1 OU testa_primeira_explosao for 1, atribui 15 ao i e sai do for
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11725
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11725:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11539
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11539
	GOTO        L_ataque_1213
L__ataque_11539:
;MyProject.c,850 :: 		i = 15;                                                 //Segue mesma linha de raciocínio nos casos seguintes
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,851 :: 		}
L_ataque_1213:
;MyProject.c,852 :: 		}
L_ataque_1205:
;MyProject.c,853 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1214:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1214
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1214
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1214
	NOP
	NOP
;MyProject.c,854 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,856 :: 		case 3:
L_ataque_1215:
;MyProject.c,857 :: 		Lcd_chr (1,14, 1);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,858 :: 		armazena_pos_inimigo1 = 0b00001101;
	MOVLW       13
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,859 :: 		testa_inimigo1 = 0b00001110;
	MOVLW       14
	MOVWF       _testa_inimigo1+0 
;MyProject.c,861 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,862 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,864 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,865 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11726
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11726:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1216
;MyProject.c,866 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,867 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,868 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
;MyProject.c,869 :: 		}
L_ataque_1216:
;MyProject.c,878 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1217
;MyProject.c,879 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1218
;MyProject.c,880 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,881 :: 		}
	GOTO        L_ataque_1219
L_ataque_1218:
;MyProject.c,883 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1222
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1222
L__ataque_11538:
;MyProject.c,884 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,885 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,886 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,887 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1222:
L_ataque_1219:
;MyProject.c,889 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,890 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11727
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11727:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11537
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11537
	GOTO        L_ataque_1225
L__ataque_11537:
;MyProject.c,891 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1225:
;MyProject.c,892 :: 		}
L_ataque_1217:
;MyProject.c,893 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1226:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1226
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1226
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1226
	NOP
	NOP
;MyProject.c,894 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,896 :: 		case 4:
L_ataque_1227:
;MyProject.c,897 :: 		Lcd_chr (1,13, 1);                              // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,898 :: 		armazena_pos_inimigo1 = 0b00001100;
	MOVLW       12
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,899 :: 		testa_inimigo1 = 0b00001101;
	MOVLW       13
	MOVWF       _testa_inimigo1+0 
;MyProject.c,901 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,902 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,904 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,905 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11728
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11728:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1228
;MyProject.c,906 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,907 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,908 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
;MyProject.c,909 :: 		}
L_ataque_1228:
;MyProject.c,918 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1229
;MyProject.c,919 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1230
;MyProject.c,920 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,921 :: 		}
	GOTO        L_ataque_1231
L_ataque_1230:
;MyProject.c,923 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1234
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1234
L__ataque_11536:
;MyProject.c,924 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,925 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,926 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,927 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1234:
L_ataque_1231:
;MyProject.c,929 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,930 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11729
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11729:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11535
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11535
	GOTO        L_ataque_1237
L__ataque_11535:
;MyProject.c,931 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1237:
;MyProject.c,932 :: 		}
L_ataque_1229:
;MyProject.c,933 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1238:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1238
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1238
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1238
	NOP
	NOP
;MyProject.c,934 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,936 :: 		case 5:
L_ataque_1239:
;MyProject.c,937 :: 		Lcd_chr (1,12, 1);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,938 :: 		armazena_pos_inimigo1 = 0b00001011;
	MOVLW       11
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,939 :: 		testa_inimigo1 = 0b00001100;
	MOVLW       12
	MOVWF       _testa_inimigo1+0 
;MyProject.c,941 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,942 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,944 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,945 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11730
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11730:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1240
;MyProject.c,946 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,947 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,948 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
L_ataque_1240:
;MyProject.c,957 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1241
;MyProject.c,958 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1242
;MyProject.c,959 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,960 :: 		}
	GOTO        L_ataque_1243
L_ataque_1242:
;MyProject.c,962 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1246
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1246
L__ataque_11534:
;MyProject.c,963 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,964 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,965 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,966 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1246:
L_ataque_1243:
;MyProject.c,967 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,968 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11731
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11731:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11533
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11533
	GOTO        L_ataque_1249
L__ataque_11533:
;MyProject.c,969 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1249:
;MyProject.c,970 :: 		}
L_ataque_1241:
;MyProject.c,971 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1250:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1250
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1250
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1250
	NOP
	NOP
;MyProject.c,972 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,974 :: 		case 6:
L_ataque_1251:
;MyProject.c,975 :: 		Lcd_chr (1,11, 1);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,976 :: 		armazena_pos_inimigo1 = 0b00001010;
	MOVLW       10
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,977 :: 		testa_inimigo1 =  0b00001011;
	MOVLW       11
	MOVWF       _testa_inimigo1+0 
;MyProject.c,979 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,980 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,982 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,983 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11732
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11732:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1252
;MyProject.c,984 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,985 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,986 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
L_ataque_1252:
;MyProject.c,995 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1253
;MyProject.c,996 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1254
;MyProject.c,997 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,998 :: 		}
	GOTO        L_ataque_1255
L_ataque_1254:
;MyProject.c,1000 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1258
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1258
L__ataque_11532:
;MyProject.c,1001 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1002 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1003 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1004 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1258:
L_ataque_1255:
;MyProject.c,1005 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1006 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11733
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11733:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11531
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11531
	GOTO        L_ataque_1261
L__ataque_11531:
;MyProject.c,1007 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1261:
;MyProject.c,1008 :: 		}
L_ataque_1253:
;MyProject.c,1009 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1262:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1262
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1262
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1262
	NOP
	NOP
;MyProject.c,1010 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,1012 :: 		case 7:
L_ataque_1263:
;MyProject.c,1013 :: 		Lcd_chr (1,10, 1);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1014 :: 		armazena_pos_inimigo1 = 0b00001001;
	MOVLW       9
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,1015 :: 		testa_inimigo1 =  0b00001010;
	MOVLW       10
	MOVWF       _testa_inimigo1+0 
;MyProject.c,1017 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1018 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1020 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1021 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11734
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11734:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1264
;MyProject.c,1022 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,1023 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,1024 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
;MyProject.c,1025 :: 		}
L_ataque_1264:
;MyProject.c,1034 :: 		if (explode_nave == 0){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1265
;MyProject.c,1035 :: 		if (testa_tiro == 1){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1266
;MyProject.c,1036 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1037 :: 		}
	GOTO        L_ataque_1267
L_ataque_1266:
;MyProject.c,1039 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1270
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1270
L__ataque_11530:
;MyProject.c,1040 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1041 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1042 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1043 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1270:
L_ataque_1267:
;MyProject.c,1045 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1046 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11735
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11735:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11529
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11529
	GOTO        L_ataque_1273
L__ataque_11529:
;MyProject.c,1047 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1273:
;MyProject.c,1049 :: 		}
L_ataque_1265:
;MyProject.c,1050 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1274:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1274
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1274
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1274
	NOP
	NOP
;MyProject.c,1051 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,1053 :: 		case 8:
L_ataque_1275:
;MyProject.c,1054 :: 		Lcd_chr (1,9, 1);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1055 :: 		armazena_pos_inimigo1 = 0b00001000;
	MOVLW       8
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,1056 :: 		testa_inimigo1 =  0b00001001;
	MOVLW       9
	MOVWF       _testa_inimigo1+0 
;MyProject.c,1058 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1059 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1061 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1062 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11736
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11736:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1276
;MyProject.c,1063 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,1064 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,1065 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
L_ataque_1276:
;MyProject.c,1074 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1277
;MyProject.c,1075 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1278
;MyProject.c,1076 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1077 :: 		}
	GOTO        L_ataque_1279
L_ataque_1278:
;MyProject.c,1079 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1282
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1282
L__ataque_11528:
;MyProject.c,1080 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1081 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1082 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1083 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1282:
L_ataque_1279:
;MyProject.c,1085 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1086 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11737
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11737:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11527
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11527
	GOTO        L_ataque_1285
L__ataque_11527:
;MyProject.c,1087 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1285:
;MyProject.c,1088 :: 		}
L_ataque_1277:
;MyProject.c,1089 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1286:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1286
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1286
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1286
	NOP
	NOP
;MyProject.c,1090 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,1092 :: 		case 9:
L_ataque_1287:
;MyProject.c,1093 :: 		Lcd_chr (1,8, 1);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1094 :: 		armazena_pos_inimigo1 = 0b00000111;
	MOVLW       7
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,1095 :: 		testa_inimigo1 =  0b00001000;
	MOVLW       8
	MOVWF       _testa_inimigo1+0 
;MyProject.c,1097 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1098 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1100 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1101 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11738
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11738:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1288
;MyProject.c,1102 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,1103 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,1104 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
;MyProject.c,1105 :: 		}
L_ataque_1288:
;MyProject.c,1114 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1289
;MyProject.c,1115 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1290
;MyProject.c,1116 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1117 :: 		}
	GOTO        L_ataque_1291
L_ataque_1290:
;MyProject.c,1119 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1294
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1294
L__ataque_11526:
;MyProject.c,1120 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1121 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1122 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1123 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1294:
L_ataque_1291:
;MyProject.c,1125 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1126 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11739
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11739:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11525
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11525
	GOTO        L_ataque_1297
L__ataque_11525:
;MyProject.c,1127 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1297:
;MyProject.c,1128 :: 		}
L_ataque_1289:
;MyProject.c,1129 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1298:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1298
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1298
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1298
	NOP
	NOP
;MyProject.c,1130 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,1132 :: 		case 10:
L_ataque_1299:
;MyProject.c,1133 :: 		Lcd_chr (1,7, 1);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1134 :: 		armazena_pos_inimigo1 = 0b00000110;
	MOVLW       6
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,1135 :: 		testa_inimigo1 =  0b00000111;
	MOVLW       7
	MOVWF       _testa_inimigo1+0 
;MyProject.c,1137 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1138 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1140 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1142 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11740
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11740:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1300
;MyProject.c,1143 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,1144 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,1145 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
;MyProject.c,1146 :: 		}
L_ataque_1300:
;MyProject.c,1155 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1301
;MyProject.c,1156 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1302
;MyProject.c,1157 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1158 :: 		}
	GOTO        L_ataque_1303
L_ataque_1302:
;MyProject.c,1160 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1306
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1306
L__ataque_11524:
;MyProject.c,1161 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1162 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1163 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1164 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1306:
L_ataque_1303:
;MyProject.c,1166 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1167 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11741
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11741:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11523
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11523
	GOTO        L_ataque_1309
L__ataque_11523:
;MyProject.c,1168 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1309:
;MyProject.c,1169 :: 		}
L_ataque_1301:
;MyProject.c,1170 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1310:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1310
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1310
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1310
	NOP
	NOP
;MyProject.c,1171 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,1173 :: 		case 11:
L_ataque_1311:
;MyProject.c,1174 :: 		Lcd_chr (1,6, 1);                                // Nave Inimiga
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1175 :: 		armazena_pos_inimigo1 = 0b00000101;
	MOVLW       5
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,1176 :: 		testa_inimigo1 =  0b00000110;
	MOVLW       6
	MOVWF       _testa_inimigo1+0 
;MyProject.c,1178 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1179 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1181 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1182 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11742
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11742:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1312
;MyProject.c,1183 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,1184 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,1185 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
L_ataque_1312:
;MyProject.c,1194 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1313
;MyProject.c,1195 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1314
;MyProject.c,1196 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1197 :: 		}
	GOTO        L_ataque_1315
L_ataque_1314:
;MyProject.c,1199 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1318
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1318
L__ataque_11522:
;MyProject.c,1200 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1201 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1202 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1203 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1318:
L_ataque_1315:
;MyProject.c,1205 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1206 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11743
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11743:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11521
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11521
	GOTO        L_ataque_1321
L__ataque_11521:
;MyProject.c,1207 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1321:
;MyProject.c,1208 :: 		}
L_ataque_1313:
;MyProject.c,1209 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1322:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1322
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1322
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1322
	NOP
	NOP
;MyProject.c,1210 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,1212 :: 		case 12:
L_ataque_1323:
;MyProject.c,1213 :: 		Lcd_chr (1,5, 1);                                // Nave Inimiga
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1214 :: 		armazena_pos_inimigo1 = 0b00000100;
	MOVLW       4
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,1215 :: 		testa_inimigo1 =  0b00000101;
	MOVLW       5
	MOVWF       _testa_inimigo1+0 
;MyProject.c,1217 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1218 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1220 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1221 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11744
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11744:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1324
;MyProject.c,1222 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,1223 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,1224 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
L_ataque_1324:
;MyProject.c,1233 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1325
;MyProject.c,1234 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1326
;MyProject.c,1235 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1236 :: 		}
	GOTO        L_ataque_1327
L_ataque_1326:
;MyProject.c,1238 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1330
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1330
L__ataque_11520:
;MyProject.c,1239 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1240 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1241 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1242 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1330:
L_ataque_1327:
;MyProject.c,1244 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1245 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11745
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11745:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11519
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11519
	GOTO        L_ataque_1333
L__ataque_11519:
;MyProject.c,1246 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1333:
;MyProject.c,1247 :: 		}
L_ataque_1325:
;MyProject.c,1248 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1334:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1334
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1334
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1334
	NOP
	NOP
;MyProject.c,1249 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,1251 :: 		case 13:
L_ataque_1335:
;MyProject.c,1252 :: 		Lcd_chr (1,4, 1);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1253 :: 		armazena_pos_inimigo1 = 0b00000011;
	MOVLW       3
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,1254 :: 		testa_inimigo1 =  0b00000100;
	MOVLW       4
	MOVWF       _testa_inimigo1+0 
;MyProject.c,1256 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1257 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1259 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1260 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11746
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11746:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1336
;MyProject.c,1261 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,1262 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,1263 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
L_ataque_1336:
;MyProject.c,1272 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1337
;MyProject.c,1274 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1338
;MyProject.c,1275 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1276 :: 		}
	GOTO        L_ataque_1339
L_ataque_1338:
;MyProject.c,1278 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1342
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1342
L__ataque_11518:
;MyProject.c,1279 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1280 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1281 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1282 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1342:
L_ataque_1339:
;MyProject.c,1284 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1285 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11747
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11747:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11517
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11517
	GOTO        L_ataque_1345
L__ataque_11517:
;MyProject.c,1286 :: 		i = 15;                                             }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1345:
;MyProject.c,1287 :: 		}
L_ataque_1337:
;MyProject.c,1288 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1346:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1346
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1346
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1346
	NOP
	NOP
;MyProject.c,1289 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,1291 :: 		case 14:
L_ataque_1347:
;MyProject.c,1292 :: 		Lcd_chr (1,3, 1);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1293 :: 		armazena_pos_inimigo1 = 0b00000010;
	MOVLW       2
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,1294 :: 		testa_inimigo1 =  0b00000011;
	MOVLW       3
	MOVWF       _testa_inimigo1+0 
;MyProject.c,1296 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1297 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1299 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1300 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11748
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11748:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1348
;MyProject.c,1301 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,1302 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,1303 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
L_ataque_1348:
;MyProject.c,1312 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1349
;MyProject.c,1314 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1350
;MyProject.c,1315 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1316 :: 		}
	GOTO        L_ataque_1351
L_ataque_1350:
;MyProject.c,1318 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1354
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1354
L__ataque_11516:
;MyProject.c,1319 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1320 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1321 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1322 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1354:
L_ataque_1351:
;MyProject.c,1324 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1325 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11749
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11749:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11515
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11515
	GOTO        L_ataque_1357
L__ataque_11515:
;MyProject.c,1326 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
L_ataque_1357:
;MyProject.c,1327 :: 		}
L_ataque_1349:
;MyProject.c,1329 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1358:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1358
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1358
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1358
	NOP
	NOP
;MyProject.c,1330 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,1333 :: 		case 15:
L_ataque_1359:
;MyProject.c,1334 :: 		Lcd_chr (1,2, 1);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1335 :: 		armazena_pos_inimigo1 = 0b00000001;
	MOVLW       1
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,1336 :: 		testa_inimigo1 =  0b00000010;
	MOVLW       2
	MOVWF       _testa_inimigo1+0 
;MyProject.c,1337 :: 		pos_inimigo_final = 0b00000001;
	MOVLW       1
	MOVWF       _pos_inimigo_final+0 
;MyProject.c,1339 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1340 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1342 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1343 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11750
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11750:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1360
;MyProject.c,1344 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
;MyProject.c,1345 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,1346 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       ataque_1_explode_nave_L0+0 
L_ataque_1360:
;MyProject.c,1355 :: 		if (explode_nave == 0){
	MOVF        ataque_1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1361
;MyProject.c,1357 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1362
;MyProject.c,1358 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1359 :: 		}
	GOTO        L_ataque_1363
L_ataque_1362:
;MyProject.c,1361 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1366
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1366
L__ataque_11514:
;MyProject.c,1362 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1363 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1364 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1365 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_1366:
L_ataque_1363:
;MyProject.c,1367 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1368 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11751
	MOVLW       1
	XORWF       R0, 0 
L__ataque_11751:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11513
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_11513
	GOTO        L_ataque_1369
L__ataque_11513:
;MyProject.c,1369 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_1_i_L0+0 
	MOVLW       0
	MOVWF       ataque_1_i_L0+1 
	GOTO        L_ataque_1370
L_ataque_1369:
;MyProject.c,1371 :: 		else  if (pos_inimigo_final == 0b00000001) {
	MOVF        _pos_inimigo_final+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_1371
;MyProject.c,1372 :: 		GameOver();                   }
	CALL        _GameOver+0, 0
L_ataque_1371:
L_ataque_1370:
;MyProject.c,1373 :: 		}
L_ataque_1361:
;MyProject.c,1374 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_1372:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_1372
	DECFSZ      R12, 1, 1
	BRA         L_ataque_1372
	DECFSZ      R11, 1, 1
	BRA         L_ataque_1372
	NOP
	NOP
;MyProject.c,1375 :: 		break;
	GOTO        L_ataque_1196
;MyProject.c,1376 :: 		}
L_ataque_1195:
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11752
	MOVLW       1
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11752:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1197
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11753
	MOVLW       2
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11753:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1203
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11754
	MOVLW       3
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11754:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1215
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11755
	MOVLW       4
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11755:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1227
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11756
	MOVLW       5
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11756:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1239
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11757
	MOVLW       6
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11757:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1251
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11758
	MOVLW       7
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11758:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1263
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11759
	MOVLW       8
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11759:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1275
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11760
	MOVLW       9
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11760:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1287
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11761
	MOVLW       10
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11761:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1299
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11762
	MOVLW       11
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11762:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1311
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11763
	MOVLW       12
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11763:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1323
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11764
	MOVLW       13
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11764:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1335
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11765
	MOVLW       14
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11765:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1347
	MOVLW       0
	XORWF       ataque_1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_11766
	MOVLW       15
	XORWF       ataque_1_i_L0+0, 0 
L__ataque_11766:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_1359
L_ataque_1196:
;MyProject.c,1377 :: 		i++;
	INFSNZ      ataque_1_i_L0+0, 1 
	INCF        ataque_1_i_L0+1, 1 
;MyProject.c,1378 :: 		}
	GOTO        L_ataque_1193
L_ataque_1194:
;MyProject.c,1380 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;MyProject.c,1381 :: 		armazena_pos_inimigo1 = 0b00000000;
	CLRF        _armazena_pos_inimigo1+0 
;MyProject.c,1382 :: 		armazena_pos_inimigo2 = 0b00000000;
	CLRF        _armazena_pos_inimigo2+0 
;MyProject.c,1383 :: 		armazena_pos_inimigo3 = 0b00000000;
	CLRF        _armazena_pos_inimigo3+0 
;MyProject.c,1384 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;MyProject.c,1385 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;MyProject.c,1386 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;MyProject.c,1388 :: 		testa_inimigo1 = 0b00000000;
	CLRF        _testa_inimigo1+0 
;MyProject.c,1389 :: 		testa_primeira_explosao = 0b00000000;
	CLRF        _testa_primeira_explosao+0 
;MyProject.c,1390 :: 		explode_nave = 0b00000000;
	CLRF        ataque_1_explode_nave_L0+0 
;MyProject.c,1391 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,1392 :: 		especial = 0b00000000;
	CLRF        _especial+0 
;MyProject.c,1393 :: 		}
L_end_ataque_1:
	RETURN      0
; end of _ataque_1

_ataque_2:

;MyProject.c,1400 :: 		void ataque_2 (){
;MyProject.c,1402 :: 		int i  = 0b00000000;                                //contador posicao nave_inimigo
	CLRF        ataque_2_i_L0+0 
	CLRF        ataque_2_i_L0+1 
	CLRF        ataque_2_explode_nave_L0+0 
;MyProject.c,1407 :: 		while (i<16)     {                                                 //execução rotina principal - andar naves
L_ataque_2373:
	MOVLW       128
	XORWF       ataque_2_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21768
	MOVLW       16
	SUBWF       ataque_2_i_L0+0, 0 
L__ataque_21768:
	BTFSC       STATUS+0, 0 
	GOTO        L_ataque_2374
;MyProject.c,1409 :: 		linha2 = 0b00000010;
	MOVLW       2
	MOVWF       _linha2+0 
;MyProject.c,1410 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,1411 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1413 :: 		switch (i) {
	GOTO        L_ataque_2375
;MyProject.c,1415 :: 		case 1:
L_ataque_2377:
;MyProject.c,1416 :: 		Lcd_chr (2,16, 2);                               //Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1417 :: 		armazena_pos_inimigo2 = 0b00001111;
	MOVLW       15
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1418 :: 		testa_inimigo2 =  0b00010000;
	MOVLW       16
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1420 :: 		if ((button(&PORTD, 2, 200, 1))){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2378
;MyProject.c,1421 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1422 :: 		nave_tiro();                   //testa se usuario pediu para ser lançado um tiro
	CALL        _nave_tiro+0, 0
;MyProject.c,1423 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1424 :: 		}
L_ataque_2378:
;MyProject.c,1426 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1435 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21769
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21769:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21570
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21570
	GOTO        L_ataque_2381
L__ataque_21570:
;MyProject.c,1436 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2381:
;MyProject.c,1438 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2382:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2382
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2382
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2382
	NOP
	NOP
;MyProject.c,1439 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1441 :: 		case 2:
L_ataque_2383:
;MyProject.c,1442 :: 		Lcd_chr (2,15, 2);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1443 :: 		armazena_pos_inimigo2 = 0b00001110;
	MOVLW       14
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1444 :: 		testa_inimigo2 =  0b00001111;
	MOVLW       15
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1446 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1447 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1449 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1450 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21770
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21770:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2384
;MyProject.c,1451 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1452 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1453 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1454 :: 		}
L_ataque_2384:
;MyProject.c,1463 :: 		if (explode_nave == 0){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2385
;MyProject.c,1464 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2386
;MyProject.c,1465 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1466 :: 		}
	GOTO        L_ataque_2387
L_ataque_2386:
;MyProject.c,1468 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2390
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2390
L__ataque_21569:
;MyProject.c,1469 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1470 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1471 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1472 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_2390:
L_ataque_2387:
;MyProject.c,1474 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1475 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21771
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21771:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21568
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21568
	GOTO        L_ataque_2393
L__ataque_21568:
;MyProject.c,1476 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2393:
;MyProject.c,1477 :: 		}
L_ataque_2385:
;MyProject.c,1478 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2394:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2394
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2394
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2394
	NOP
	NOP
;MyProject.c,1479 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1481 :: 		case 3:
L_ataque_2395:
;MyProject.c,1482 :: 		Lcd_chr (2,14, 2);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1483 :: 		armazena_pos_inimigo2 = 0b00001101;
	MOVLW       13
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1484 :: 		testa_inimigo2 =  0b00001110;
	MOVLW       14
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1486 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1487 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1489 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1490 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21772
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21772:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2396
;MyProject.c,1491 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1492 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1493 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1494 :: 		}
L_ataque_2396:
;MyProject.c,1503 :: 		if (explode_nave == 0){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2397
;MyProject.c,1504 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2398
;MyProject.c,1505 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1506 :: 		}
	GOTO        L_ataque_2399
L_ataque_2398:
;MyProject.c,1508 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2402
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2402
L__ataque_21567:
;MyProject.c,1509 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1510 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1511 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1512 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_2402:
L_ataque_2399:
;MyProject.c,1514 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1515 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21773
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21773:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21566
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21566
	GOTO        L_ataque_2405
L__ataque_21566:
;MyProject.c,1516 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2405:
;MyProject.c,1517 :: 		}
L_ataque_2397:
;MyProject.c,1518 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2406:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2406
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2406
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2406
	NOP
	NOP
;MyProject.c,1519 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1521 :: 		case 4:
L_ataque_2407:
;MyProject.c,1522 :: 		Lcd_chr (2,13, 2);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1523 :: 		armazena_pos_inimigo2 = 0b00001100;
	MOVLW       12
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1524 :: 		testa_inimigo2 =  0b00001101;
	MOVLW       13
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1526 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1527 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1529 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1530 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21774
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21774:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2408
;MyProject.c,1531 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1532 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1533 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1534 :: 		}
L_ataque_2408:
;MyProject.c,1543 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2409
;MyProject.c,1544 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2410
;MyProject.c,1545 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1546 :: 		}
	GOTO        L_ataque_2411
L_ataque_2410:
;MyProject.c,1548 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2414
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2414
L__ataque_21565:
;MyProject.c,1549 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1550 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1551 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1552 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_2414:
L_ataque_2411:
;MyProject.c,1554 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1555 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21775
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21775:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21564
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21564
	GOTO        L_ataque_2417
L__ataque_21564:
;MyProject.c,1556 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2417:
;MyProject.c,1557 :: 		}
L_ataque_2409:
;MyProject.c,1558 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2418:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2418
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2418
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2418
	NOP
	NOP
;MyProject.c,1559 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1561 :: 		case 5:
L_ataque_2419:
;MyProject.c,1562 :: 		Lcd_chr (2,12, 2);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1563 :: 		armazena_pos_inimigo2 = 0b00001011;
	MOVLW       11
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1564 :: 		testa_inimigo2 =  0b00001100;
	MOVLW       12
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1566 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1567 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1569 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1570 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21776
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21776:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2420
;MyProject.c,1571 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1572 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1573 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1574 :: 		}
L_ataque_2420:
;MyProject.c,1583 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2421
;MyProject.c,1584 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2422
;MyProject.c,1585 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1586 :: 		}
	GOTO        L_ataque_2423
L_ataque_2422:
;MyProject.c,1588 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2426
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2426
L__ataque_21563:
;MyProject.c,1589 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1590 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1591 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1592 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_2426:
L_ataque_2423:
;MyProject.c,1594 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1595 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21777
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21777:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21562
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21562
	GOTO        L_ataque_2429
L__ataque_21562:
;MyProject.c,1596 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2429:
;MyProject.c,1597 :: 		}
L_ataque_2421:
;MyProject.c,1598 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2430:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2430
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2430
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2430
	NOP
	NOP
;MyProject.c,1599 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1601 :: 		case 6:
L_ataque_2431:
;MyProject.c,1602 :: 		Lcd_chr (2,11, 2);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1603 :: 		armazena_pos_inimigo2 = 0b00001010;
	MOVLW       10
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1604 :: 		testa_inimigo2 =  0b00001011;
	MOVLW       11
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1606 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1607 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1609 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1610 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21778
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21778:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2432
;MyProject.c,1611 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1612 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1613 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1614 :: 		}
L_ataque_2432:
;MyProject.c,1623 :: 		if (explode_nave == 0b0000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2433
;MyProject.c,1624 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2434
;MyProject.c,1625 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1626 :: 		}
	GOTO        L_ataque_2435
L_ataque_2434:
;MyProject.c,1628 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2438
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2438
L__ataque_21561:
;MyProject.c,1629 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1630 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1631 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1632 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_2438:
L_ataque_2435:
;MyProject.c,1634 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1635 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21779
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21779:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21560
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21560
	GOTO        L_ataque_2441
L__ataque_21560:
;MyProject.c,1636 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2441:
;MyProject.c,1637 :: 		}
L_ataque_2433:
;MyProject.c,1638 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2442:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2442
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2442
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2442
	NOP
	NOP
;MyProject.c,1639 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1641 :: 		case 7:
L_ataque_2443:
;MyProject.c,1642 :: 		Lcd_chr (2,10, 2);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1643 :: 		armazena_pos_inimigo2 = 0b00001001;
	MOVLW       9
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1644 :: 		testa_inimigo2 =  0b00001010;
	MOVLW       10
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1646 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1647 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1649 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1650 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21780
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21780:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2444
;MyProject.c,1651 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1652 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1653 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1654 :: 		}
L_ataque_2444:
;MyProject.c,1663 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2445
;MyProject.c,1664 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2446
;MyProject.c,1665 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1666 :: 		}
	GOTO        L_ataque_2447
L_ataque_2446:
;MyProject.c,1668 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2450
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2450
L__ataque_21559:
;MyProject.c,1669 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1670 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1671 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1672 :: 		}  //testa se usuario pediu para ser lançado um tiro
L_ataque_2450:
L_ataque_2447:
;MyProject.c,1674 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1675 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21781
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21781:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21558
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21558
	GOTO        L_ataque_2453
L__ataque_21558:
;MyProject.c,1676 :: 		i = 15;                                              }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2453:
;MyProject.c,1677 :: 		}
L_ataque_2445:
;MyProject.c,1678 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2454:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2454
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2454
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2454
	NOP
	NOP
;MyProject.c,1679 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1681 :: 		case 8:
L_ataque_2455:
;MyProject.c,1682 :: 		Lcd_chr (2,9, 2);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1683 :: 		armazena_pos_inimigo2 = 0b00001000;
	MOVLW       8
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1684 :: 		testa_inimigo2 =  0b00001001;
	MOVLW       9
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1686 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1687 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1689 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1690 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21782
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21782:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2456
;MyProject.c,1691 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1692 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1693 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1694 :: 		}
L_ataque_2456:
;MyProject.c,1703 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2457
;MyProject.c,1704 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2458
;MyProject.c,1705 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1706 :: 		}
	GOTO        L_ataque_2459
L_ataque_2458:
;MyProject.c,1708 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2462
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2462
L__ataque_21557:
;MyProject.c,1709 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1710 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1711 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1712 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_2462:
L_ataque_2459:
;MyProject.c,1714 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1715 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21783
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21783:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21556
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21556
	GOTO        L_ataque_2465
L__ataque_21556:
;MyProject.c,1716 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2465:
;MyProject.c,1717 :: 		}
L_ataque_2457:
;MyProject.c,1718 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2466:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2466
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2466
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2466
	NOP
	NOP
;MyProject.c,1719 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1721 :: 		case 9:
L_ataque_2467:
;MyProject.c,1722 :: 		Lcd_chr (2,8, 2);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1723 :: 		armazena_pos_inimigo2 = 0b00000111;
	MOVLW       7
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1724 :: 		testa_inimigo2 =  0b00001000;
	MOVLW       8
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1726 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1727 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1729 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1730 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21784
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21784:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2468
;MyProject.c,1731 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1732 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1733 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1734 :: 		}
L_ataque_2468:
;MyProject.c,1743 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2469
;MyProject.c,1744 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2470
;MyProject.c,1745 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1746 :: 		}
	GOTO        L_ataque_2471
L_ataque_2470:
;MyProject.c,1748 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2474
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2474
L__ataque_21555:
;MyProject.c,1749 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1750 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1751 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1752 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_2474:
L_ataque_2471:
;MyProject.c,1754 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1755 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21785
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21785:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21554
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21554
	GOTO        L_ataque_2477
L__ataque_21554:
;MyProject.c,1756 :: 		i = 15;                                             }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2477:
;MyProject.c,1757 :: 		}
L_ataque_2469:
;MyProject.c,1758 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2478:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2478
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2478
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2478
	NOP
	NOP
;MyProject.c,1759 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1761 :: 		case 10:
L_ataque_2479:
;MyProject.c,1762 :: 		Lcd_chr (2,7, 2);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1763 :: 		armazena_pos_inimigo2 = 0b00000110;
	MOVLW       6
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1764 :: 		testa_inimigo2 =  0b00000111;
	MOVLW       7
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1766 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1767 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1769 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1770 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21786
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21786:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2480
;MyProject.c,1771 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1772 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1773 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1774 :: 		}
L_ataque_2480:
;MyProject.c,1783 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2481
;MyProject.c,1784 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2482
;MyProject.c,1785 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1786 :: 		}
	GOTO        L_ataque_2483
L_ataque_2482:
;MyProject.c,1788 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2486
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2486
L__ataque_21553:
;MyProject.c,1789 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1790 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1791 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1792 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_2486:
L_ataque_2483:
;MyProject.c,1794 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1795 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21787
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21787:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21552
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21552
	GOTO        L_ataque_2489
L__ataque_21552:
;MyProject.c,1796 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2489:
;MyProject.c,1797 :: 		}
L_ataque_2481:
;MyProject.c,1798 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2490:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2490
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2490
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2490
	NOP
	NOP
;MyProject.c,1799 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1801 :: 		case 11:
L_ataque_2491:
;MyProject.c,1802 :: 		Lcd_chr (2,6, 2);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1803 :: 		armazena_pos_inimigo2 = 0b00000101;
	MOVLW       5
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1804 :: 		testa_inimigo2 =  0b00000110;
	MOVLW       6
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1806 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1807 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1809 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1810 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21788
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21788:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2492
;MyProject.c,1811 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1812 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1813 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1814 :: 		}
L_ataque_2492:
;MyProject.c,1823 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2493
;MyProject.c,1824 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2494
;MyProject.c,1825 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1826 :: 		}
	GOTO        L_ataque_2495
L_ataque_2494:
;MyProject.c,1828 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2498
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2498
L__ataque_21551:
;MyProject.c,1829 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1830 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1831 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1833 :: 		}  //testa se usuario pediu para ser lançado um tiro
L_ataque_2498:
L_ataque_2495:
;MyProject.c,1835 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1836 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 1){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21789
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21789:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21550
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21550
	GOTO        L_ataque_2501
L__ataque_21550:
;MyProject.c,1837 :: 		i = 15;                                  }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2501:
;MyProject.c,1838 :: 		}
L_ataque_2493:
;MyProject.c,1839 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2502:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2502
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2502
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2502
	NOP
	NOP
;MyProject.c,1840 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1842 :: 		case 12:
L_ataque_2503:
;MyProject.c,1843 :: 		Lcd_chr (2,5, 2);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1844 :: 		armazena_pos_inimigo2 = 0b00000100;
	MOVLW       4
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1845 :: 		testa_inimigo2 =  0b00000101;
	MOVLW       5
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1847 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1848 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1850 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1851 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21790
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21790:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2504
;MyProject.c,1852 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1853 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1854 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1855 :: 		}
L_ataque_2504:
;MyProject.c,1864 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2505
;MyProject.c,1865 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2506
;MyProject.c,1866 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1867 :: 		}
	GOTO        L_ataque_2507
L_ataque_2506:
;MyProject.c,1869 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2510
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2510
L__ataque_21549:
;MyProject.c,1870 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1871 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1872 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1873 :: 		}//testa se usuario pediu para ser lançado um tiro
L_ataque_2510:
L_ataque_2507:
;MyProject.c,1875 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1876 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21791
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21791:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21548
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21548
	GOTO        L_ataque_2513
L__ataque_21548:
;MyProject.c,1877 :: 		i = 15;                                             }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2513:
;MyProject.c,1879 :: 		}
L_ataque_2505:
;MyProject.c,1880 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2514:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2514
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2514
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2514
	NOP
	NOP
;MyProject.c,1881 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1883 :: 		case 13:
L_ataque_2515:
;MyProject.c,1884 :: 		Lcd_chr (2,4, 2);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1885 :: 		armazena_pos_inimigo2 = 0b00000011;
	MOVLW       3
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1886 :: 		testa_inimigo2 =  0b00000100;
	MOVLW       4
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1888 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1889 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1891 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1892 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21792
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21792:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2516
;MyProject.c,1893 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1894 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1895 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1896 :: 		}
L_ataque_2516:
;MyProject.c,1905 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2517
;MyProject.c,1906 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2518
;MyProject.c,1907 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1908 :: 		}
	GOTO        L_ataque_2519
L_ataque_2518:
;MyProject.c,1910 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2522
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2522
L__ataque_21547:
;MyProject.c,1911 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1912 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1913 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1914 :: 		}   //testa se usuario pediu para ser lançado um tiro
L_ataque_2522:
L_ataque_2519:
;MyProject.c,1916 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1917 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21793
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21793:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21546
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21546
	GOTO        L_ataque_2525
L__ataque_21546:
;MyProject.c,1918 :: 		i = 15;                                        }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2525:
;MyProject.c,1919 :: 		}
L_ataque_2517:
;MyProject.c,1920 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2526:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2526
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2526
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2526
	NOP
	NOP
;MyProject.c,1921 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1923 :: 		case 14:
L_ataque_2527:
;MyProject.c,1924 :: 		Lcd_chr (2,3, 2);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1925 :: 		armazena_pos_inimigo2 = 0b00000010;
	MOVLW       2
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,1926 :: 		testa_inimigo2 =  0b00000011;
	MOVLW       3
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1927 :: 		pos_inimigo_final = 0b000000010;
	MOVLW       2
	MOVWF       _pos_inimigo_final+0 
;MyProject.c,1929 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1930 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1932 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1933 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21794
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21794:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2528
;MyProject.c,1934 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1935 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1936 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1937 :: 		}
L_ataque_2528:
;MyProject.c,1946 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2529
;MyProject.c,1947 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2530
;MyProject.c,1948 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1949 :: 		}
	GOTO        L_ataque_2531
L_ataque_2530:
;MyProject.c,1951 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2534
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2534
L__ataque_21545:
;MyProject.c,1952 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1953 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1954 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1955 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_2534:
L_ataque_2531:
;MyProject.c,1957 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1958 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21795
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21795:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21544
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21544
	GOTO        L_ataque_2537
L__ataque_21544:
;MyProject.c,1959 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
L_ataque_2537:
;MyProject.c,1960 :: 		}
L_ataque_2529:
;MyProject.c,1961 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2538:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2538
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2538
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2538
	NOP
	NOP
;MyProject.c,1962 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,1964 :: 		case 15:
L_ataque_2539:
;MyProject.c,1965 :: 		Lcd_chr (2,2, 2);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,1966 :: 		armazena_pos_inimigo1 = 0b00000001;
	MOVLW       1
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,1967 :: 		testa_inimigo2 =  0b00000010;
	MOVLW       2
	MOVWF       _testa_inimigo2+0 
;MyProject.c,1968 :: 		pos_inimigo_final = 0b00000001;
	MOVLW       1
	MOVWF       _pos_inimigo_final+0 
;MyProject.c,1970 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,1971 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,1973 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1974 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21796
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21796:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2540
;MyProject.c,1975 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
;MyProject.c,1976 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,1977 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_2_explode_nave_L0+0 
;MyProject.c,1978 :: 		}
L_ataque_2540:
;MyProject.c,1987 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2541
;MyProject.c,1988 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2542
;MyProject.c,1989 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1990 :: 		}
	GOTO        L_ataque_2543
L_ataque_2542:
;MyProject.c,1992 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2546
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2546
L__ataque_21543:
;MyProject.c,1993 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,1994 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,1995 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,1996 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_2546:
L_ataque_2543:
;MyProject.c,1998 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,1999 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21797
	MOVLW       1
	XORWF       R0, 0 
L__ataque_21797:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21542
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_21542
	GOTO        L_ataque_2549
L__ataque_21542:
;MyProject.c,2000 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_2_i_L0+0 
	MOVLW       0
	MOVWF       ataque_2_i_L0+1 
	GOTO        L_ataque_2550
L_ataque_2549:
;MyProject.c,2003 :: 		else  if (pos_inimigo_final == 0b00000001) {
	MOVF        _pos_inimigo_final+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_2551
;MyProject.c,2004 :: 		GameOver();    }
	CALL        _GameOver+0, 0
L_ataque_2551:
L_ataque_2550:
;MyProject.c,2005 :: 		}
L_ataque_2541:
;MyProject.c,2006 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_2552:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_2552
	DECFSZ      R12, 1, 1
	BRA         L_ataque_2552
	DECFSZ      R11, 1, 1
	BRA         L_ataque_2552
	NOP
	NOP
;MyProject.c,2007 :: 		break;
	GOTO        L_ataque_2376
;MyProject.c,2009 :: 		}
L_ataque_2375:
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21798
	MOVLW       1
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21798:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2377
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21799
	MOVLW       2
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21799:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2383
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21800
	MOVLW       3
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21800:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2395
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21801
	MOVLW       4
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21801:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2407
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21802
	MOVLW       5
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21802:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2419
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21803
	MOVLW       6
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21803:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2431
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21804
	MOVLW       7
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21804:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2443
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21805
	MOVLW       8
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21805:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2455
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21806
	MOVLW       9
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21806:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2467
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21807
	MOVLW       10
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21807:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2479
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21808
	MOVLW       11
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21808:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2491
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21809
	MOVLW       12
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21809:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2503
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21810
	MOVLW       13
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21810:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2515
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21811
	MOVLW       14
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21811:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2527
	MOVLW       0
	XORWF       ataque_2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_21812
	MOVLW       15
	XORWF       ataque_2_i_L0+0, 0 
L__ataque_21812:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_2539
L_ataque_2376:
;MyProject.c,2010 :: 		i++;
	INFSNZ      ataque_2_i_L0+0, 1 
	INCF        ataque_2_i_L0+1, 1 
;MyProject.c,2011 :: 		}
	GOTO        L_ataque_2373
L_ataque_2374:
;MyProject.c,2013 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;MyProject.c,2015 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;MyProject.c,2016 :: 		testa_inimigo2 = 0b00000000;
	CLRF        _testa_inimigo2+0 
;MyProject.c,2017 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;MyProject.c,2018 :: 		armazena_pos_inimigo1 = 0b00000000;
	CLRF        _armazena_pos_inimigo1+0 
;MyProject.c,2019 :: 		armazena_pos_inimigo2 = 0b00000000;
	CLRF        _armazena_pos_inimigo2+0 
;MyProject.c,2020 :: 		armazena_pos_inimigo3 = 0b00000000;
	CLRF        _armazena_pos_inimigo3+0 
;MyProject.c,2021 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;MyProject.c,2022 :: 		testa_primeira_explosao = 0b00000000;
	CLRF        _testa_primeira_explosao+0 
;MyProject.c,2023 :: 		explode_nave = 0b00000000;
	CLRF        ataque_2_explode_nave_L0+0 
;MyProject.c,2024 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,2025 :: 		especial = 0;
	CLRF        _especial+0 
;MyProject.c,2026 :: 		}
L_end_ataque_2:
	RETURN      0
; end of _ataque_2

_ataque_3:

;MyProject.c,2034 :: 		void ataque_3 (){
;MyProject.c,2037 :: 		int i = 0b00000000;                                         //contador posicao nave_inimigo
	CLRF        ataque_3_i_L0+0 
	CLRF        ataque_3_i_L0+1 
	CLRF        ataque_3_explode_nave_L0+0 
;MyProject.c,2043 :: 		while (i<16)     {                                                            //execução rotina principal - andar naves
L_ataque_3553:
	MOVLW       128
	XORWF       ataque_3_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31814
	MOVLW       16
	SUBWF       ataque_3_i_L0+0, 0 
L__ataque_31814:
	BTFSC       STATUS+0, 0 
	GOTO        L_ataque_3554
;MyProject.c,2045 :: 		linha1 = 0b00000001;
	MOVLW       1
	MOVWF       _linha1+0 
;MyProject.c,2046 :: 		Lcd_Cmd(_LCD_CLEAR);                                                  //onde será escrito o caracter de explosão de nave
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,2047 :: 		Chama_Enterprise();                                                   //Chama nave_principal
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2049 :: 		switch (i) {
	GOTO        L_ataque_3555
;MyProject.c,2051 :: 		case 1:
L_ataque_3557:
;MyProject.c,2052 :: 		Lcd_chr (1,16, 2);                                    //Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2053 :: 		armazena_pos_inimigo2 = 0b00001111;                   //Armazena posicao do inimigo para teste posterior
	MOVLW       15
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2054 :: 		testa_inimigo1 = 0b00010000;                          //Atribui valor 16 para a variável
	MOVLW       16
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2055 :: 		Chama_Enterprise();                                   //Chama ultima posicao de nave principal na tela
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2057 :: 		if ((button(&PORTD, 2, 200, 1))){                     //Se o bit 2 do portd estiver pressionado
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3558
;MyProject.c,2058 :: 		store_tiro = posicao_nave;           //armazena na variavel a posicao da nave
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2059 :: 		nave_tiro();                         //testa se usuario pediu para ser lançado um tiro
	CALL        _nave_tiro+0, 0
;MyProject.c,2060 :: 		testa_tiro = 0b00000001;             //atribui 1 a testa_tiro
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2061 :: 		}
L_ataque_3558:
;MyProject.c,2062 :: 		testa = Testa_Tiro_Inimigo();                                         //chama a funcao testa_tiro, de modo que se coincidir, explode a nave
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2071 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)  {  //se a variável testa for = 1 e testa_primeira_explosao = 1
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31815
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31815:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31599
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31599
	GOTO        L_ataque_3561
L__ataque_31599:
;MyProject.c,2072 :: 		i = 15;        }                                         //i = 15, de modo que saia do for
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3561:
;MyProject.c,2074 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3562:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3562
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3562
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3562
	NOP
	NOP
;MyProject.c,2075 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2077 :: 		case 2:
L_ataque_3563:
;MyProject.c,2078 :: 		Lcd_chr (1,15, 2);                              // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2079 :: 		armazena_pos_inimigo2 = 0b00001110;             //armazena posicao do inimigo para atualizar a tela
	MOVLW       14
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2080 :: 		testa_inimigo1 = 0b0001111;                     //armazena posicao inimigo para teste em colisao com tiro
	MOVLW       15
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2082 :: 		Chama_Enterprise();                            //Chama ultima posicao de nave principal na tela
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2083 :: 		escreve_enterprise();                          //Testa se usuario quer mudar nave principal
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2085 :: 		testa = Testa_Tiro_Inimigo();                  //recebe valor da funcao de teste tiro
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2086 :: 		if (testa == 0b00000001){                      //se a função for = 1, armazena 15 no i
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31816
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31816:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3564
;MyProject.c,2087 :: 		i = 15;                          //linha1 = 0 (reseta variável)
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2088 :: 		linha1 = 0b00000000;             //explode_nave = 1 e sai do for
	CLRF        _linha1+0 
;MyProject.c,2089 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
;MyProject.c,2090 :: 		}
L_ataque_3564:
;MyProject.c,2099 :: 		if (explode_nave == 0b00000000){                            //se variavel for = 0 (testada anteriormente)
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3565
;MyProject.c,2100 :: 		testa = Testa_Tiro_Inimigo();                   //recebe posicao da funcao
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2102 :: 		if (testa_tiro == 0b00000001){                  //Testa se tiro = 1, e dessa forma executa a função tiro sem
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3566
;MyProject.c,2103 :: 		nave_tiro();                           //que o usuario pressione o botao
	CALL        _nave_tiro+0, 0
;MyProject.c,2104 :: 		}
	GOTO        L_ataque_3567
L_ataque_3566:
;MyProject.c,2106 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){          //se pressinado
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3570
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3570
L__ataque_31598:
;MyProject.c,2107 :: 		store_tiro = posicao_nave;           //store_posicao recebe posicao da nave
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2108 :: 		nave_tiro();                         //chama funcao do tiro
	CALL        _nave_tiro+0, 0
;MyProject.c,2109 :: 		testa_tiro = 0b00000001;             //atribiui 1 a variável testa_tiro na função de chamar tiro
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2110 :: 		}                //testa se usuario pediu para ser lançado um tiro
L_ataque_3570:
L_ataque_3567:
;MyProject.c,2112 :: 		testa = Testa_Tiro_Inimigo();                                         //recebe o valor da variavel Testa_Tiro_Inimigo à variavel testa
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2113 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){    //se testa for 1 OU testa_primeira_explosao for 1, atribui 15 ao i e sai do for
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31817
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31817:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31597
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31597
	GOTO        L_ataque_3573
L__ataque_31597:
;MyProject.c,2114 :: 		i = 15;                                                 //Segue mesma linha de raciocínio nos casos seguintes
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2115 :: 		}
L_ataque_3573:
;MyProject.c,2116 :: 		}
L_ataque_3565:
;MyProject.c,2117 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3574:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3574
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3574
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3574
	NOP
	NOP
;MyProject.c,2118 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2120 :: 		case 3:
L_ataque_3575:
;MyProject.c,2121 :: 		Lcd_chr (1,14, 2);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2122 :: 		armazena_pos_inimigo2 = 0b00001101;
	MOVLW       13
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2123 :: 		testa_inimigo1 = 0b00001110;
	MOVLW       14
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2125 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2126 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2128 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2129 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31818
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31818:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3576
;MyProject.c,2130 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2131 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2132 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
;MyProject.c,2133 :: 		}
L_ataque_3576:
;MyProject.c,2142 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3577
;MyProject.c,2143 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3578
;MyProject.c,2144 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2145 :: 		}
	GOTO        L_ataque_3579
L_ataque_3578:
;MyProject.c,2147 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3582
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3582
L__ataque_31596:
;MyProject.c,2148 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2149 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2150 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2151 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3582:
L_ataque_3579:
;MyProject.c,2153 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2154 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31819
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31819:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31595
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31595
	GOTO        L_ataque_3585
L__ataque_31595:
;MyProject.c,2155 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3585:
;MyProject.c,2156 :: 		}
L_ataque_3577:
;MyProject.c,2157 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3586:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3586
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3586
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3586
	NOP
	NOP
;MyProject.c,2158 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2160 :: 		case 4:
L_ataque_3587:
;MyProject.c,2161 :: 		Lcd_chr (1,13, 2);                              // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2162 :: 		armazena_pos_inimigo2 = 0b00001100;
	MOVLW       12
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2163 :: 		testa_inimigo1 = 0b00001101;
	MOVLW       13
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2165 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2166 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2168 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2169 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31820
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31820:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3588
;MyProject.c,2170 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2171 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2172 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
;MyProject.c,2173 :: 		}
L_ataque_3588:
;MyProject.c,2182 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3589
;MyProject.c,2183 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3590
;MyProject.c,2184 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2185 :: 		}
	GOTO        L_ataque_3591
L_ataque_3590:
;MyProject.c,2187 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3594
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3594
L__ataque_31594:
;MyProject.c,2188 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2189 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2190 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2191 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3594:
L_ataque_3591:
;MyProject.c,2193 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2194 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31821
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31821:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31593
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31593
	GOTO        L_ataque_3597
L__ataque_31593:
;MyProject.c,2195 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3597:
;MyProject.c,2196 :: 		}
L_ataque_3589:
;MyProject.c,2197 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3598:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3598
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3598
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3598
	NOP
	NOP
;MyProject.c,2198 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2200 :: 		case 5:
L_ataque_3599:
;MyProject.c,2201 :: 		Lcd_chr (1,12, 2);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2202 :: 		armazena_pos_inimigo2 = 0b00001011;
	MOVLW       11
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2203 :: 		testa_inimigo1 = 0b00001100;
	MOVLW       12
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2205 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2206 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2208 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2209 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31822
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31822:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3600
;MyProject.c,2210 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2211 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2212 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3600:
;MyProject.c,2221 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3601
;MyProject.c,2222 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3602
;MyProject.c,2223 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2224 :: 		}
	GOTO        L_ataque_3603
L_ataque_3602:
;MyProject.c,2226 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3606
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3606
L__ataque_31592:
;MyProject.c,2227 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2228 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2229 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2230 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3606:
L_ataque_3603:
;MyProject.c,2231 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2232 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31823
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31823:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31591
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31591
	GOTO        L_ataque_3609
L__ataque_31591:
;MyProject.c,2233 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3609:
;MyProject.c,2234 :: 		}
L_ataque_3601:
;MyProject.c,2235 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_3610:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3610
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3610
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3610
	NOP
	NOP
;MyProject.c,2236 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2238 :: 		case 6:
L_ataque_3611:
;MyProject.c,2239 :: 		Lcd_chr (1,11, 2);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2240 :: 		armazena_pos_inimigo2 = 0b00001010;
	MOVLW       10
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2241 :: 		testa_inimigo1 =  0b00001011;
	MOVLW       11
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2243 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2244 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2246 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2247 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31824
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31824:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3612
;MyProject.c,2248 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2249 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2250 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3612:
;MyProject.c,2259 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3613
;MyProject.c,2260 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3614
;MyProject.c,2261 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2262 :: 		}
	GOTO        L_ataque_3615
L_ataque_3614:
;MyProject.c,2264 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3618
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3618
L__ataque_31590:
;MyProject.c,2265 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2266 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2267 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2268 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3618:
L_ataque_3615:
;MyProject.c,2269 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2270 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31825
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31825:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31589
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31589
	GOTO        L_ataque_3621
L__ataque_31589:
;MyProject.c,2271 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3621:
;MyProject.c,2272 :: 		}
L_ataque_3613:
;MyProject.c,2273 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3622:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3622
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3622
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3622
	NOP
	NOP
;MyProject.c,2274 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2276 :: 		case 7:
L_ataque_3623:
;MyProject.c,2277 :: 		Lcd_chr (1,10, 2);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2278 :: 		armazena_pos_inimigo2 = 0b00001001;
	MOVLW       9
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2279 :: 		testa_inimigo1 =  0b00001010;
	MOVLW       10
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2281 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2282 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2284 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2285 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31826
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31826:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3624
;MyProject.c,2286 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2287 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2288 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3624:
;MyProject.c,2297 :: 		if (explode_nave == 0){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3625
;MyProject.c,2298 :: 		if (testa_tiro == 1){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3626
;MyProject.c,2299 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2300 :: 		}
	GOTO        L_ataque_3627
L_ataque_3626:
;MyProject.c,2302 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3630
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3630
L__ataque_31588:
;MyProject.c,2303 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2304 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2305 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2306 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3630:
L_ataque_3627:
;MyProject.c,2308 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2309 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31827
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31827:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31587
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31587
	GOTO        L_ataque_3633
L__ataque_31587:
;MyProject.c,2310 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3633:
;MyProject.c,2312 :: 		}
L_ataque_3625:
;MyProject.c,2313 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3634:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3634
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3634
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3634
	NOP
	NOP
;MyProject.c,2314 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2316 :: 		case 8:
L_ataque_3635:
;MyProject.c,2317 :: 		Lcd_chr (1,9, 2);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2318 :: 		armazena_pos_inimigo2 = 0b00001000;
	MOVLW       8
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2319 :: 		testa_inimigo1 =  0b00001001;
	MOVLW       9
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2321 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2322 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2324 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2325 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31828
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31828:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3636
;MyProject.c,2326 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2327 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2328 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3636:
;MyProject.c,2337 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3637
;MyProject.c,2338 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3638
;MyProject.c,2339 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2340 :: 		}
	GOTO        L_ataque_3639
L_ataque_3638:
;MyProject.c,2342 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3642
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3642
L__ataque_31586:
;MyProject.c,2343 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2344 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2345 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2346 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3642:
L_ataque_3639:
;MyProject.c,2348 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2349 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31829
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31829:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31585
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31585
	GOTO        L_ataque_3645
L__ataque_31585:
;MyProject.c,2350 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3645:
;MyProject.c,2351 :: 		}
L_ataque_3637:
;MyProject.c,2352 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3646:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3646
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3646
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3646
	NOP
	NOP
;MyProject.c,2353 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2355 :: 		case 9:
L_ataque_3647:
;MyProject.c,2356 :: 		Lcd_chr (1,8, 2);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2357 :: 		armazena_pos_inimigo2 = 0b00000111;
	MOVLW       7
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2358 :: 		testa_inimigo1 =  0b00001000;
	MOVLW       8
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2360 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2361 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2363 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2364 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31830
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31830:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3648
;MyProject.c,2365 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2366 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2367 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3648:
;MyProject.c,2376 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3649
;MyProject.c,2377 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3650
;MyProject.c,2378 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2379 :: 		}
	GOTO        L_ataque_3651
L_ataque_3650:
;MyProject.c,2381 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3654
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3654
L__ataque_31584:
;MyProject.c,2382 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2383 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2384 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2385 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3654:
L_ataque_3651:
;MyProject.c,2387 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2388 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31831
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31831:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31583
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31583
	GOTO        L_ataque_3657
L__ataque_31583:
;MyProject.c,2389 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3657:
;MyProject.c,2390 :: 		}
L_ataque_3649:
;MyProject.c,2391 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3658:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3658
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3658
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3658
	NOP
	NOP
;MyProject.c,2392 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2394 :: 		case 10:
L_ataque_3659:
;MyProject.c,2395 :: 		Lcd_chr (1,7, 2);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2396 :: 		armazena_pos_inimigo2 = 0b00000110;
	MOVLW       6
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2397 :: 		testa_inimigo1 =  0b00000111;
	MOVLW       7
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2399 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2400 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2402 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2403 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31832
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31832:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3660
;MyProject.c,2404 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2405 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2406 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3660:
;MyProject.c,2415 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3661
;MyProject.c,2416 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3662
;MyProject.c,2417 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2418 :: 		}
	GOTO        L_ataque_3663
L_ataque_3662:
;MyProject.c,2420 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3666
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3666
L__ataque_31582:
;MyProject.c,2421 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2422 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2423 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2424 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3666:
L_ataque_3663:
;MyProject.c,2426 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2427 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31833
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31833:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31581
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31581
	GOTO        L_ataque_3669
L__ataque_31581:
;MyProject.c,2428 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3669:
;MyProject.c,2429 :: 		}
L_ataque_3661:
;MyProject.c,2430 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3670:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3670
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3670
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3670
	NOP
	NOP
;MyProject.c,2431 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2433 :: 		case 11:
L_ataque_3671:
;MyProject.c,2434 :: 		Lcd_chr (1,6, 2);                                // Nave Inimiga
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2435 :: 		armazena_pos_inimigo2 = 0b00000101;
	MOVLW       5
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2436 :: 		testa_inimigo1 =  0b00000110;
	MOVLW       6
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2438 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2439 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2441 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2442 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31834
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31834:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3672
;MyProject.c,2443 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2444 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2445 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3672:
;MyProject.c,2455 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3673
;MyProject.c,2456 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3674
;MyProject.c,2457 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2458 :: 		}
	GOTO        L_ataque_3675
L_ataque_3674:
;MyProject.c,2460 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3678
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3678
L__ataque_31580:
;MyProject.c,2461 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2462 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2463 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2464 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3678:
L_ataque_3675:
;MyProject.c,2466 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2467 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31835
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31835:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31579
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31579
	GOTO        L_ataque_3681
L__ataque_31579:
;MyProject.c,2468 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3681:
;MyProject.c,2469 :: 		}
L_ataque_3673:
;MyProject.c,2470 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3682:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3682
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3682
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3682
	NOP
	NOP
;MyProject.c,2471 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2473 :: 		case 12:
L_ataque_3683:
;MyProject.c,2474 :: 		Lcd_chr (1,5, 2);                                // Nave Inimiga
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2475 :: 		armazena_pos_inimigo2 = 0b00000100;
	MOVLW       4
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2476 :: 		testa_inimigo1 =  0b00000101;
	MOVLW       5
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2478 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2479 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2481 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2482 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31836
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31836:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3684
;MyProject.c,2483 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2484 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2485 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3684:
;MyProject.c,2495 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3685
;MyProject.c,2496 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3686
;MyProject.c,2497 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2498 :: 		}
	GOTO        L_ataque_3687
L_ataque_3686:
;MyProject.c,2500 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3690
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3690
L__ataque_31578:
;MyProject.c,2501 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2502 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2503 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2504 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3690:
L_ataque_3687:
;MyProject.c,2506 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2507 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31837
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31837:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31577
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31577
	GOTO        L_ataque_3693
L__ataque_31577:
;MyProject.c,2508 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3693:
;MyProject.c,2509 :: 		}
L_ataque_3685:
;MyProject.c,2510 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3694:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3694
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3694
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3694
	NOP
	NOP
;MyProject.c,2511 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2513 :: 		case 13:
L_ataque_3695:
;MyProject.c,2514 :: 		Lcd_chr (1,4, 2);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2515 :: 		armazena_pos_inimigo2 = 0b00000011;
	MOVLW       3
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2516 :: 		testa_inimigo1 =  0b00000100;
	MOVLW       4
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2518 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2519 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2521 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2522 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31838
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31838:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3696
;MyProject.c,2523 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2524 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2525 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3696:
;MyProject.c,2534 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3697
;MyProject.c,2536 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3698
;MyProject.c,2537 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2538 :: 		}
	GOTO        L_ataque_3699
L_ataque_3698:
;MyProject.c,2540 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3702
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3702
L__ataque_31576:
;MyProject.c,2541 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2542 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2543 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2544 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3702:
L_ataque_3699:
;MyProject.c,2546 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2547 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31839
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31839:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31575
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31575
	GOTO        L_ataque_3705
L__ataque_31575:
;MyProject.c,2548 :: 		i = 15;                                             }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3705:
;MyProject.c,2549 :: 		}
L_ataque_3697:
;MyProject.c,2550 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3706:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3706
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3706
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3706
	NOP
	NOP
;MyProject.c,2551 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2553 :: 		case 14:
L_ataque_3707:
;MyProject.c,2554 :: 		Lcd_chr (1,3, 2);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2555 :: 		armazena_pos_inimigo2 = 0b00000010;
	MOVLW       2
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2556 :: 		testa_inimigo1 =  0b00000011;
	MOVLW       3
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2558 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2559 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2561 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2562 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31840
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31840:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3708
;MyProject.c,2563 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2564 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2565 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3708:
;MyProject.c,2574 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3709
;MyProject.c,2576 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3710
;MyProject.c,2577 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2578 :: 		}
	GOTO        L_ataque_3711
L_ataque_3710:
;MyProject.c,2580 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3714
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3714
L__ataque_31574:
;MyProject.c,2581 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2582 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2583 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2584 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3714:
L_ataque_3711:
;MyProject.c,2586 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2587 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31841
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31841:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31573
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31573
	GOTO        L_ataque_3717
L__ataque_31573:
;MyProject.c,2588 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
L_ataque_3717:
;MyProject.c,2589 :: 		}
L_ataque_3709:
;MyProject.c,2591 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3718:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3718
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3718
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3718
	NOP
	NOP
;MyProject.c,2592 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2595 :: 		case 15:
L_ataque_3719:
;MyProject.c,2596 :: 		Lcd_chr (1,2, 2);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2597 :: 		armazena_pos_inimigo2 = 0b00000001;
	MOVLW       1
	MOVWF       _armazena_pos_inimigo2+0 
;MyProject.c,2598 :: 		testa_inimigo1 =  0b00000010;
	MOVLW       2
	MOVWF       _testa_inimigo1+0 
;MyProject.c,2599 :: 		pos_inimigo_final = 0b00000001;
	MOVLW       1
	MOVWF       _pos_inimigo_final+0 
;MyProject.c,2601 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2602 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2604 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2605 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31842
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31842:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3720
;MyProject.c,2606 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
;MyProject.c,2607 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2608 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       ataque_3_explode_nave_L0+0 
L_ataque_3720:
;MyProject.c,2618 :: 		if (explode_nave == 0){
	MOVF        ataque_3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3721
;MyProject.c,2620 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3722
;MyProject.c,2621 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2622 :: 		}
	GOTO        L_ataque_3723
L_ataque_3722:
;MyProject.c,2624 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3726
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3726
L__ataque_31572:
;MyProject.c,2625 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2626 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2627 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2628 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_3726:
L_ataque_3723:
;MyProject.c,2630 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2631 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31843
	MOVLW       1
	XORWF       R0, 0 
L__ataque_31843:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31571
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_31571
	GOTO        L_ataque_3729
L__ataque_31571:
;MyProject.c,2632 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_3_i_L0+0 
	MOVLW       0
	MOVWF       ataque_3_i_L0+1 
	GOTO        L_ataque_3730
L_ataque_3729:
;MyProject.c,2634 :: 		else  if (pos_inimigo_final == 0b00000001) {
	MOVF        _pos_inimigo_final+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_3731
;MyProject.c,2635 :: 		GameOver();    }
	CALL        _GameOver+0, 0
L_ataque_3731:
L_ataque_3730:
;MyProject.c,2636 :: 		}
L_ataque_3721:
;MyProject.c,2637 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_ataque_3732:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_3732
	DECFSZ      R12, 1, 1
	BRA         L_ataque_3732
	DECFSZ      R11, 1, 1
	BRA         L_ataque_3732
	NOP
	NOP
;MyProject.c,2638 :: 		break;
	GOTO        L_ataque_3556
;MyProject.c,2639 :: 		}
L_ataque_3555:
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31844
	MOVLW       1
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31844:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3557
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31845
	MOVLW       2
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31845:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3563
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31846
	MOVLW       3
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31846:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3575
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31847
	MOVLW       4
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31847:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3587
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31848
	MOVLW       5
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31848:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3599
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31849
	MOVLW       6
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31849:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3611
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31850
	MOVLW       7
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31850:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3623
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31851
	MOVLW       8
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31851:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3635
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31852
	MOVLW       9
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31852:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3647
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31853
	MOVLW       10
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31853:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3659
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31854
	MOVLW       11
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31854:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3671
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31855
	MOVLW       12
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31855:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3683
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31856
	MOVLW       13
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31856:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3695
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31857
	MOVLW       14
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31857:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3707
	MOVLW       0
	XORWF       ataque_3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_31858
	MOVLW       15
	XORWF       ataque_3_i_L0+0, 0 
L__ataque_31858:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_3719
L_ataque_3556:
;MyProject.c,2640 :: 		i++;
	INFSNZ      ataque_3_i_L0+0, 1 
	INCF        ataque_3_i_L0+1, 1 
;MyProject.c,2641 :: 		}
	GOTO        L_ataque_3553
L_ataque_3554:
;MyProject.c,2643 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;MyProject.c,2644 :: 		armazena_pos_inimigo1 = 0b00000000;
	CLRF        _armazena_pos_inimigo1+0 
;MyProject.c,2645 :: 		armazena_pos_inimigo2 = 0b00000000;
	CLRF        _armazena_pos_inimigo2+0 
;MyProject.c,2646 :: 		armazena_pos_inimigo3 = 0b00000000;
	CLRF        _armazena_pos_inimigo3+0 
;MyProject.c,2647 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;MyProject.c,2648 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;MyProject.c,2649 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;MyProject.c,2651 :: 		testa_inimigo1 = 0b00000000;
	CLRF        _testa_inimigo1+0 
;MyProject.c,2652 :: 		testa_primeira_explosao = 0b00000000;
	CLRF        _testa_primeira_explosao+0 
;MyProject.c,2653 :: 		explode_nave = 0b00000000;
	CLRF        ataque_3_explode_nave_L0+0 
;MyProject.c,2654 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,2655 :: 		especial = 0;
	CLRF        _especial+0 
;MyProject.c,2657 :: 		}
L_end_ataque_3:
	RETURN      0
; end of _ataque_3

_ataque_4:

;MyProject.c,2663 :: 		void ataque_4 (){
;MyProject.c,2666 :: 		int i = 0b00000000;                                         //contador posicao nave_inimigo
	CLRF        ataque_4_i_L0+0 
	CLRF        ataque_4_i_L0+1 
	CLRF        ataque_4_explode_nave_L0+0 
;MyProject.c,2671 :: 		while (i<16)     {                                                 //execução rotina principal - andar naves
L_ataque_4733:
	MOVLW       128
	XORWF       ataque_4_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41860
	MOVLW       16
	SUBWF       ataque_4_i_L0+0, 0 
L__ataque_41860:
	BTFSC       STATUS+0, 0 
	GOTO        L_ataque_4734
;MyProject.c,2673 :: 		linha2 = 0b00000010;
	MOVLW       2
	MOVWF       _linha2+0 
;MyProject.c,2674 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,2675 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2677 :: 		switch (i) {
	GOTO        L_ataque_4735
;MyProject.c,2679 :: 		case 1:
L_ataque_4737:
;MyProject.c,2680 :: 		Lcd_chr (2,16, 1);                               //Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2681 :: 		armazena_pos_inimigo1 = 0b00001111;
	MOVLW       15
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,2682 :: 		testa_inimigo2 =  0b00010000;
	MOVLW       16
	MOVWF       _testa_inimigo2+0 
;MyProject.c,2684 :: 		if ((button(&PORTD, 2, 200, 1))){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4738
;MyProject.c,2685 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2686 :: 		nave_tiro();                   //testa se usuario pediu para ser lançado um tiro
	CALL        _nave_tiro+0, 0
;MyProject.c,2687 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2688 :: 		}
L_ataque_4738:
;MyProject.c,2697 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2698 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41861
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41861:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41628
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41628
	GOTO        L_ataque_4741
L__ataque_41628:
;MyProject.c,2699 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4741:
;MyProject.c,2701 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4742:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4742
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4742
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4742
	NOP
	NOP
;MyProject.c,2702 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,2704 :: 		case 2:
L_ataque_4743:
;MyProject.c,2705 :: 		Lcd_chr (2,15, 1);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2706 :: 		armazena_pos_inimigo1 = 0b00001110;
	MOVLW       14
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,2707 :: 		testa_inimigo2 =  0b00001111;
	MOVLW       15
	MOVWF       _testa_inimigo2+0 
;MyProject.c,2709 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2710 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2712 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2713 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41862
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41862:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4744
;MyProject.c,2714 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,2715 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,2716 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,2717 :: 		}
L_ataque_4744:
;MyProject.c,2726 :: 		if (explode_nave == 0){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4745
;MyProject.c,2727 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4746
;MyProject.c,2728 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2729 :: 		}
	GOTO        L_ataque_4747
L_ataque_4746:
;MyProject.c,2731 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4750
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4750
L__ataque_41627:
;MyProject.c,2732 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2733 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2734 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2735 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_4750:
L_ataque_4747:
;MyProject.c,2737 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2738 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41863
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41863:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41626
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41626
	GOTO        L_ataque_4753
L__ataque_41626:
;MyProject.c,2739 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4753:
;MyProject.c,2740 :: 		}
L_ataque_4745:
;MyProject.c,2741 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4754:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4754
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4754
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4754
	NOP
	NOP
;MyProject.c,2742 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,2744 :: 		case 3:
L_ataque_4755:
;MyProject.c,2745 :: 		Lcd_chr (2,14, 1);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2746 :: 		armazena_pos_inimigo1 = 0b00001101;
	MOVLW       13
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,2747 :: 		testa_inimigo2 =  0b00001110;
	MOVLW       14
	MOVWF       _testa_inimigo2+0 
;MyProject.c,2749 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2750 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2752 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2753 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41864
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41864:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4756
;MyProject.c,2754 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,2755 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,2756 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,2757 :: 		}
L_ataque_4756:
;MyProject.c,2766 :: 		if (explode_nave == 0){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4757
;MyProject.c,2767 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4758
;MyProject.c,2768 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2769 :: 		}
	GOTO        L_ataque_4759
L_ataque_4758:
;MyProject.c,2771 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4762
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4762
L__ataque_41625:
;MyProject.c,2772 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2773 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2774 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2775 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_4762:
L_ataque_4759:
;MyProject.c,2777 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2778 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41865
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41865:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41624
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41624
	GOTO        L_ataque_4765
L__ataque_41624:
;MyProject.c,2779 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4765:
;MyProject.c,2780 :: 		}
L_ataque_4757:
;MyProject.c,2781 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4766:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4766
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4766
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4766
	NOP
	NOP
;MyProject.c,2782 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,2784 :: 		case 4:
L_ataque_4767:
;MyProject.c,2785 :: 		Lcd_chr (2,13, 1);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2786 :: 		armazena_pos_inimigo1 = 0b00001100;
	MOVLW       12
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,2787 :: 		testa_inimigo2 =  0b00001101;
	MOVLW       13
	MOVWF       _testa_inimigo2+0 
;MyProject.c,2789 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2790 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2792 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2793 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41866
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41866:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4768
;MyProject.c,2794 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,2795 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,2796 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,2797 :: 		}
L_ataque_4768:
;MyProject.c,2805 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4769
;MyProject.c,2806 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4770
;MyProject.c,2807 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2808 :: 		}
	GOTO        L_ataque_4771
L_ataque_4770:
;MyProject.c,2810 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4774
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4774
L__ataque_41623:
;MyProject.c,2811 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2812 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2813 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2814 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_4774:
L_ataque_4771:
;MyProject.c,2816 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2817 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41867
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41867:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41622
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41622
	GOTO        L_ataque_4777
L__ataque_41622:
;MyProject.c,2818 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4777:
;MyProject.c,2819 :: 		}
L_ataque_4769:
;MyProject.c,2820 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4778:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4778
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4778
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4778
	NOP
	NOP
;MyProject.c,2821 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,2823 :: 		case 5:
L_ataque_4779:
;MyProject.c,2824 :: 		Lcd_chr (2,12, 1);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2825 :: 		armazena_pos_inimigo1 = 0b00001011;
	MOVLW       11
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,2826 :: 		testa_inimigo2 =  0b00001100;
	MOVLW       12
	MOVWF       _testa_inimigo2+0 
;MyProject.c,2828 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2829 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2831 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2832 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41868
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41868:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4780
;MyProject.c,2833 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,2834 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,2835 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,2836 :: 		}
L_ataque_4780:
;MyProject.c,2845 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4781
;MyProject.c,2846 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4782
;MyProject.c,2847 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2848 :: 		}
	GOTO        L_ataque_4783
L_ataque_4782:
;MyProject.c,2850 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4786
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4786
L__ataque_41621:
;MyProject.c,2851 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2852 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2853 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2854 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_4786:
L_ataque_4783:
;MyProject.c,2856 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2857 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41869
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41869:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41620
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41620
	GOTO        L_ataque_4789
L__ataque_41620:
;MyProject.c,2858 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4789:
;MyProject.c,2859 :: 		}
L_ataque_4781:
;MyProject.c,2860 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4790:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4790
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4790
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4790
	NOP
	NOP
;MyProject.c,2861 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,2863 :: 		case 6:
L_ataque_4791:
;MyProject.c,2864 :: 		Lcd_chr (2,11, 1);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2865 :: 		armazena_pos_inimigo1 = 0b00001010;
	MOVLW       10
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,2866 :: 		testa_inimigo2 =  0b00001011;
	MOVLW       11
	MOVWF       _testa_inimigo2+0 
;MyProject.c,2868 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2869 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2871 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2872 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41870
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41870:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4792
;MyProject.c,2873 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,2874 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,2875 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,2876 :: 		}
L_ataque_4792:
;MyProject.c,2885 :: 		if (explode_nave == 0b0000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4793
;MyProject.c,2886 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4794
;MyProject.c,2887 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2888 :: 		}
	GOTO        L_ataque_4795
L_ataque_4794:
;MyProject.c,2890 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4798
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4798
L__ataque_41619:
;MyProject.c,2891 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2892 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2893 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2894 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_4798:
L_ataque_4795:
;MyProject.c,2896 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2897 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41871
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41871:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41618
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41618
	GOTO        L_ataque_4801
L__ataque_41618:
;MyProject.c,2898 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4801:
;MyProject.c,2899 :: 		}
L_ataque_4793:
;MyProject.c,2900 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4802:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4802
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4802
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4802
	NOP
	NOP
;MyProject.c,2901 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,2903 :: 		case 7:
L_ataque_4803:
;MyProject.c,2904 :: 		Lcd_chr (2,10, 1);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2905 :: 		armazena_pos_inimigo1 = 0b00001001;
	MOVLW       9
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,2906 :: 		testa_inimigo2 =  0b00001010;
	MOVLW       10
	MOVWF       _testa_inimigo2+0 
;MyProject.c,2908 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2909 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2911 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2912 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41872
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41872:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4804
;MyProject.c,2913 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,2914 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,2915 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,2916 :: 		}
L_ataque_4804:
;MyProject.c,2925 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4805
;MyProject.c,2926 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4806
;MyProject.c,2927 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2928 :: 		}
	GOTO        L_ataque_4807
L_ataque_4806:
;MyProject.c,2930 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4810
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4810
L__ataque_41617:
;MyProject.c,2931 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2932 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2933 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2934 :: 		}  //testa se usuario pediu para ser lançado um tiro
L_ataque_4810:
L_ataque_4807:
;MyProject.c,2936 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2937 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41873
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41873:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41616
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41616
	GOTO        L_ataque_4813
L__ataque_41616:
;MyProject.c,2938 :: 		i = 15;                                              }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4813:
;MyProject.c,2939 :: 		}
L_ataque_4805:
;MyProject.c,2940 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4814:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4814
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4814
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4814
	NOP
	NOP
;MyProject.c,2941 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,2943 :: 		case 8:
L_ataque_4815:
;MyProject.c,2944 :: 		Lcd_chr (2,9, 1);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2945 :: 		armazena_pos_inimigo1 = 0b00001000;
	MOVLW       8
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,2946 :: 		testa_inimigo2 =  0b00001001;
	MOVLW       9
	MOVWF       _testa_inimigo2+0 
;MyProject.c,2948 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2949 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2951 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2952 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41874
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41874:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4816
;MyProject.c,2953 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,2954 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,2955 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,2956 :: 		}
L_ataque_4816:
;MyProject.c,2965 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4817
;MyProject.c,2966 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4818
;MyProject.c,2967 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2968 :: 		}
	GOTO        L_ataque_4819
L_ataque_4818:
;MyProject.c,2970 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4822
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4822
L__ataque_41615:
;MyProject.c,2971 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,2972 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,2973 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,2974 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_4822:
L_ataque_4819:
;MyProject.c,2976 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2977 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41875
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41875:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41614
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41614
	GOTO        L_ataque_4825
L__ataque_41614:
;MyProject.c,2978 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4825:
;MyProject.c,2979 :: 		}
L_ataque_4817:
;MyProject.c,2980 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4826:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4826
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4826
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4826
	NOP
	NOP
;MyProject.c,2981 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,2983 :: 		case 9:
L_ataque_4827:
;MyProject.c,2984 :: 		Lcd_chr (2,8, 1);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,2985 :: 		armazena_pos_inimigo1 = 0b00000111;
	MOVLW       7
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,2986 :: 		testa_inimigo2 =  0b00001000;
	MOVLW       8
	MOVWF       _testa_inimigo2+0 
;MyProject.c,2988 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,2989 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,2991 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,2992 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41876
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41876:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4828
;MyProject.c,2993 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,2994 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,2995 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,2996 :: 		}
L_ataque_4828:
;MyProject.c,3005 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4829
;MyProject.c,3006 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4830
;MyProject.c,3007 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3008 :: 		}
	GOTO        L_ataque_4831
L_ataque_4830:
;MyProject.c,3010 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4834
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4834
L__ataque_41613:
;MyProject.c,3011 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3012 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3013 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3014 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_4834:
L_ataque_4831:
;MyProject.c,3016 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3017 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41877
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41877:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41612
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41612
	GOTO        L_ataque_4837
L__ataque_41612:
;MyProject.c,3018 :: 		i = 15;                                             }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4837:
;MyProject.c,3019 :: 		}
L_ataque_4829:
;MyProject.c,3020 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4838:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4838
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4838
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4838
	NOP
	NOP
;MyProject.c,3021 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,3023 :: 		case 10:
L_ataque_4839:
;MyProject.c,3024 :: 		Lcd_chr (2,7, 1);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3025 :: 		armazena_pos_inimigo1 = 0b00000110;
	MOVLW       6
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3026 :: 		testa_inimigo2 =  0b00000111;
	MOVLW       7
	MOVWF       _testa_inimigo2+0 
;MyProject.c,3028 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3029 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3031 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3032 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41878
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41878:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4840
;MyProject.c,3033 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,3034 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,3035 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,3036 :: 		}
L_ataque_4840:
;MyProject.c,3045 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4841
;MyProject.c,3046 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4842
;MyProject.c,3047 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3048 :: 		}
	GOTO        L_ataque_4843
L_ataque_4842:
;MyProject.c,3050 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4846
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4846
L__ataque_41611:
;MyProject.c,3051 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3052 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3053 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3054 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_4846:
L_ataque_4843:
;MyProject.c,3056 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3057 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41879
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41879:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41610
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41610
	GOTO        L_ataque_4849
L__ataque_41610:
;MyProject.c,3058 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4849:
;MyProject.c,3059 :: 		}
L_ataque_4841:
;MyProject.c,3060 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4850:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4850
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4850
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4850
	NOP
	NOP
;MyProject.c,3061 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,3063 :: 		case 11:
L_ataque_4851:
;MyProject.c,3064 :: 		Lcd_chr (2,6, 1);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3065 :: 		armazena_pos_inimigo1 = 0b00000101;
	MOVLW       5
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3066 :: 		testa_inimigo2 =  0b00000110;
	MOVLW       6
	MOVWF       _testa_inimigo2+0 
;MyProject.c,3068 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3069 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3071 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3072 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41880
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41880:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4852
;MyProject.c,3073 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,3074 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,3075 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,3076 :: 		}
L_ataque_4852:
;MyProject.c,3085 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4853
;MyProject.c,3086 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4854
;MyProject.c,3087 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3088 :: 		}
	GOTO        L_ataque_4855
L_ataque_4854:
;MyProject.c,3090 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4858
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4858
L__ataque_41609:
;MyProject.c,3091 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3092 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3093 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3095 :: 		}  //testa se usuario pediu para ser lançado um tiro
L_ataque_4858:
L_ataque_4855:
;MyProject.c,3097 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3098 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 1){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41881
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41881:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41608
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41608
	GOTO        L_ataque_4861
L__ataque_41608:
;MyProject.c,3099 :: 		i = 15;                                  }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4861:
;MyProject.c,3100 :: 		}
L_ataque_4853:
;MyProject.c,3101 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4862:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4862
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4862
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4862
	NOP
	NOP
;MyProject.c,3102 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,3104 :: 		case 12:
L_ataque_4863:
;MyProject.c,3105 :: 		Lcd_chr (2,5, 1);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3106 :: 		armazena_pos_inimigo1 = 0b00000100;
	MOVLW       4
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3107 :: 		testa_inimigo2 =  0b00000101;
	MOVLW       5
	MOVWF       _testa_inimigo2+0 
;MyProject.c,3109 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3110 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3112 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3113 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41882
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41882:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4864
;MyProject.c,3114 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,3115 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,3116 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,3117 :: 		}
L_ataque_4864:
;MyProject.c,3126 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4865
;MyProject.c,3127 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4866
;MyProject.c,3128 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3129 :: 		}
	GOTO        L_ataque_4867
L_ataque_4866:
;MyProject.c,3131 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4870
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4870
L__ataque_41607:
;MyProject.c,3132 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3133 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3134 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3135 :: 		}//testa se usuario pediu para ser lançado um tiro
L_ataque_4870:
L_ataque_4867:
;MyProject.c,3137 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3138 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41883
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41883:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41606
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41606
	GOTO        L_ataque_4873
L__ataque_41606:
;MyProject.c,3139 :: 		i = 15;                                             }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4873:
;MyProject.c,3141 :: 		}
L_ataque_4865:
;MyProject.c,3142 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4874:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4874
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4874
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4874
	NOP
	NOP
;MyProject.c,3143 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,3145 :: 		case 13:
L_ataque_4875:
;MyProject.c,3146 :: 		Lcd_chr (2,4, 1);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3147 :: 		armazena_pos_inimigo1 = 0b00000011;
	MOVLW       3
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3148 :: 		testa_inimigo2 =  0b00000100;
	MOVLW       4
	MOVWF       _testa_inimigo2+0 
;MyProject.c,3150 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3151 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3153 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3154 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41884
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41884:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4876
;MyProject.c,3155 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,3156 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,3157 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,3158 :: 		}
L_ataque_4876:
;MyProject.c,3167 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4877
;MyProject.c,3168 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4878
;MyProject.c,3169 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3170 :: 		}
	GOTO        L_ataque_4879
L_ataque_4878:
;MyProject.c,3172 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4882
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4882
L__ataque_41605:
;MyProject.c,3173 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3174 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3175 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3176 :: 		}   //testa se usuario pediu para ser lançado um tiro
L_ataque_4882:
L_ataque_4879:
;MyProject.c,3178 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3179 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41885
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41885:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41604
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41604
	GOTO        L_ataque_4885
L__ataque_41604:
;MyProject.c,3180 :: 		i = 15;                                        }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4885:
;MyProject.c,3181 :: 		}
L_ataque_4877:
;MyProject.c,3182 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4886:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4886
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4886
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4886
	NOP
	NOP
;MyProject.c,3183 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,3185 :: 		case 14:
L_ataque_4887:
;MyProject.c,3186 :: 		Lcd_chr (2,3, 1);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3187 :: 		armazena_pos_inimigo1 = 0b00000010;
	MOVLW       2
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3188 :: 		testa_inimigo2 =  0b00000011;
	MOVLW       3
	MOVWF       _testa_inimigo2+0 
;MyProject.c,3189 :: 		pos_inimigo_final = 0b000000010;
	MOVLW       2
	MOVWF       _pos_inimigo_final+0 
;MyProject.c,3191 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3192 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3194 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3195 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41886
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41886:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4888
;MyProject.c,3196 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,3197 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,3198 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,3199 :: 		}
L_ataque_4888:
;MyProject.c,3208 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4889
;MyProject.c,3209 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4890
;MyProject.c,3210 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3211 :: 		}
	GOTO        L_ataque_4891
L_ataque_4890:
;MyProject.c,3213 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4894
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4894
L__ataque_41603:
;MyProject.c,3214 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3215 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3216 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3217 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_4894:
L_ataque_4891:
;MyProject.c,3219 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3220 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41887
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41887:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41602
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41602
	GOTO        L_ataque_4897
L__ataque_41602:
;MyProject.c,3221 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
L_ataque_4897:
;MyProject.c,3222 :: 		}
L_ataque_4889:
;MyProject.c,3223 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4898:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4898
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4898
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4898
	NOP
	NOP
;MyProject.c,3224 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,3226 :: 		case 15:
L_ataque_4899:
;MyProject.c,3227 :: 		Lcd_chr (2,2, 1);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3228 :: 		armazena_pos_inimigo1 = 0b00000001;
	MOVLW       1
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3229 :: 		testa_inimigo2 =  0b00000010;
	MOVLW       2
	MOVWF       _testa_inimigo2+0 
;MyProject.c,3230 :: 		pos_inimigo_final = 0b00000001;
	MOVLW       1
	MOVWF       _pos_inimigo_final+0 
;MyProject.c,3232 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3233 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3235 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3236 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41888
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41888:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4900
;MyProject.c,3237 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
;MyProject.c,3238 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,3239 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_4_explode_nave_L0+0 
;MyProject.c,3240 :: 		}
L_ataque_4900:
;MyProject.c,3249 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4901
;MyProject.c,3250 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4902
;MyProject.c,3251 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3252 :: 		}
	GOTO        L_ataque_4903
L_ataque_4902:
;MyProject.c,3254 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4906
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4906
L__ataque_41601:
;MyProject.c,3255 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3256 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3257 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3258 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_4906:
L_ataque_4903:
;MyProject.c,3260 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3261 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41889
	MOVLW       1
	XORWF       R0, 0 
L__ataque_41889:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41600
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_41600
	GOTO        L_ataque_4909
L__ataque_41600:
;MyProject.c,3262 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_4_i_L0+0 
	MOVLW       0
	MOVWF       ataque_4_i_L0+1 
	GOTO        L_ataque_4910
L_ataque_4909:
;MyProject.c,3265 :: 		else  if (pos_inimigo_final == 0b00000001) {
	MOVF        _pos_inimigo_final+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_4911
;MyProject.c,3266 :: 		GameOver();    }
	CALL        _GameOver+0, 0
L_ataque_4911:
L_ataque_4910:
;MyProject.c,3267 :: 		}
L_ataque_4901:
;MyProject.c,3268 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_4912:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_4912
	DECFSZ      R12, 1, 1
	BRA         L_ataque_4912
	DECFSZ      R11, 1, 1
	BRA         L_ataque_4912
	NOP
	NOP
;MyProject.c,3269 :: 		break;
	GOTO        L_ataque_4736
;MyProject.c,3271 :: 		}
L_ataque_4735:
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41890
	MOVLW       1
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41890:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4737
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41891
	MOVLW       2
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41891:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4743
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41892
	MOVLW       3
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41892:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4755
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41893
	MOVLW       4
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41893:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4767
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41894
	MOVLW       5
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41894:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4779
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41895
	MOVLW       6
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41895:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4791
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41896
	MOVLW       7
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41896:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4803
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41897
	MOVLW       8
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41897:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4815
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41898
	MOVLW       9
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41898:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4827
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41899
	MOVLW       10
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41899:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4839
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41900
	MOVLW       11
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41900:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4851
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41901
	MOVLW       12
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41901:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4863
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41902
	MOVLW       13
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41902:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4875
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41903
	MOVLW       14
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41903:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4887
	MOVLW       0
	XORWF       ataque_4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_41904
	MOVLW       15
	XORWF       ataque_4_i_L0+0, 0 
L__ataque_41904:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_4899
L_ataque_4736:
;MyProject.c,3272 :: 		i++;
	INFSNZ      ataque_4_i_L0+0, 1 
	INCF        ataque_4_i_L0+1, 1 
;MyProject.c,3273 :: 		}
	GOTO        L_ataque_4733
L_ataque_4734:
;MyProject.c,3275 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;MyProject.c,3277 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;MyProject.c,3278 :: 		testa_inimigo2 = 0b00000000;
	CLRF        _testa_inimigo2+0 
;MyProject.c,3279 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;MyProject.c,3280 :: 		armazena_pos_inimigo1 = 0b00000000;
	CLRF        _armazena_pos_inimigo1+0 
;MyProject.c,3281 :: 		armazena_pos_inimigo2 = 0b00000000;
	CLRF        _armazena_pos_inimigo2+0 
;MyProject.c,3282 :: 		armazena_pos_inimigo3 = 0b00000000;
	CLRF        _armazena_pos_inimigo3+0 
;MyProject.c,3283 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;MyProject.c,3284 :: 		testa_primeira_explosao = 0b00000000;
	CLRF        _testa_primeira_explosao+0 
;MyProject.c,3285 :: 		explode_nave = 0b00000000;
	CLRF        ataque_4_explode_nave_L0+0 
;MyProject.c,3286 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,3287 :: 		especial = 0;
	CLRF        _especial+0 
;MyProject.c,3289 :: 		}
L_end_ataque_4:
	RETURN      0
; end of _ataque_4

_ataque_5:

;MyProject.c,3296 :: 		void ataque_5 (){
;MyProject.c,3298 :: 		int i = 0b00000000;                                         //contador posicao nave_inimigo
	CLRF        ataque_5_i_L0+0 
	CLRF        ataque_5_i_L0+1 
	CLRF        ataque_5_explode_nave_L0+0 
;MyProject.c,3304 :: 		while (i<16)     {                                                            //execução rotina principal - andar naves
L_ataque_5913:
	MOVLW       128
	XORWF       ataque_5_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51906
	MOVLW       16
	SUBWF       ataque_5_i_L0+0, 0 
L__ataque_51906:
	BTFSC       STATUS+0, 0 
	GOTO        L_ataque_5914
;MyProject.c,3306 :: 		linha1 = 0b00000001;
	MOVLW       1
	MOVWF       _linha1+0 
;MyProject.c,3307 :: 		Lcd_Cmd(_LCD_CLEAR);                                                  //onde será escrito o caracter de explosão de nave
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,3308 :: 		Chama_Enterprise();                                                   //Chama nave_principal
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3310 :: 		switch (i) {
	GOTO        L_ataque_5915
;MyProject.c,3312 :: 		case 1:
L_ataque_5917:
;MyProject.c,3313 :: 		Lcd_chr (1,16, 1);                                    //Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3314 :: 		armazena_pos_inimigo1 = 0b00001111;                   //Armazena posicao do inimigo para teste posterior
	MOVLW       15
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3315 :: 		testa_inimigo1 = 0b00010000;                          //Atribui valor 16 para a variável
	MOVLW       16
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3316 :: 		Chama_Enterprise();                                   //Chama ultima posicao de nave principal na tela
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3318 :: 		if ((button(&PORTD, 2, 200, 1))){                     //Se o bit 2 do portd estiver pressionado
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5918
;MyProject.c,3319 :: 		store_tiro = posicao_nave;           //armazena na variavel a posicao da nave
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3320 :: 		nave_tiro();                         //testa se usuario pediu para ser lançado um tiro
	CALL        _nave_tiro+0, 0
;MyProject.c,3321 :: 		testa_tiro = 0b00000001;             //atribui 1 a testa_tiro
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3322 :: 		}
L_ataque_5918:
;MyProject.c,3330 :: 		testa = Testa_Tiro_Inimigo();                                         //chama a funcao testa_tiro, de modo que se coincidir, explode a nave
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3332 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)  {  //se a variável testa for = 1 e testa_primeira_explosao = 1
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51907
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51907:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51657
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51657
	GOTO        L_ataque_5921
L__ataque_51657:
;MyProject.c,3333 :: 		i = 15;        }                                         //i = 15, de modo que saia do for
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_5921:
;MyProject.c,3335 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_5922:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_5922
	DECFSZ      R12, 1, 1
	BRA         L_ataque_5922
	DECFSZ      R11, 1, 1
	BRA         L_ataque_5922
	NOP
	NOP
;MyProject.c,3336 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3338 :: 		case 2:
L_ataque_5923:
;MyProject.c,3340 :: 		armazena_pos_inimigo1 = 0b00001110;             //armazena posicao do inimigo para atualizar a tela
	MOVLW       14
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3341 :: 		testa_inimigo1 = 0b0001111;                     //armazena posicao inimigo para teste em colisao com tiro
	MOVLW       15
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3343 :: 		Chama_Enterprise();                            //Chama ultima posicao de nave principal na tela
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3344 :: 		escreve_enterprise();                          //Testa se usuario quer mudar nave principal
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3346 :: 		testa = Testa_Tiro_Inimigo();                  //recebe valor da funcao de teste tiro
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3347 :: 		if (testa == 0b00000001){                      //se a função for = 1, armazena 15 no i
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51908
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51908:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5924
;MyProject.c,3348 :: 		i = 15;                          //linha1 = 0 (reseta variável)
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3349 :: 		linha1 = 0b00000000;             //explode_nave = 1 e sai do for
	CLRF        _linha1+0 
;MyProject.c,3350 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
;MyProject.c,3351 :: 		}
L_ataque_5924:
;MyProject.c,3360 :: 		if (explode_nave == 0b00000000){                            //se variavel for = 0 (testada anteriormente)
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5925
;MyProject.c,3361 :: 		testa = Testa_Tiro_Inimigo();                   //recebe posicao da funcao
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3363 :: 		if (testa_tiro == 0b00000001){                  //Testa se tiro = 1, e dessa forma executa a função tiro sem
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5926
;MyProject.c,3364 :: 		nave_tiro();                           //que o usuario pressione o botao
	CALL        _nave_tiro+0, 0
;MyProject.c,3365 :: 		}
	GOTO        L_ataque_5927
L_ataque_5926:
;MyProject.c,3367 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){          //se pressinado
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5930
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5930
L__ataque_51656:
;MyProject.c,3368 :: 		store_tiro = posicao_nave;           //store_posicao recebe posicao da nave
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3369 :: 		nave_tiro();                         //chama funcao do tiro
	CALL        _nave_tiro+0, 0
;MyProject.c,3370 :: 		testa_tiro = 0b00000001;             //atribiui 1 a variável testa_tiro na função de chamar tiro
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3371 :: 		}                //testa se usuario pediu para ser lançado um tiro
L_ataque_5930:
L_ataque_5927:
;MyProject.c,3373 :: 		testa = Testa_Tiro_Inimigo();                                         //recebe o valor da variavel Testa_Tiro_Inimigo à variavel testa
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3374 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){    //se testa for 1 OU testa_primeira_explosao for 1, atribui 15 ao i e sai do for
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51909
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51909:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51655
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51655
	GOTO        L_ataque_5933
L__ataque_51655:
;MyProject.c,3375 :: 		i = 15;                                                 //Segue mesma linha de raciocínio nos casos seguintes
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3376 :: 		}
L_ataque_5933:
;MyProject.c,3377 :: 		}
L_ataque_5925:
;MyProject.c,3378 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_5934:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_5934
	DECFSZ      R12, 1, 1
	BRA         L_ataque_5934
	DECFSZ      R11, 1, 1
	BRA         L_ataque_5934
	NOP
	NOP
;MyProject.c,3379 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3381 :: 		case 3:
L_ataque_5935:
;MyProject.c,3383 :: 		armazena_pos_inimigo1 = 0b00001101;
	MOVLW       13
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3384 :: 		testa_inimigo1 = 0b00001110;
	MOVLW       14
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3386 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3387 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3389 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3390 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51910
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51910:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5936
;MyProject.c,3391 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3392 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3393 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
;MyProject.c,3394 :: 		}
L_ataque_5936:
;MyProject.c,3403 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5937
;MyProject.c,3404 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5938
;MyProject.c,3405 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3406 :: 		}
	GOTO        L_ataque_5939
L_ataque_5938:
;MyProject.c,3408 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5942
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5942
L__ataque_51654:
;MyProject.c,3409 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3410 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3411 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3412 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_5942:
L_ataque_5939:
;MyProject.c,3414 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3415 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51911
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51911:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51653
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51653
	GOTO        L_ataque_5945
L__ataque_51653:
;MyProject.c,3416 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_5945:
;MyProject.c,3417 :: 		}
L_ataque_5937:
;MyProject.c,3418 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_5946:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_5946
	DECFSZ      R12, 1, 1
	BRA         L_ataque_5946
	DECFSZ      R11, 1, 1
	BRA         L_ataque_5946
	NOP
	NOP
;MyProject.c,3419 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3421 :: 		case 4:
L_ataque_5947:
;MyProject.c,3422 :: 		Lcd_chr (1,13, 1);                              // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3423 :: 		armazena_pos_inimigo1 = 0b00001100;
	MOVLW       12
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3424 :: 		testa_inimigo1 = 0b00001101;
	MOVLW       13
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3426 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3427 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3429 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3430 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51912
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51912:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5948
;MyProject.c,3431 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3432 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3433 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
;MyProject.c,3434 :: 		}
L_ataque_5948:
;MyProject.c,3442 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5949
;MyProject.c,3443 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5950
;MyProject.c,3444 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3445 :: 		}
	GOTO        L_ataque_5951
L_ataque_5950:
;MyProject.c,3447 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5954
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5954
L__ataque_51652:
;MyProject.c,3448 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3449 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3450 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3451 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_5954:
L_ataque_5951:
;MyProject.c,3453 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3454 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51913
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51913:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51651
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51651
	GOTO        L_ataque_5957
L__ataque_51651:
;MyProject.c,3455 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_5957:
;MyProject.c,3456 :: 		}
L_ataque_5949:
;MyProject.c,3457 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_5958:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_5958
	DECFSZ      R12, 1, 1
	BRA         L_ataque_5958
	DECFSZ      R11, 1, 1
	BRA         L_ataque_5958
	NOP
	NOP
;MyProject.c,3458 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3460 :: 		case 5:
L_ataque_5959:
;MyProject.c,3462 :: 		armazena_pos_inimigo1 = 0b00001011;
	MOVLW       11
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3463 :: 		testa_inimigo1 = 0b00001100;
	MOVLW       12
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3465 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3466 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3468 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3469 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51914
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51914:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5960
;MyProject.c,3470 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3471 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3472 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
L_ataque_5960:
;MyProject.c,3481 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5961
;MyProject.c,3482 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5962
;MyProject.c,3483 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3484 :: 		}
	GOTO        L_ataque_5963
L_ataque_5962:
;MyProject.c,3486 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5966
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5966
L__ataque_51650:
;MyProject.c,3487 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3488 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3489 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3490 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_5966:
L_ataque_5963:
;MyProject.c,3491 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3492 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51915
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51915:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51649
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51649
	GOTO        L_ataque_5969
L__ataque_51649:
;MyProject.c,3493 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_5969:
;MyProject.c,3494 :: 		}
L_ataque_5961:
;MyProject.c,3495 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_5970:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_5970
	DECFSZ      R12, 1, 1
	BRA         L_ataque_5970
	DECFSZ      R11, 1, 1
	BRA         L_ataque_5970
	NOP
	NOP
;MyProject.c,3496 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3498 :: 		case 6:
L_ataque_5971:
;MyProject.c,3499 :: 		Lcd_chr (1,11, 1);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3500 :: 		armazena_pos_inimigo1 = 0b00001010;
	MOVLW       10
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3501 :: 		testa_inimigo1 =  0b00001011;
	MOVLW       11
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3503 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3504 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3506 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3507 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51916
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51916:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5972
;MyProject.c,3508 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3509 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3510 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
L_ataque_5972:
;MyProject.c,3519 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5973
;MyProject.c,3520 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5974
;MyProject.c,3521 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3522 :: 		}
	GOTO        L_ataque_5975
L_ataque_5974:
;MyProject.c,3524 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5978
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5978
L__ataque_51648:
;MyProject.c,3525 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3526 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3527 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3528 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_5978:
L_ataque_5975:
;MyProject.c,3529 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3530 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51917
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51917:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51647
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51647
	GOTO        L_ataque_5981
L__ataque_51647:
;MyProject.c,3531 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_5981:
;MyProject.c,3532 :: 		}
L_ataque_5973:
;MyProject.c,3533 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_5982:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_5982
	DECFSZ      R12, 1, 1
	BRA         L_ataque_5982
	DECFSZ      R11, 1, 1
	BRA         L_ataque_5982
	NOP
	NOP
;MyProject.c,3534 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3536 :: 		case 7:
L_ataque_5983:
;MyProject.c,3537 :: 		Lcd_chr (1,10, 1);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3538 :: 		armazena_pos_inimigo1 = 0b00001001;
	MOVLW       9
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3539 :: 		testa_inimigo1 =  0b00001010;
	MOVLW       10
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3541 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3542 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3544 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3545 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51918
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51918:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5984
;MyProject.c,3546 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3547 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3548 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
L_ataque_5984:
;MyProject.c,3557 :: 		if (explode_nave == 0){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5985
;MyProject.c,3558 :: 		if (testa_tiro == 1){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5986
;MyProject.c,3559 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3560 :: 		}
	GOTO        L_ataque_5987
L_ataque_5986:
;MyProject.c,3562 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5990
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5990
L__ataque_51646:
;MyProject.c,3563 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3564 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3565 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3566 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_5990:
L_ataque_5987:
;MyProject.c,3568 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3569 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51919
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51919:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51645
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51645
	GOTO        L_ataque_5993
L__ataque_51645:
;MyProject.c,3570 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_5993:
;MyProject.c,3572 :: 		}
L_ataque_5985:
;MyProject.c,3573 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_5994:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_5994
	DECFSZ      R12, 1, 1
	BRA         L_ataque_5994
	DECFSZ      R11, 1, 1
	BRA         L_ataque_5994
	NOP
	NOP
;MyProject.c,3574 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3576 :: 		case 8:
L_ataque_5995:
;MyProject.c,3578 :: 		armazena_pos_inimigo1 = 0b00001000;
	MOVLW       8
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3579 :: 		testa_inimigo1 =  0b00001001;
	MOVLW       9
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3581 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3582 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3584 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3585 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51920
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51920:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5996
;MyProject.c,3586 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3587 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3588 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
L_ataque_5996:
;MyProject.c,3597 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5997
;MyProject.c,3598 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_5998
;MyProject.c,3599 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3600 :: 		}
	GOTO        L_ataque_5999
L_ataque_5998:
;MyProject.c,3602 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51002
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51002
L__ataque_51644:
;MyProject.c,3603 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3604 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3605 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3606 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_51002:
L_ataque_5999:
;MyProject.c,3608 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3609 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51921
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51921:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51643
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51643
	GOTO        L_ataque_51005
L__ataque_51643:
;MyProject.c,3610 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_51005:
;MyProject.c,3611 :: 		}
L_ataque_5997:
;MyProject.c,3612 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_51006:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_51006
	DECFSZ      R12, 1, 1
	BRA         L_ataque_51006
	DECFSZ      R11, 1, 1
	BRA         L_ataque_51006
	NOP
	NOP
;MyProject.c,3613 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3615 :: 		case 9:
L_ataque_51007:
;MyProject.c,3616 :: 		Lcd_chr (1,8, 1);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3617 :: 		armazena_pos_inimigo1 = 0b00000111;
	MOVLW       7
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3618 :: 		testa_inimigo1 =  0b00001000;
	MOVLW       8
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3620 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3621 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3623 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3624 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51922
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51922:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51008
;MyProject.c,3625 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3626 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3627 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
L_ataque_51008:
;MyProject.c,3636 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51009
;MyProject.c,3637 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51010
;MyProject.c,3638 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3639 :: 		}
	GOTO        L_ataque_51011
L_ataque_51010:
;MyProject.c,3641 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51014
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51014
L__ataque_51642:
;MyProject.c,3642 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3643 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3644 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3645 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_51014:
L_ataque_51011:
;MyProject.c,3647 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3648 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51923
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51923:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51641
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51641
	GOTO        L_ataque_51017
L__ataque_51641:
;MyProject.c,3649 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_51017:
;MyProject.c,3650 :: 		}
L_ataque_51009:
;MyProject.c,3651 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_51018:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_51018
	DECFSZ      R12, 1, 1
	BRA         L_ataque_51018
	DECFSZ      R11, 1, 1
	BRA         L_ataque_51018
	NOP
	NOP
;MyProject.c,3652 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3654 :: 		case 10:
L_ataque_51019:
;MyProject.c,3655 :: 		Lcd_chr (1,7, 1);                                // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3656 :: 		armazena_pos_inimigo1 = 0b00000110;
	MOVLW       6
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3657 :: 		testa_inimigo1 =  0b00000111;
	MOVLW       7
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3659 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3660 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3662 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3663 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51924
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51924:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51020
;MyProject.c,3664 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3665 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3666 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
L_ataque_51020:
;MyProject.c,3675 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51021
;MyProject.c,3676 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51022
;MyProject.c,3677 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3678 :: 		}
	GOTO        L_ataque_51023
L_ataque_51022:
;MyProject.c,3680 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51026
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51026
L__ataque_51640:
;MyProject.c,3681 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3682 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3683 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3684 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_51026:
L_ataque_51023:
;MyProject.c,3686 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3687 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51925
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51925:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51639
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51639
	GOTO        L_ataque_51029
L__ataque_51639:
;MyProject.c,3688 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_51029:
;MyProject.c,3689 :: 		}
L_ataque_51021:
;MyProject.c,3690 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_51030:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_51030
	DECFSZ      R12, 1, 1
	BRA         L_ataque_51030
	DECFSZ      R11, 1, 1
	BRA         L_ataque_51030
	NOP
	NOP
;MyProject.c,3691 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3693 :: 		case 11:
L_ataque_51031:
;MyProject.c,3695 :: 		armazena_pos_inimigo1 = 0b00000101;
	MOVLW       5
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3696 :: 		testa_inimigo1 =  0b00000110;
	MOVLW       6
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3698 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3699 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3701 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3702 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51926
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51926:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51032
;MyProject.c,3703 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3704 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3705 :: 		explode_nave = 0b00000001; }
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
L_ataque_51032:
;MyProject.c,3714 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51033
;MyProject.c,3715 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51034
;MyProject.c,3716 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3717 :: 		}
	GOTO        L_ataque_51035
L_ataque_51034:
;MyProject.c,3719 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51038
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51038
L__ataque_51638:
;MyProject.c,3720 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3721 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3722 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3723 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_51038:
L_ataque_51035:
;MyProject.c,3725 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3726 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51927
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51927:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51637
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51637
	GOTO        L_ataque_51041
L__ataque_51637:
;MyProject.c,3727 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_51041:
;MyProject.c,3728 :: 		}
L_ataque_51033:
;MyProject.c,3729 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_51042:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_51042
	DECFSZ      R12, 1, 1
	BRA         L_ataque_51042
	DECFSZ      R11, 1, 1
	BRA         L_ataque_51042
	NOP
	NOP
;MyProject.c,3730 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3732 :: 		case 12:
L_ataque_51043:
;MyProject.c,3734 :: 		armazena_pos_inimigo1 = 0b00000100;
	MOVLW       4
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3735 :: 		testa_inimigo1 =  0b00000101;
	MOVLW       5
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3737 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3738 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3740 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3741 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51928
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51928:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51044
;MyProject.c,3742 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3743 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3744 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
;MyProject.c,3745 :: 		}
L_ataque_51044:
;MyProject.c,3754 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51045
;MyProject.c,3755 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51046
;MyProject.c,3756 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3757 :: 		}
	GOTO        L_ataque_51047
L_ataque_51046:
;MyProject.c,3759 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51050
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51050
L__ataque_51636:
;MyProject.c,3760 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3761 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3762 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3763 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_51050:
L_ataque_51047:
;MyProject.c,3765 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3766 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51929
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51929:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51635
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51635
	GOTO        L_ataque_51053
L__ataque_51635:
;MyProject.c,3767 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_51053:
;MyProject.c,3768 :: 		}
L_ataque_51045:
;MyProject.c,3769 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_51054:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_51054
	DECFSZ      R12, 1, 1
	BRA         L_ataque_51054
	DECFSZ      R11, 1, 1
	BRA         L_ataque_51054
	NOP
	NOP
;MyProject.c,3770 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3772 :: 		case 13:
L_ataque_51055:
;MyProject.c,3773 :: 		Lcd_chr (1,4, 1);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3774 :: 		armazena_pos_inimigo1 = 0b00000011;
	MOVLW       3
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3775 :: 		testa_inimigo1 =  0b00000100;
	MOVLW       4
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3777 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3778 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3780 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3781 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51930
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51930:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51056
;MyProject.c,3782 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3783 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3784 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
;MyProject.c,3785 :: 		}
L_ataque_51056:
;MyProject.c,3794 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51057
;MyProject.c,3796 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51058
;MyProject.c,3797 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3798 :: 		}
	GOTO        L_ataque_51059
L_ataque_51058:
;MyProject.c,3800 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51062
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51062
L__ataque_51634:
;MyProject.c,3801 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3802 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3803 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3804 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_51062:
L_ataque_51059:
;MyProject.c,3806 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3807 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51931
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51931:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51633
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51633
	GOTO        L_ataque_51065
L__ataque_51633:
;MyProject.c,3808 :: 		i = 15;                                             }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_51065:
;MyProject.c,3809 :: 		}
L_ataque_51057:
;MyProject.c,3810 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_51066:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_51066
	DECFSZ      R12, 1, 1
	BRA         L_ataque_51066
	DECFSZ      R11, 1, 1
	BRA         L_ataque_51066
	NOP
	NOP
;MyProject.c,3811 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3813 :: 		case 14:
L_ataque_51067:
;MyProject.c,3814 :: 		Lcd_chr (1,3, 1);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3815 :: 		armazena_pos_inimigo1 = 0b00000010;
	MOVLW       2
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3816 :: 		testa_inimigo1 =  0b00000011;
	MOVLW       3
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3818 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3819 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3821 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3822 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51932
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51932:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51068
;MyProject.c,3823 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3824 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3825 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
;MyProject.c,3826 :: 		}
L_ataque_51068:
;MyProject.c,3835 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51069
;MyProject.c,3837 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51070
;MyProject.c,3838 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3839 :: 		}
	GOTO        L_ataque_51071
L_ataque_51070:
;MyProject.c,3841 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51074
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51074
L__ataque_51632:
;MyProject.c,3842 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3843 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3844 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3845 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_51074:
L_ataque_51071:
;MyProject.c,3847 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3848 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51933
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51933:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51631
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51631
	GOTO        L_ataque_51077
L__ataque_51631:
;MyProject.c,3849 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
L_ataque_51077:
;MyProject.c,3850 :: 		}
L_ataque_51069:
;MyProject.c,3852 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_51078:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_51078
	DECFSZ      R12, 1, 1
	BRA         L_ataque_51078
	DECFSZ      R11, 1, 1
	BRA         L_ataque_51078
	NOP
	NOP
;MyProject.c,3853 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3856 :: 		case 15:
L_ataque_51079:
;MyProject.c,3857 :: 		Lcd_chr (1,2, 1);                               // Nave Inimiga I
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3858 :: 		armazena_pos_inimigo1 = 0b00000001;
	MOVLW       1
	MOVWF       _armazena_pos_inimigo1+0 
;MyProject.c,3859 :: 		testa_inimigo1 =  0b00000010;
	MOVLW       2
	MOVWF       _testa_inimigo1+0 
;MyProject.c,3860 :: 		pos_inimigo_final = 0b00000001;
	MOVLW       1
	MOVWF       _pos_inimigo_final+0 
;MyProject.c,3862 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3863 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3865 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3866 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51934
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51934:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51080
;MyProject.c,3867 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
;MyProject.c,3868 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3869 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_5_explode_nave_L0+0 
;MyProject.c,3870 :: 		}
L_ataque_51080:
;MyProject.c,3879 :: 		if (explode_nave == 0){
	MOVF        ataque_5_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51081
;MyProject.c,3881 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51082
;MyProject.c,3882 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3883 :: 		}
	GOTO        L_ataque_51083
L_ataque_51082:
;MyProject.c,3885 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51086
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51086
L__ataque_51630:
;MyProject.c,3886 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3887 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3888 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3889 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_51086:
L_ataque_51083:
;MyProject.c,3891 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3892 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51935
	MOVLW       1
	XORWF       R0, 0 
L__ataque_51935:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51629
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_51629
	GOTO        L_ataque_51089
L__ataque_51629:
;MyProject.c,3893 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_5_i_L0+0 
	MOVLW       0
	MOVWF       ataque_5_i_L0+1 
	GOTO        L_ataque_51090
L_ataque_51089:
;MyProject.c,3895 :: 		else  if (pos_inimigo_final == 0b00000001) {
	MOVF        _pos_inimigo_final+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_51091
;MyProject.c,3896 :: 		GameOver();    }
	CALL        _GameOver+0, 0
L_ataque_51091:
L_ataque_51090:
;MyProject.c,3897 :: 		}
L_ataque_51081:
;MyProject.c,3898 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_ataque_51092:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_51092
	DECFSZ      R12, 1, 1
	BRA         L_ataque_51092
	DECFSZ      R11, 1, 1
	BRA         L_ataque_51092
	NOP
	NOP
;MyProject.c,3899 :: 		break;
	GOTO        L_ataque_5916
;MyProject.c,3900 :: 		}
L_ataque_5915:
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51936
	MOVLW       1
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51936:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5917
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51937
	MOVLW       2
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51937:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5923
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51938
	MOVLW       3
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51938:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5935
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51939
	MOVLW       4
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51939:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5947
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51940
	MOVLW       5
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51940:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5959
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51941
	MOVLW       6
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51941:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5971
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51942
	MOVLW       7
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51942:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5983
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51943
	MOVLW       8
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51943:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_5995
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51944
	MOVLW       9
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51944:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51007
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51945
	MOVLW       10
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51945:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51019
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51946
	MOVLW       11
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51946:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51031
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51947
	MOVLW       12
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51947:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51043
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51948
	MOVLW       13
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51948:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51055
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51949
	MOVLW       14
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51949:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51067
	MOVLW       0
	XORWF       ataque_5_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_51950
	MOVLW       15
	XORWF       ataque_5_i_L0+0, 0 
L__ataque_51950:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_51079
L_ataque_5916:
;MyProject.c,3901 :: 		i++;
	INFSNZ      ataque_5_i_L0+0, 1 
	INCF        ataque_5_i_L0+1, 1 
;MyProject.c,3902 :: 		}
	GOTO        L_ataque_5913
L_ataque_5914:
;MyProject.c,3904 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;MyProject.c,3905 :: 		armazena_pos_inimigo1 = 0b00000000;
	CLRF        _armazena_pos_inimigo1+0 
;MyProject.c,3906 :: 		armazena_pos_inimigo2 = 0b00000000;
	CLRF        _armazena_pos_inimigo2+0 
;MyProject.c,3907 :: 		armazena_pos_inimigo3 = 0b00000000;
	CLRF        _armazena_pos_inimigo3+0 
;MyProject.c,3908 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;MyProject.c,3909 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;MyProject.c,3910 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;MyProject.c,3912 :: 		testa_inimigo1 = 0b00000000;
	CLRF        _testa_inimigo1+0 
;MyProject.c,3913 :: 		testa_primeira_explosao = 0b00000000;
	CLRF        _testa_primeira_explosao+0 
;MyProject.c,3914 :: 		explode_nave = 0b00000000;
	CLRF        ataque_5_explode_nave_L0+0 
;MyProject.c,3915 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;MyProject.c,3917 :: 		}
L_end_ataque_5:
	RETURN      0
; end of _ataque_5

_ataque_6:

;MyProject.c,3926 :: 		void ataque_6 (){
;MyProject.c,3928 :: 		int i = 0b00000000;                                         //contador posicao nave_inimigo
	CLRF        ataque_6_i_L0+0 
	CLRF        ataque_6_i_L0+1 
	CLRF        ataque_6_explode_nave_L0+0 
;MyProject.c,3933 :: 		while (i<16)     {                                                 //execução rotina principal - andar naves
L_ataque_61093:
	MOVLW       128
	XORWF       ataque_6_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61952
	MOVLW       16
	SUBWF       ataque_6_i_L0+0, 0 
L__ataque_61952:
	BTFSC       STATUS+0, 0 
	GOTO        L_ataque_61094
;MyProject.c,3935 :: 		linha2 = 0b00000010;
	MOVLW       2
	MOVWF       _linha2+0 
;MyProject.c,3936 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,3937 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3939 :: 		switch (i) {
	GOTO        L_ataque_61095
;MyProject.c,3941 :: 		case 1:
L_ataque_61097:
;MyProject.c,3942 :: 		Lcd_chr (2,16, 6);                               //Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3943 :: 		armazena_pos_inimigo3 = 0b00001111;
	MOVLW       15
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,3944 :: 		testa_inimigo2 =  0b00010000;
	MOVLW       16
	MOVWF       _testa_inimigo2+0 
;MyProject.c,3946 :: 		if ((button(&PORTD, 2, 200, 1))){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61098
;MyProject.c,3947 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3948 :: 		nave_tiro();                   //testa se usuario pediu para ser lançado um tiro
	CALL        _nave_tiro+0, 0
;MyProject.c,3949 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3950 :: 		}
L_ataque_61098:
;MyProject.c,3959 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3960 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61953
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61953:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61686
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61686
	GOTO        L_ataque_61101
L__ataque_61686:
;MyProject.c,3961 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61101:
;MyProject.c,3963 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61102:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61102
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61102
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61102
	NOP
	NOP
;MyProject.c,3964 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,3966 :: 		case 2:
L_ataque_61103:
;MyProject.c,3967 :: 		Lcd_chr (2,15, 6);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,3968 :: 		armazena_pos_inimigo3 = 0b00001110;
	MOVLW       14
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,3969 :: 		testa_inimigo2 =  0b00001111;
	MOVLW       15
	MOVWF       _testa_inimigo2+0 
;MyProject.c,3971 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,3972 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,3974 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,3975 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61954
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61954:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61104
;MyProject.c,3976 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,3977 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,3978 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,3979 :: 		}
L_ataque_61104:
;MyProject.c,3988 :: 		if (explode_nave == 0){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61105
;MyProject.c,3989 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61106
;MyProject.c,3990 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3991 :: 		}
	GOTO        L_ataque_61107
L_ataque_61106:
;MyProject.c,3993 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61110
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61110
L__ataque_61685:
;MyProject.c,3994 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,3995 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,3996 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,3997 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_61110:
L_ataque_61107:
;MyProject.c,3999 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4000 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61955
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61955:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61684
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61684
	GOTO        L_ataque_61113
L__ataque_61684:
;MyProject.c,4001 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61113:
;MyProject.c,4002 :: 		}
L_ataque_61105:
;MyProject.c,4003 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61114:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61114
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61114
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61114
	NOP
	NOP
;MyProject.c,4004 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4006 :: 		case 3:
L_ataque_61115:
;MyProject.c,4007 :: 		Lcd_chr (2,14, 6);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4008 :: 		armazena_pos_inimigo3 = 0b00001101;
	MOVLW       13
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4009 :: 		testa_inimigo2 =  0b00001110;
	MOVLW       14
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4011 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4012 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4014 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4015 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61956
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61956:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61116
;MyProject.c,4016 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4017 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4018 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4019 :: 		}
L_ataque_61116:
;MyProject.c,4028 :: 		if (explode_nave == 0){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61117
;MyProject.c,4029 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61118
;MyProject.c,4030 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4031 :: 		}
	GOTO        L_ataque_61119
L_ataque_61118:
;MyProject.c,4033 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61122
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61122
L__ataque_61683:
;MyProject.c,4034 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4035 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4036 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4037 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_61122:
L_ataque_61119:
;MyProject.c,4039 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4040 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61957
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61957:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61682
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61682
	GOTO        L_ataque_61125
L__ataque_61682:
;MyProject.c,4041 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61125:
;MyProject.c,4042 :: 		}
L_ataque_61117:
;MyProject.c,4043 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61126:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61126
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61126
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61126
	NOP
	NOP
;MyProject.c,4044 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4046 :: 		case 4:
L_ataque_61127:
;MyProject.c,4047 :: 		Lcd_chr (2,13, 6);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4048 :: 		armazena_pos_inimigo3 = 0b00001100;
	MOVLW       12
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4049 :: 		testa_inimigo2 =  0b00001101;
	MOVLW       13
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4051 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4052 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4054 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4055 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61958
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61958:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61128
;MyProject.c,4056 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4057 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4058 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4059 :: 		}
L_ataque_61128:
;MyProject.c,4068 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61129
;MyProject.c,4069 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61130
;MyProject.c,4070 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4071 :: 		}
	GOTO        L_ataque_61131
L_ataque_61130:
;MyProject.c,4073 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61134
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61134
L__ataque_61681:
;MyProject.c,4074 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4075 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4076 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4077 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_61134:
L_ataque_61131:
;MyProject.c,4079 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4080 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61959
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61959:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61680
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61680
	GOTO        L_ataque_61137
L__ataque_61680:
;MyProject.c,4081 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61137:
;MyProject.c,4082 :: 		}
L_ataque_61129:
;MyProject.c,4083 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61138:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61138
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61138
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61138
	NOP
	NOP
;MyProject.c,4084 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4086 :: 		case 5:
L_ataque_61139:
;MyProject.c,4087 :: 		Lcd_chr (2,12, 6);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4088 :: 		armazena_pos_inimigo3 = 0b00001011;
	MOVLW       11
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4089 :: 		testa_inimigo2 =  0b00001100;
	MOVLW       12
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4091 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4092 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4094 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4095 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61960
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61960:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61140
;MyProject.c,4096 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4097 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4098 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4099 :: 		}
L_ataque_61140:
;MyProject.c,4106 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61141
;MyProject.c,4107 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61142
;MyProject.c,4108 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4109 :: 		}
	GOTO        L_ataque_61143
L_ataque_61142:
;MyProject.c,4111 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61146
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61146
L__ataque_61679:
;MyProject.c,4112 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4113 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4114 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4115 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_61146:
L_ataque_61143:
;MyProject.c,4117 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4118 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61961
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61961:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61678
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61678
	GOTO        L_ataque_61149
L__ataque_61678:
;MyProject.c,4119 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61149:
;MyProject.c,4120 :: 		}
L_ataque_61141:
;MyProject.c,4121 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61150:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61150
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61150
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61150
	NOP
	NOP
;MyProject.c,4122 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4124 :: 		case 6:
L_ataque_61151:
;MyProject.c,4125 :: 		Lcd_chr (2,11, 6);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4126 :: 		armazena_pos_inimigo3 = 0b00001010;
	MOVLW       10
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4127 :: 		testa_inimigo2 =  0b00001011;
	MOVLW       11
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4129 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4130 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4132 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4133 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61962
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61962:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61152
;MyProject.c,4134 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4135 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4136 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4137 :: 		}
L_ataque_61152:
;MyProject.c,4144 :: 		if (explode_nave == 0b0000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61153
;MyProject.c,4145 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61154
;MyProject.c,4146 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4147 :: 		}
	GOTO        L_ataque_61155
L_ataque_61154:
;MyProject.c,4149 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61158
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61158
L__ataque_61677:
;MyProject.c,4150 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4151 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4152 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4153 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_61158:
L_ataque_61155:
;MyProject.c,4155 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4156 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61963
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61963:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61676
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61676
	GOTO        L_ataque_61161
L__ataque_61676:
;MyProject.c,4157 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61161:
;MyProject.c,4158 :: 		}
L_ataque_61153:
;MyProject.c,4159 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61162:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61162
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61162
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61162
	NOP
	NOP
;MyProject.c,4160 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4162 :: 		case 7:
L_ataque_61163:
;MyProject.c,4164 :: 		armazena_pos_inimigo3 = 0b00001001;
	MOVLW       9
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4165 :: 		testa_inimigo2 =  0b00001010;
	MOVLW       10
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4167 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4168 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4170 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4171 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61964
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61964:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61164
;MyProject.c,4172 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4173 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4174 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4175 :: 		}
L_ataque_61164:
;MyProject.c,4182 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61165
;MyProject.c,4183 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61166
;MyProject.c,4184 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4185 :: 		}
	GOTO        L_ataque_61167
L_ataque_61166:
;MyProject.c,4187 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61170
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61170
L__ataque_61675:
;MyProject.c,4188 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4189 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4190 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4191 :: 		}  //testa se usuario pediu para ser lançado um tiro
L_ataque_61170:
L_ataque_61167:
;MyProject.c,4193 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4194 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61965
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61965:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61674
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61674
	GOTO        L_ataque_61173
L__ataque_61674:
;MyProject.c,4195 :: 		i = 15;                                              }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61173:
;MyProject.c,4196 :: 		}
L_ataque_61165:
;MyProject.c,4197 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61174:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61174
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61174
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61174
	NOP
	NOP
;MyProject.c,4198 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4200 :: 		case 8:
L_ataque_61175:
;MyProject.c,4201 :: 		Lcd_chr (2,9, 6);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4202 :: 		armazena_pos_inimigo3 = 0b00001000;
	MOVLW       8
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4203 :: 		testa_inimigo2 =  0b00001001;
	MOVLW       9
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4205 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4206 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4208 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4209 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61966
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61966:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61176
;MyProject.c,4210 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4211 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4212 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4213 :: 		}
L_ataque_61176:
;MyProject.c,4220 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61177
;MyProject.c,4221 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61178
;MyProject.c,4222 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4223 :: 		}
	GOTO        L_ataque_61179
L_ataque_61178:
;MyProject.c,4225 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61182
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61182
L__ataque_61673:
;MyProject.c,4226 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4227 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4228 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4229 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_61182:
L_ataque_61179:
;MyProject.c,4231 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4232 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61967
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61967:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61672
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61672
	GOTO        L_ataque_61185
L__ataque_61672:
;MyProject.c,4233 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61185:
;MyProject.c,4234 :: 		}
L_ataque_61177:
;MyProject.c,4235 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61186:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61186
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61186
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61186
	NOP
	NOP
;MyProject.c,4236 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4238 :: 		case 9:
L_ataque_61187:
;MyProject.c,4239 :: 		Lcd_chr (2,8, 6);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4240 :: 		armazena_pos_inimigo3 = 0b00000111;
	MOVLW       7
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4241 :: 		testa_inimigo2 =  0b00001000;
	MOVLW       8
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4243 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4244 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4246 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4247 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61968
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61968:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61188
;MyProject.c,4248 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4249 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4250 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4251 :: 		}
L_ataque_61188:
;MyProject.c,4258 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61189
;MyProject.c,4259 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61190
;MyProject.c,4260 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4261 :: 		}
	GOTO        L_ataque_61191
L_ataque_61190:
;MyProject.c,4263 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61194
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61194
L__ataque_61671:
;MyProject.c,4264 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4265 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4266 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4267 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_61194:
L_ataque_61191:
;MyProject.c,4269 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4270 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61969
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61969:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61670
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61670
	GOTO        L_ataque_61197
L__ataque_61670:
;MyProject.c,4271 :: 		i = 15;                                             }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61197:
;MyProject.c,4272 :: 		}
L_ataque_61189:
;MyProject.c,4273 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61198:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61198
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61198
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61198
	NOP
	NOP
;MyProject.c,4274 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4276 :: 		case 10:
L_ataque_61199:
;MyProject.c,4277 :: 		Lcd_chr (2,7, 6);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4278 :: 		armazena_pos_inimigo3 = 0b00000110;
	MOVLW       6
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4279 :: 		testa_inimigo2 =  0b00000111;
	MOVLW       7
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4281 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4282 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4284 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4285 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61970
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61970:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61200
;MyProject.c,4286 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4287 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4288 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4289 :: 		}
L_ataque_61200:
;MyProject.c,4296 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61201
;MyProject.c,4297 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61202
;MyProject.c,4298 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4299 :: 		}
	GOTO        L_ataque_61203
L_ataque_61202:
;MyProject.c,4301 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61206
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61206
L__ataque_61669:
;MyProject.c,4302 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4303 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4304 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4305 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_61206:
L_ataque_61203:
;MyProject.c,4307 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4308 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61971
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61971:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61668
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61668
	GOTO        L_ataque_61209
L__ataque_61668:
;MyProject.c,4309 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61209:
;MyProject.c,4310 :: 		}
L_ataque_61201:
;MyProject.c,4311 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61210:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61210
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61210
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61210
	NOP
	NOP
;MyProject.c,4312 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4314 :: 		case 11:
L_ataque_61211:
;MyProject.c,4315 :: 		Lcd_chr (2,6, 6);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4316 :: 		armazena_pos_inimigo3 = 0b00000101;
	MOVLW       5
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4317 :: 		testa_inimigo2 =  0b00000110;
	MOVLW       6
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4319 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4320 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4322 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4323 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61972
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61972:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61212
;MyProject.c,4324 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4325 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4326 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4327 :: 		}
L_ataque_61212:
;MyProject.c,4334 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61213
;MyProject.c,4335 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61214
;MyProject.c,4336 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4337 :: 		}
	GOTO        L_ataque_61215
L_ataque_61214:
;MyProject.c,4339 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61218
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61218
L__ataque_61667:
;MyProject.c,4340 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4341 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4342 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4344 :: 		}  //testa se usuario pediu para ser lançado um tiro
L_ataque_61218:
L_ataque_61215:
;MyProject.c,4346 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4347 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 1){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61973
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61973:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61666
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61666
	GOTO        L_ataque_61221
L__ataque_61666:
;MyProject.c,4348 :: 		i = 15;                                  }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61221:
;MyProject.c,4349 :: 		}
L_ataque_61213:
;MyProject.c,4350 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61222:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61222
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61222
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61222
	NOP
	NOP
;MyProject.c,4351 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4353 :: 		case 12:
L_ataque_61223:
;MyProject.c,4354 :: 		Lcd_chr (2,5, 6);                                 // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4355 :: 		armazena_pos_inimigo3 = 0b00000100;
	MOVLW       4
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4356 :: 		testa_inimigo2 =  0b00000101;
	MOVLW       5
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4358 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4359 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4361 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4362 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61974
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61974:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61224
;MyProject.c,4363 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4364 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4365 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4366 :: 		}
L_ataque_61224:
;MyProject.c,4373 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61225
;MyProject.c,4374 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61226
;MyProject.c,4375 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4376 :: 		}
	GOTO        L_ataque_61227
L_ataque_61226:
;MyProject.c,4378 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61230
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61230
L__ataque_61665:
;MyProject.c,4379 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4380 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4381 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4382 :: 		}//testa se usuario pediu para ser lançado um tiro
L_ataque_61230:
L_ataque_61227:
;MyProject.c,4384 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4385 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61975
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61975:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61664
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61664
	GOTO        L_ataque_61233
L__ataque_61664:
;MyProject.c,4386 :: 		i = 15;                                             }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61233:
;MyProject.c,4388 :: 		}
L_ataque_61225:
;MyProject.c,4389 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61234:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61234
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61234
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61234
	NOP
	NOP
;MyProject.c,4390 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4392 :: 		case 13:
L_ataque_61235:
;MyProject.c,4393 :: 		Lcd_chr (2,4, 6);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4394 :: 		armazena_pos_inimigo3 = 0b00000011;
	MOVLW       3
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4395 :: 		testa_inimigo2 =  0b00000100;
	MOVLW       4
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4397 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4398 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4400 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4401 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61976
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61976:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61236
;MyProject.c,4402 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4403 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4404 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4405 :: 		}
L_ataque_61236:
;MyProject.c,4412 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61237
;MyProject.c,4413 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61238
;MyProject.c,4414 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4415 :: 		}
	GOTO        L_ataque_61239
L_ataque_61238:
;MyProject.c,4417 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61242
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61242
L__ataque_61663:
;MyProject.c,4418 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4419 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4420 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4421 :: 		}   //testa se usuario pediu para ser lançado um tiro
L_ataque_61242:
L_ataque_61239:
;MyProject.c,4423 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4424 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61977
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61977:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61662
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61662
	GOTO        L_ataque_61245
L__ataque_61662:
;MyProject.c,4425 :: 		i = 15;                                        }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61245:
;MyProject.c,4426 :: 		}
L_ataque_61237:
;MyProject.c,4427 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61246:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61246
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61246
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61246
	NOP
	NOP
;MyProject.c,4428 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4430 :: 		case 14:
L_ataque_61247:
;MyProject.c,4431 :: 		Lcd_chr (2,3, 6);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4432 :: 		armazena_pos_inimigo3 = 0b00000010;
	MOVLW       2
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4433 :: 		testa_inimigo2 =  0b00000011;
	MOVLW       3
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4434 :: 		pos_inimigo_final = 0b000000010;
	MOVLW       2
	MOVWF       _pos_inimigo_final+0 
;MyProject.c,4436 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4437 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4439 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4440 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61978
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61978:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61248
;MyProject.c,4441 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4442 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4443 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4444 :: 		}
L_ataque_61248:
;MyProject.c,4451 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61249
;MyProject.c,4452 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61250
;MyProject.c,4453 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4454 :: 		}
	GOTO        L_ataque_61251
L_ataque_61250:
;MyProject.c,4456 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61254
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61254
L__ataque_61661:
;MyProject.c,4457 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4458 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4459 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4460 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_61254:
L_ataque_61251:
;MyProject.c,4462 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4463 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61979
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61979:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61660
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61660
	GOTO        L_ataque_61257
L__ataque_61660:
;MyProject.c,4464 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
L_ataque_61257:
;MyProject.c,4465 :: 		}
L_ataque_61249:
;MyProject.c,4466 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61258:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61258
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61258
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61258
	NOP
	NOP
;MyProject.c,4467 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4469 :: 		case 15:
L_ataque_61259:
;MyProject.c,4470 :: 		Lcd_chr (2,2, 6);                                // Nave Inimiga I
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4471 :: 		armazena_pos_inimigo3 = 0b00000001;
	MOVLW       1
	MOVWF       _armazena_pos_inimigo3+0 
;MyProject.c,4472 :: 		testa_inimigo2 =  0b00000010;
	MOVLW       2
	MOVWF       _testa_inimigo2+0 
;MyProject.c,4473 :: 		pos_inimigo_final = 0b00000001;
	MOVLW       1
	MOVWF       _pos_inimigo_final+0 
;MyProject.c,4475 :: 		Chama_Enterprise();
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4476 :: 		escreve_enterprise();
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4478 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4479 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61980
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61980:
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61260
;MyProject.c,4480 :: 		i = 15;
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
;MyProject.c,4481 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4482 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       ataque_6_explode_nave_L0+0 
;MyProject.c,4483 :: 		}
L_ataque_61260:
;MyProject.c,4491 :: 		if (explode_nave == 0b00000000){
	MOVF        ataque_6_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61261
;MyProject.c,4492 :: 		if (testa_tiro == 0b00000001){
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61262
;MyProject.c,4493 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4494 :: 		}
	GOTO        L_ataque_61263
L_ataque_61262:
;MyProject.c,4496 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61266
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61266
L__ataque_61659:
;MyProject.c,4497 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4498 :: 		nave_tiro();
	CALL        _nave_tiro+0, 0
;MyProject.c,4499 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;MyProject.c,4500 :: 		}            //testa se usuario pediu para ser lançado um tiro
L_ataque_61266:
L_ataque_61263:
;MyProject.c,4502 :: 		testa = Testa_Tiro_Inimigo();
	CALL        _Testa_Tiro_Inimigo+0, 0
;MyProject.c,4503 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61981
	MOVLW       1
	XORWF       R0, 0 
L__ataque_61981:
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61658
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__ataque_61658
	GOTO        L_ataque_61269
L__ataque_61658:
;MyProject.c,4504 :: 		i = 15;         }
	MOVLW       15
	MOVWF       ataque_6_i_L0+0 
	MOVLW       0
	MOVWF       ataque_6_i_L0+1 
	GOTO        L_ataque_61270
L_ataque_61269:
;MyProject.c,4507 :: 		else  if (pos_inimigo_final == 0b00000001) {
	MOVF        _pos_inimigo_final+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ataque_61271
;MyProject.c,4508 :: 		GameOver();    }
	CALL        _GameOver+0, 0
L_ataque_61271:
L_ataque_61270:
;MyProject.c,4509 :: 		}
L_ataque_61261:
;MyProject.c,4510 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_ataque_61272:
	DECFSZ      R13, 1, 1
	BRA         L_ataque_61272
	DECFSZ      R12, 1, 1
	BRA         L_ataque_61272
	DECFSZ      R11, 1, 1
	BRA         L_ataque_61272
	NOP
	NOP
;MyProject.c,4511 :: 		break;
	GOTO        L_ataque_61096
;MyProject.c,4513 :: 		}
L_ataque_61095:
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61982
	MOVLW       1
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61982:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61097
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61983
	MOVLW       2
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61983:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61103
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61984
	MOVLW       3
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61984:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61115
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61985
	MOVLW       4
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61985:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61127
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61986
	MOVLW       5
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61986:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61139
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61987
	MOVLW       6
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61987:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61151
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61988
	MOVLW       7
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61988:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61163
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61989
	MOVLW       8
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61989:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61175
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61990
	MOVLW       9
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61990:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61187
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61991
	MOVLW       10
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61991:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61199
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61992
	MOVLW       11
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61992:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61211
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61993
	MOVLW       12
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61993:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61223
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61994
	MOVLW       13
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61994:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61235
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61995
	MOVLW       14
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61995:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61247
	MOVLW       0
	XORWF       ataque_6_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ataque_61996
	MOVLW       15
	XORWF       ataque_6_i_L0+0, 0 
L__ataque_61996:
	BTFSC       STATUS+0, 2 
	GOTO        L_ataque_61259
L_ataque_61096:
;MyProject.c,4514 :: 		i++;
	INFSNZ      ataque_6_i_L0+0, 1 
	INCF        ataque_6_i_L0+1, 1 
;MyProject.c,4515 :: 		}
	GOTO        L_ataque_61093
L_ataque_61094:
;MyProject.c,4517 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;MyProject.c,4519 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;MyProject.c,4520 :: 		testa_inimigo2 = 0b00000000;
	CLRF        _testa_inimigo2+0 
;MyProject.c,4521 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;MyProject.c,4522 :: 		armazena_pos_inimigo1 = 0b00000000;
	CLRF        _armazena_pos_inimigo1+0 
;MyProject.c,4523 :: 		armazena_pos_inimigo2 = 0b00000000;
	CLRF        _armazena_pos_inimigo2+0 
;MyProject.c,4524 :: 		armazena_pos_inimigo3 = 0b00000000;
	CLRF        _armazena_pos_inimigo3+0 
;MyProject.c,4525 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;MyProject.c,4526 :: 		testa_primeira_explosao = 0b00000000;
	CLRF        _testa_primeira_explosao+0 
;MyProject.c,4527 :: 		explode_nave = 0b00000000;
	CLRF        ataque_6_explode_nave_L0+0 
;MyProject.c,4528 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;MyProject.c,4529 :: 		especial = 0;
	CLRF        _especial+0 
;MyProject.c,4530 :: 		}
L_end_ataque_6:
	RETURN      0
; end of _ataque_6

_Menu:

;MyProject.c,4537 :: 		void Menu(){                                                                //Funcao Menu
;MyProject.c,4539 :: 		char txt1[] =  "PIC INVADERS";                                             //de acordo com solitacao por usuario
	MOVLW       ?ICSMenu_txt1_L0+0
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(?ICSMenu_txt1_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(?ICSMenu_txt1_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       Menu_txt1_L0+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(Menu_txt1_L0+0)
	MOVWF       FSR1H 
	MOVLW       216
	MOVWF       R0 
	MOVLW       2
	MOVWF       R1 
	CALL        ___CC2DW+0, 0
;MyProject.c,4577 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4578 :: 		Lcd_out (1,3, txt1);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt1_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt1_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4579 :: 		Lcd_out (2,4, txt2);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt2_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt2_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4580 :: 		delay_ms (5000);
	MOVLW       127
	MOVWF       R11, 0
	MOVLW       212
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_Menu1273:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1273
	DECFSZ      R12, 1, 1
	BRA         L_Menu1273
	DECFSZ      R11, 1, 1
	BRA         L_Menu1273
	NOP
	NOP
;MyProject.c,4582 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4583 :: 		Lcd_out (1,3, txt36);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt36_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt36_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4584 :: 		Lcd_out (2,1, txt37);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt37_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt37_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4585 :: 		delay_ms (5000);
	MOVLW       127
	MOVWF       R11, 0
	MOVLW       212
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_Menu1274:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1274
	DECFSZ      R12, 1, 1
	BRA         L_Menu1274
	DECFSZ      R11, 1, 1
	BRA         L_Menu1274
	NOP
	NOP
;MyProject.c,4587 :: 		menu:
___Menu_menu:
;MyProject.c,4589 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4590 :: 		Lcd_out (1,3, txt3);                   //Tela de apresentação do Game
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt3_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt3_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4591 :: 		Lcd_out (2,3, txt4);                   //New Game, About e Help
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt4_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt4_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4592 :: 		Lcd_out (1,12, txt29);                 //Para voltar para Menu - Pressionar Bit 1 do PORTD
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt29_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt29_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4593 :: 		delay_ms (250);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       88
	MOVWF       R12, 0
	MOVLW       89
	MOVWF       R13, 0
L_Menu1275:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1275
	DECFSZ      R12, 1, 1
	BRA         L_Menu1275
	DECFSZ      R11, 1, 1
	BRA         L_Menu1275
	NOP
	NOP
;MyProject.c,4595 :: 		if (button(&PORTD, 0, 200, 1)){        //Inicia o Game com frase clássica
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1276
;MyProject.c,4597 :: 		Lcd_Cmd(_LCD_CLEAR);              // e que o jogo é Fromhell
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4598 :: 		Lcd_out (1,6, txt8);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt8_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt8_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4599 :: 		Lcd_out (2,4, txt9);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt9_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt9_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4600 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1277:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1277
	DECFSZ      R12, 1, 1
	BRA         L_Menu1277
	DECFSZ      R11, 1, 1
	BRA         L_Menu1277
;MyProject.c,4602 :: 		if (button(&PORTD, 0, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1278
;MyProject.c,4603 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu1278:
;MyProject.c,4605 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4606 :: 		Lcd_out (1,3, txt10);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt10_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt10_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4607 :: 		Lcd_out (2,6, txt11);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt11_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt11_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4608 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1279:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1279
	DECFSZ      R12, 1, 1
	BRA         L_Menu1279
	DECFSZ      R11, 1, 1
	BRA         L_Menu1279
;MyProject.c,4610 :: 		if (button(&PORTD, 0, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1280
;MyProject.c,4611 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu1280:
;MyProject.c,4613 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4614 :: 		Lcd_out (1,1, txt12);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt12_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt12_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4615 :: 		Lcd_out (2,2, txt13);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt13_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt13_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4616 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1281:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1281
	DECFSZ      R12, 1, 1
	BRA         L_Menu1281
	DECFSZ      R11, 1, 1
	BRA         L_Menu1281
;MyProject.c,4618 :: 		if (button(&PORTD, 0, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1282
;MyProject.c,4619 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu1282:
;MyProject.c,4621 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4622 :: 		Lcd_out (1,3, txt14);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt14_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt14_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4623 :: 		Lcd_out (2,1, txt15);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt15_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt15_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4624 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1283:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1283
	DECFSZ      R12, 1, 1
	BRA         L_Menu1283
	DECFSZ      R11, 1, 1
	BRA         L_Menu1283
;MyProject.c,4626 :: 		if (button(&PORTD, 0, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1284
;MyProject.c,4627 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu1284:
;MyProject.c,4629 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4630 :: 		Lcd_out (1,2, txt16);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt16_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt16_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4631 :: 		Lcd_out (2,1, txt17);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt17_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt17_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4632 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1285:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1285
	DECFSZ      R12, 1, 1
	BRA         L_Menu1285
	DECFSZ      R11, 1, 1
	BRA         L_Menu1285
;MyProject.c,4634 :: 		if (button(&PORTD, 0, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1286
;MyProject.c,4635 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu1286:
;MyProject.c,4637 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4638 :: 		Lcd_out (1,2, txt18);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt18_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt18_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4639 :: 		Lcd_out (2,3, txt19);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt19_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt19_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4640 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1287:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1287
	DECFSZ      R12, 1, 1
	BRA         L_Menu1287
	DECFSZ      R11, 1, 1
	BRA         L_Menu1287
;MyProject.c,4642 :: 		if (button(&PORTD, 0, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1288
;MyProject.c,4643 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu1288:
;MyProject.c,4645 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4646 :: 		Lcd_out (1,2, txt20);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt20_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt20_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4647 :: 		Lcd_out (2,1, txt21);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt21_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt21_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4648 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1289:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1289
	DECFSZ      R12, 1, 1
	BRA         L_Menu1289
	DECFSZ      R11, 1, 1
	BRA         L_Menu1289
;MyProject.c,4650 :: 		if (button(&PORTD, 0, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1290
;MyProject.c,4651 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu1290:
;MyProject.c,4653 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4654 :: 		Lcd_out (1,1, txt22);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt22_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt22_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4655 :: 		Lcd_out (2,2, txt23);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt23_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt23_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4656 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1291:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1291
	DECFSZ      R12, 1, 1
	BRA         L_Menu1291
	DECFSZ      R11, 1, 1
	BRA         L_Menu1291
;MyProject.c,4658 :: 		if (button(&PORTD, 0, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1292
;MyProject.c,4659 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu1292:
;MyProject.c,4661 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4662 :: 		Lcd_out (1,1, txt24);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt24_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt24_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4663 :: 		Lcd_out (2,4, txt25);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt25_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt25_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4664 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1293:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1293
	DECFSZ      R12, 1, 1
	BRA         L_Menu1293
	DECFSZ      R11, 1, 1
	BRA         L_Menu1293
;MyProject.c,4666 :: 		if (button(&PORTD, 0, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1294
;MyProject.c,4667 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu1294:
;MyProject.c,4669 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4670 :: 		Lcd_out (1,1, txt26);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt26_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt26_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4671 :: 		Lcd_out (2,2, txt27);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt27_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt27_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4672 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1295:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1295
	DECFSZ      R12, 1, 1
	BRA         L_Menu1295
	DECFSZ      R11, 1, 1
	BRA         L_Menu1295
;MyProject.c,4674 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4675 :: 		Lcd_out (1,1, txt28);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt28_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt28_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4676 :: 		Lcd_out (2,4, txt35);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt35_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt35_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4677 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu1296:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1296
	DECFSZ      R12, 1, 1
	BRA         L_Menu1296
	DECFSZ      R11, 1, 1
	BRA         L_Menu1296
;MyProject.c,4679 :: 		nivel1:
___Menu_nivel1:
;MyProject.c,4681 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4682 :: 		Lcd_out (1,5, txt34);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt34_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt34_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4683 :: 		delay_ms (5000);
	MOVLW       127
	MOVWF       R11, 0
	MOVLW       212
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_Menu1297:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1297
	DECFSZ      R12, 1, 1
	BRA         L_Menu1297
	DECFSZ      R11, 1, 1
	BRA         L_Menu1297
	NOP
	NOP
;MyProject.c,4685 :: 		return;     }
	GOTO        L_end_Menu
L_Menu1276:
;MyProject.c,4688 :: 		else if (button(&PORTD, 1, 200, 1)) {    //Escreve Informação de como
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1299
;MyProject.c,4690 :: 		while (1){                         //e versao atual
L_Menu1300:
;MyProject.c,4691 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4692 :: 		Lcd_out (1,1, txt5);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt5_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt5_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4693 :: 		Lcd_out (2,1, txt6);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt6_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt6_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4694 :: 		Lcd_out (2,13, txt7);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt7_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt7_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4695 :: 		delay_ms (600);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_Menu1302:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1302
	DECFSZ      R12, 1, 1
	BRA         L_Menu1302
	DECFSZ      R11, 1, 1
	BRA         L_Menu1302
	NOP
	NOP
;MyProject.c,4697 :: 		if (button(&PORTD, 1, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1303
;MyProject.c,4698 :: 		goto menu;
	GOTO        ___Menu_menu
L_Menu1303:
;MyProject.c,4700 :: 		}
	GOTO        L_Menu1300
;MyProject.c,4701 :: 		}
L_Menu1299:
;MyProject.c,4703 :: 		else if (button(&PORTD, 2, 200, 1)) {   //Escreve Instruções de jogabilidade
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1305
;MyProject.c,4704 :: 		while (1){                         //Lembrete: Pressionar bit 1 do PORTD para voltar para Menu ROOT
L_Menu1306:
;MyProject.c,4706 :: 		if (button(&PORTD, 1, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1308
;MyProject.c,4707 :: 		goto menu;
	GOTO        ___Menu_menu
L_Menu1308:
;MyProject.c,4709 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4710 :: 		Lcd_out (1,1, txt30);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt30_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt30_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4711 :: 		Lcd_out (2,1, txt31);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt31_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt31_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4712 :: 		delay_ms (2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_Menu1309:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1309
	DECFSZ      R12, 1, 1
	BRA         L_Menu1309
	DECFSZ      R11, 1, 1
	BRA         L_Menu1309
	NOP
	NOP
;MyProject.c,4714 :: 		if (button(&PORTD, 1, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1310
;MyProject.c,4715 :: 		goto menu;
	GOTO        ___Menu_menu
L_Menu1310:
;MyProject.c,4717 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4718 :: 		Lcd_out (1,1, txt32);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt32_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt32_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4719 :: 		Lcd_out (2,1, txt33);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt33_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt33_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4720 :: 		delay_ms (2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_Menu1311:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1311
	DECFSZ      R12, 1, 1
	BRA         L_Menu1311
	DECFSZ      R11, 1, 1
	BRA         L_Menu1311
	NOP
	NOP
;MyProject.c,4722 :: 		if (button(&PORTD, 1, 200, 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Menu1312
;MyProject.c,4723 :: 		goto menu;
	GOTO        ___Menu_menu
L_Menu1312:
;MyProject.c,4724 :: 		}
	GOTO        L_Menu1306
;MyProject.c,4725 :: 		}
L_Menu1305:
;MyProject.c,4726 :: 		goto menu;
	GOTO        ___Menu_menu
;MyProject.c,4727 :: 		}
L_end_Menu:
	RETURN      0
; end of _Menu

_Boss:

;MyProject.c,4736 :: 		int Boss(){
;MyProject.c,4738 :: 		short conta_tiro = 0;
	CLRF        Boss_conta_tiro_L0+0 
;MyProject.c,4741 :: 		do {
L_Boss1313:
;MyProject.c,4742 :: 		Boss_teste = 0b0000001;
	MOVLW       1
	MOVWF       _Boss_teste+0 
;MyProject.c,4743 :: 		Lcd_Cmd(_LCD_CLEAR);                                                  //onde será escrito o caracter de explosão de nave
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4744 :: 		Chama_Enterprise();                                                   //Chama nave_principal
	CALL        _Chama_Enterprise+0, 0
;MyProject.c,4745 :: 		Lcd_chr (1,16, 7);                                                    //Escreve na tela, coluna 1, uma parte do boss
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4746 :: 		Lcd_chr (2,16, 7);                                                    //Escreve na tela, coluna 2, a outra parte do boss
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4747 :: 		escreve_enterprise();                                                 //Testa se usuario quer mudar nave principal
	CALL        _escreve_enterprise+0, 0
;MyProject.c,4750 :: 		if (testa_tiro2 == 0b00000001){                                       //Testa se tiro = 1, e dessa forma executa a função tiro sem
	MOVF        Boss_testa_tiro2_L0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss1316
;MyProject.c,4751 :: 		nave_tiro();                                  //que o usuario pressione o botao
	CALL        _nave_tiro+0, 0
;MyProject.c,4752 :: 		Lcd_chr (1,16, 7);                            //Escreve na tela, coluna 1, uma parte do boss
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4753 :: 		Lcd_chr (2,16, 7);                            //Escreve na tela, coluna 2, a outra parte do boss
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4754 :: 		conta_tiro++;
	INCF        Boss_conta_tiro_L0+0, 1 
;MyProject.c,4755 :: 		}
	GOTO        L_Boss1317
L_Boss1316:
;MyProject.c,4757 :: 		else if ((button(&PORTD, 2, 200, 1))){                                         //Se o bit 2 do portd estiver pressionado
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Boss1318
;MyProject.c,4758 :: 		store_tiro = posicao_nave;           //armazena na variavel a posicao da nave
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;MyProject.c,4759 :: 		nave_tiro();                         //testa se usuario pediu para ser lançado um tiro
	CALL        _nave_tiro+0, 0
;MyProject.c,4760 :: 		Lcd_chr (1,16, 7);                   //Escreve na tela, coluna 1, uma parte do boss
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4761 :: 		Lcd_chr (2,16, 7);                   //Escreve na tela, coluna 2, a outra parte do boss
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4762 :: 		testa_tiro2 = 0b00000001;            //atribui 1 a testa_tiro
	MOVLW       1
	MOVWF       Boss_testa_tiro2_L0+0 
;MyProject.c,4763 :: 		}
L_Boss1318:
L_Boss1317:
;MyProject.c,4766 :: 		delay_ms (270);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       218
	MOVWF       R12, 0
	MOVLW       56
	MOVWF       R13, 0
L_Boss1319:
	DECFSZ      R13, 1, 1
	BRA         L_Boss1319
	DECFSZ      R12, 1, 1
	BRA         L_Boss1319
	DECFSZ      R11, 1, 1
	BRA         L_Boss1319
	NOP
;MyProject.c,4768 :: 		}while (conta_tiro < 0b00001101);
	MOVLW       128
	XORWF       Boss_conta_tiro_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       13
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_Boss1313
;MyProject.c,4770 :: 		if (store_tiro == 0b00000001)
	MOVF        _store_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss1320
;MyProject.c,4771 :: 		dano_boss1++;
	INCF        _dano_boss1+0, 1 
	GOTO        L_Boss1321
L_Boss1320:
;MyProject.c,4773 :: 		else if (store_tiro == 0b00000010)
	MOVF        _store_tiro+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss1322
;MyProject.c,4774 :: 		dano_boss2++;
	INCF        _dano_boss2+0, 1 
L_Boss1322:
L_Boss1321:
;MyProject.c,4776 :: 		if (((dano_boss1 == 0b00000010) && (dano_boss2 == 0b00000000)) || ((dano_boss1 == 0b00000000) && (dano_boss2 == 0b00000010))  || ((dano_boss1 == 0b00000011) && (dano_boss2 == 0b00000001)) || ((dano_boss1 == 0b00000001) && (dano_boss2 == 0b00000011)) || ((dano_boss1 == 0b00000100) && (dano_boss2 == 0b00000010)) || ((dano_boss1 == 0b00000010) && (dano_boss2 == 0b00000100)) || ((dano_boss1 == 0b00000101) && (dano_boss2 == 0b00000011)) || ((dano_boss1 == 0b00000011) && (dano_boss2 == 0b00000101))){
	MOVF        _dano_boss1+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1696
	MOVF        _dano_boss2+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1696
	GOTO        L__Boss1688
L__Boss1696:
	MOVF        _dano_boss1+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1695
	MOVF        _dano_boss2+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1695
	GOTO        L__Boss1688
L__Boss1695:
	MOVF        _dano_boss1+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1694
	MOVF        _dano_boss2+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1694
	GOTO        L__Boss1688
L__Boss1694:
	MOVF        _dano_boss1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1693
	MOVF        _dano_boss2+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1693
	GOTO        L__Boss1688
L__Boss1693:
	MOVF        _dano_boss1+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1692
	MOVF        _dano_boss2+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1692
	GOTO        L__Boss1688
L__Boss1692:
	MOVF        _dano_boss1+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1691
	MOVF        _dano_boss2+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1691
	GOTO        L__Boss1688
L__Boss1691:
	MOVF        _dano_boss1+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1690
	MOVF        _dano_boss2+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1690
	GOTO        L__Boss1688
L__Boss1690:
	MOVF        _dano_boss1+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1689
	MOVF        _dano_boss2+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss1689
	GOTO        L__Boss1688
L__Boss1689:
	GOTO        L_Boss1341
L__Boss1688:
;MyProject.c,4777 :: 		dano_boss1 = 0b00000000;
	CLRF        _dano_boss1+0 
;MyProject.c,4778 :: 		dano_boss2 = 0b00000000;
	CLRF        _dano_boss2+0 
;MyProject.c,4780 :: 		if( posicao_nave == 0b00000001)     {
	MOVF        _posicao_nave+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss1342
;MyProject.c,4781 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4782 :: 		lcd_chr (1, 1, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4783 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss1343:
	DECFSZ      R13, 1, 1
	BRA         L_Boss1343
	DECFSZ      R12, 1, 1
	BRA         L_Boss1343
	DECFSZ      R11, 1, 1
	BRA         L_Boss1343
	NOP
;MyProject.c,4784 :: 		lcd_chr (1, 1, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4785 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss1344:
	DECFSZ      R13, 1, 1
	BRA         L_Boss1344
	DECFSZ      R12, 1, 1
	BRA         L_Boss1344
	DECFSZ      R11, 1, 1
	BRA         L_Boss1344
	NOP
;MyProject.c,4786 :: 		lcd_chr (1, 1, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4787 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss1345:
	DECFSZ      R13, 1, 1
	BRA         L_Boss1345
	DECFSZ      R12, 1, 1
	BRA         L_Boss1345
	DECFSZ      R11, 1, 1
	BRA         L_Boss1345
	NOP
;MyProject.c,4788 :: 		lcd_chr (1, 1, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4789 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss1346:
	DECFSZ      R13, 1, 1
	BRA         L_Boss1346
	DECFSZ      R12, 1, 1
	BRA         L_Boss1346
	DECFSZ      R11, 1, 1
	BRA         L_Boss1346
	NOP
;MyProject.c,4790 :: 		}
	GOTO        L_Boss1347
L_Boss1342:
;MyProject.c,4792 :: 		else if (posicao_nave == 0b00000010) {
	MOVF        _posicao_nave+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss1348
;MyProject.c,4793 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4794 :: 		lcd_chr (2, 1, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4795 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss1349:
	DECFSZ      R13, 1, 1
	BRA         L_Boss1349
	DECFSZ      R12, 1, 1
	BRA         L_Boss1349
	DECFSZ      R11, 1, 1
	BRA         L_Boss1349
	NOP
;MyProject.c,4796 :: 		lcd_chr (2, 1, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4797 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss1350:
	DECFSZ      R13, 1, 1
	BRA         L_Boss1350
	DECFSZ      R12, 1, 1
	BRA         L_Boss1350
	DECFSZ      R11, 1, 1
	BRA         L_Boss1350
	NOP
;MyProject.c,4798 :: 		lcd_chr (2, 1, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4799 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss1351:
	DECFSZ      R13, 1, 1
	BRA         L_Boss1351
	DECFSZ      R12, 1, 1
	BRA         L_Boss1351
	DECFSZ      R11, 1, 1
	BRA         L_Boss1351
	NOP
;MyProject.c,4800 :: 		lcd_chr (2, 1, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;MyProject.c,4801 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss1352:
	DECFSZ      R13, 1, 1
	BRA         L_Boss1352
	DECFSZ      R12, 1, 1
	BRA         L_Boss1352
	DECFSZ      R11, 1, 1
	BRA         L_Boss1352
	NOP
;MyProject.c,4802 :: 		}
L_Boss1348:
L_Boss1347:
;MyProject.c,4803 :: 		GameOver();
	CALL        _GameOver+0, 0
;MyProject.c,4804 :: 		return 0;
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_Boss
;MyProject.c,4805 :: 		}
L_Boss1341:
;MyProject.c,4807 :: 		else if ((dano_boss1 == 4) && (dano_boss2 == 4))   {
	MOVF        _dano_boss1+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss1356
	MOVF        _dano_boss2+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss1356
L__Boss1687:
;MyProject.c,4808 :: 		Win_Game();
	CALL        _Win_Game+0, 0
;MyProject.c,4809 :: 		return 1;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_Boss
;MyProject.c,4810 :: 		}
L_Boss1356:
;MyProject.c,4812 :: 		conta_tiro = 0b0000000;
	CLRF        Boss_conta_tiro_L0+0 
;MyProject.c,4813 :: 		testa_tiro2 = 0b0000000;
	CLRF        Boss_testa_tiro2_L0+0 
;MyProject.c,4814 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;MyProject.c,4815 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;MyProject.c,4817 :: 		}
L_end_Boss:
	RETURN      0
; end of _Boss

_main:

;MyProject.c,4825 :: 		void main(){
;MyProject.c,4831 :: 		TRISB = 0b00000000;
	CLRF        TRISB+0 
;MyProject.c,4832 :: 		TRISD = 0b00001111;
	MOVLW       15
	MOVWF       TRISD+0 
;MyProject.c,4834 :: 		PORTB = 0;
	CLRF        PORTB+0 
;MyProject.c,4835 :: 		PORTD = 0;
	CLRF        PORTD+0 
;MyProject.c,4837 :: 		ANSELA = 0;
	CLRF        ANSELA+0 
;MyProject.c,4838 :: 		ANSELB = 0;
	CLRF        ANSELB+0 
;MyProject.c,4839 :: 		ANSELC = 0;
	CLRF        ANSELC+0 
;MyProject.c,4840 :: 		ANSELD = 0;
	CLRF        ANSELD+0 
;MyProject.c,4842 :: 		Lcd_Init();                         //Inicia Display
	CALL        _Lcd_Init+0, 0
;MyProject.c,4843 :: 		Lcd_Cmd(_LCD_CLEAR);                //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4844 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);           //Desliga cursor display
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4846 :: 		comeco:
___main_comeco:
;MyProject.c,4848 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4849 :: 		Menu();                             //Chama funcao Menu
	CALL        _Menu+0, 0
;MyProject.c,4850 :: 		CustomChar();                       //Carrega caracteres especiais - Um heito deles!
	CALL        _CustomChar+0, 0
;MyProject.c,4851 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4853 :: 		inicio_jogo:
___main_inicio_jogo:
;MyProject.c,4855 :: 		var_random = random();                  //Chama funcao randomica - Testado cada valor de acordo com funcao pré-definida
	CALL        _random+0, 0
	MOVF        R0, 0 
	MOVWF       main_var_random_L0+0 
	MOVF        R1, 0 
	MOVWF       main_var_random_L0+1 
;MyProject.c,4857 :: 		if (var_random == 1) {                 //Executa rotina de acordo com a variavel randomica gerada pelo PIC
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main2000
	MOVLW       1
	XORWF       R0, 0 
L__main2000:
	BTFSS       STATUS+0, 2 
	GOTO        L_main1357
;MyProject.c,4859 :: 		for (k = 0; k<2; k++){              //Repete testes abaixo, mais 4 vezes
	CLRF        main_k_L0+0 
L_main1358:
	MOVLW       128
	XORWF       main_k_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main1359
;MyProject.c,4861 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,4862 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,4863 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,4865 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,4866 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,4867 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,4869 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,4870 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,4871 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,4859 :: 		for (k = 0; k<2; k++){              //Repete testes abaixo, mais 4 vezes
	INCF        main_k_L0+0, 1 
;MyProject.c,4873 :: 		}
	GOTO        L_main1358
L_main1359:
;MyProject.c,4875 :: 		k = 0;
	CLRF        main_k_L0+0 
;MyProject.c,4877 :: 		testa_final = Boss();         //Testa o valor da funcao Boss
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,4878 :: 		if (testa_final == 1){        //se 1, parabéns, jogo terminado e de volta a tela inicial  - reseta o game
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1361
;MyProject.c,4879 :: 		goto comeco;          //se 0, a nave do usuário é destruída e o jogo é recomeçado
	GOTO        ___main_comeco
;MyProject.c,4880 :: 		}
L_main1361:
;MyProject.c,4882 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1363
;MyProject.c,4883 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4884 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr20_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr20_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4885 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1364:
	DECFSZ      R13, 1, 1
	BRA         L_main1364
	DECFSZ      R12, 1, 1
	BRA         L_main1364
	DECFSZ      R11, 1, 1
	BRA         L_main1364
	NOP
	NOP
;MyProject.c,4886 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,4887 :: 		}
L_main1363:
;MyProject.c,4889 :: 		ataque_3();                   //E chamará as funções Boss, 16 vezes, de modo que o usuário deva dividir os ataques no boss
	CALL        _ataque_3+0, 0
;MyProject.c,4890 :: 		ataque_4();                   //de 1 a 1, a modo de destruí-los simultaneamente. Caso contrário, é game over e nave do usuário é destruida
	CALL        _ataque_4+0, 0
;MyProject.c,4892 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,4893 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1365
;MyProject.c,4894 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,4895 :: 		}
L_main1365:
;MyProject.c,4897 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1367
;MyProject.c,4898 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4899 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr21_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr21_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4900 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1368:
	DECFSZ      R13, 1, 1
	BRA         L_main1368
	DECFSZ      R12, 1, 1
	BRA         L_main1368
	DECFSZ      R11, 1, 1
	BRA         L_main1368
	NOP
	NOP
;MyProject.c,4901 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,4902 :: 		}
L_main1367:
;MyProject.c,4903 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,4904 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,4906 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,4907 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1369
;MyProject.c,4908 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,4909 :: 		}
L_main1369:
;MyProject.c,4911 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1371
;MyProject.c,4912 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4913 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr22_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr22_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4914 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1372:
	DECFSZ      R13, 1, 1
	BRA         L_main1372
	DECFSZ      R12, 1, 1
	BRA         L_main1372
	DECFSZ      R11, 1, 1
	BRA         L_main1372
	NOP
	NOP
;MyProject.c,4915 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,4916 :: 		}
L_main1371:
;MyProject.c,4917 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,4918 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,4920 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,4921 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1373
;MyProject.c,4922 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,4923 :: 		}
L_main1373:
;MyProject.c,4925 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1375
;MyProject.c,4926 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4927 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr23_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr23_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4928 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1376:
	DECFSZ      R13, 1, 1
	BRA         L_main1376
	DECFSZ      R12, 1, 1
	BRA         L_main1376
	DECFSZ      R11, 1, 1
	BRA         L_main1376
	NOP
	NOP
;MyProject.c,4929 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,4930 :: 		}
L_main1375:
;MyProject.c,4931 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,4932 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,4934 :: 		if (game_over == 1)          {
	MOVF        _game_over+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1377
;MyProject.c,4935 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,4936 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1378
;MyProject.c,4937 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,4938 :: 		}
L_main1378:
;MyProject.c,4940 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1380
;MyProject.c,4941 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4942 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr24_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr24_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4943 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1381:
	DECFSZ      R13, 1, 1
	BRA         L_main1381
	DECFSZ      R12, 1, 1
	BRA         L_main1381
	DECFSZ      R11, 1, 1
	BRA         L_main1381
	NOP
	NOP
;MyProject.c,4944 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,4945 :: 		}
L_main1380:
;MyProject.c,4946 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,4947 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,4949 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,4950 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1382
;MyProject.c,4951 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,4952 :: 		}
L_main1382:
;MyProject.c,4954 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1384
;MyProject.c,4955 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4956 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr25_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr25_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4957 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1385:
	DECFSZ      R13, 1, 1
	BRA         L_main1385
	DECFSZ      R12, 1, 1
	BRA         L_main1385
	DECFSZ      R11, 1, 1
	BRA         L_main1385
	NOP
	NOP
;MyProject.c,4958 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,4959 :: 		}
L_main1384:
;MyProject.c,4961 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,4962 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,4964 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,4965 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1386
;MyProject.c,4966 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,4967 :: 		}
L_main1386:
;MyProject.c,4969 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1388
;MyProject.c,4970 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4971 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr26_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr26_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4972 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1389:
	DECFSZ      R13, 1, 1
	BRA         L_main1389
	DECFSZ      R12, 1, 1
	BRA         L_main1389
	DECFSZ      R11, 1, 1
	BRA         L_main1389
	NOP
	NOP
;MyProject.c,4973 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,4974 :: 		}
L_main1388:
;MyProject.c,4976 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,4977 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,4979 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,4980 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1390
;MyProject.c,4981 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,4982 :: 		}
L_main1390:
;MyProject.c,4984 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1392
;MyProject.c,4985 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,4986 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr27_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr27_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,4987 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1393:
	DECFSZ      R13, 1, 1
	BRA         L_main1393
	DECFSZ      R12, 1, 1
	BRA         L_main1393
	DECFSZ      R11, 1, 1
	BRA         L_main1393
	NOP
	NOP
;MyProject.c,4988 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,4989 :: 		}
L_main1392:
;MyProject.c,4991 :: 		}
L_main1377:
;MyProject.c,4992 :: 		}
	GOTO        L_main1394
L_main1357:
;MyProject.c,4994 :: 		else if (var_random == 2){
	MOVLW       0
	XORWF       main_var_random_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main2001
	MOVLW       2
	XORWF       main_var_random_L0+0, 0 
L__main2001:
	BTFSS       STATUS+0, 2 
	GOTO        L_main1395
;MyProject.c,4996 :: 		for (k = 0; k<2; k++){
	CLRF        main_k_L0+0 
L_main1396:
	MOVLW       128
	XORWF       main_k_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main1397
;MyProject.c,4998 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,4999 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,5000 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,5002 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5003 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5004 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,5006 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5007 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,5009 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,5010 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,4996 :: 		for (k = 0; k<2; k++){
	INCF        main_k_L0+0, 1 
;MyProject.c,5011 :: 		}
	GOTO        L_main1396
L_main1397:
;MyProject.c,5013 :: 		k = 0;
	CLRF        main_k_L0+0 
;MyProject.c,5015 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5016 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1399
;MyProject.c,5017 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5018 :: 		}
L_main1399:
;MyProject.c,5020 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1401
;MyProject.c,5021 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5022 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr28_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr28_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5023 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1402:
	DECFSZ      R13, 1, 1
	BRA         L_main1402
	DECFSZ      R12, 1, 1
	BRA         L_main1402
	DECFSZ      R11, 1, 1
	BRA         L_main1402
	NOP
	NOP
;MyProject.c,5024 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5025 :: 		}
L_main1401:
;MyProject.c,5027 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,5028 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5030 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5031 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1403
;MyProject.c,5032 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5033 :: 		}
L_main1403:
;MyProject.c,5035 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1405
;MyProject.c,5036 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5037 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr29_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr29_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5038 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1406:
	DECFSZ      R13, 1, 1
	BRA         L_main1406
	DECFSZ      R12, 1, 1
	BRA         L_main1406
	DECFSZ      R11, 1, 1
	BRA         L_main1406
	NOP
	NOP
;MyProject.c,5039 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5040 :: 		}
L_main1405:
;MyProject.c,5041 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,5042 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5044 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5045 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1407
;MyProject.c,5046 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5047 :: 		}
L_main1407:
;MyProject.c,5049 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1409
;MyProject.c,5050 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5051 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr30_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr30_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5052 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1410:
	DECFSZ      R13, 1, 1
	BRA         L_main1410
	DECFSZ      R12, 1, 1
	BRA         L_main1410
	DECFSZ      R11, 1, 1
	BRA         L_main1410
	NOP
	NOP
;MyProject.c,5053 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5054 :: 		}
L_main1409:
;MyProject.c,5055 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5056 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,5058 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5059 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1411
;MyProject.c,5060 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5061 :: 		}
L_main1411:
;MyProject.c,5063 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1413
;MyProject.c,5064 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5065 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr31_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr31_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5066 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1414:
	DECFSZ      R13, 1, 1
	BRA         L_main1414
	DECFSZ      R12, 1, 1
	BRA         L_main1414
	DECFSZ      R11, 1, 1
	BRA         L_main1414
	NOP
	NOP
;MyProject.c,5067 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5068 :: 		}
L_main1413:
;MyProject.c,5069 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5070 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5072 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5073 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1415
;MyProject.c,5074 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5075 :: 		}
L_main1415:
;MyProject.c,5077 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1417
;MyProject.c,5078 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5079 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr32_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr32_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5080 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1418:
	DECFSZ      R13, 1, 1
	BRA         L_main1418
	DECFSZ      R12, 1, 1
	BRA         L_main1418
	DECFSZ      R11, 1, 1
	BRA         L_main1418
	NOP
	NOP
;MyProject.c,5081 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5082 :: 		}
L_main1417:
;MyProject.c,5083 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,5084 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5086 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5087 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1419
;MyProject.c,5088 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5089 :: 		}
L_main1419:
;MyProject.c,5091 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1421
;MyProject.c,5092 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5093 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr33_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr33_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5094 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1422:
	DECFSZ      R13, 1, 1
	BRA         L_main1422
	DECFSZ      R12, 1, 1
	BRA         L_main1422
	DECFSZ      R11, 1, 1
	BRA         L_main1422
	NOP
	NOP
;MyProject.c,5095 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5096 :: 		}
L_main1421:
;MyProject.c,5097 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5098 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5100 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5101 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1423
;MyProject.c,5102 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5103 :: 		}
L_main1423:
;MyProject.c,5105 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1425
;MyProject.c,5106 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5107 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr34_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr34_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5108 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1426:
	DECFSZ      R13, 1, 1
	BRA         L_main1426
	DECFSZ      R12, 1, 1
	BRA         L_main1426
	DECFSZ      R11, 1, 1
	BRA         L_main1426
	NOP
	NOP
;MyProject.c,5109 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5110 :: 		}
L_main1425:
;MyProject.c,5111 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,5112 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,5114 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5115 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1427
;MyProject.c,5116 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5117 :: 		}
L_main1427:
;MyProject.c,5119 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1429
;MyProject.c,5120 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5121 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr35_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr35_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5122 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1430:
	DECFSZ      R13, 1, 1
	BRA         L_main1430
	DECFSZ      R12, 1, 1
	BRA         L_main1430
	DECFSZ      R11, 1, 1
	BRA         L_main1430
	NOP
	NOP
;MyProject.c,5123 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5124 :: 		}
L_main1429:
;MyProject.c,5126 :: 		}
	GOTO        L_main1431
L_main1395:
;MyProject.c,5128 :: 		else if (var_random == 3){
	MOVLW       0
	XORWF       main_var_random_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main2002
	MOVLW       3
	XORWF       main_var_random_L0+0, 0 
L__main2002:
	BTFSS       STATUS+0, 2 
	GOTO        L_main1432
;MyProject.c,5130 :: 		for (k = 0; k<2; k++){
	CLRF        main_k_L0+0 
L_main1433:
	MOVLW       128
	XORWF       main_k_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main1434
;MyProject.c,5132 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5133 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,5134 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,5136 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,5137 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5138 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,5140 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,5141 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5142 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,5130 :: 		for (k = 0; k<2; k++){
	INCF        main_k_L0+0, 1 
;MyProject.c,5143 :: 		}
	GOTO        L_main1433
L_main1434:
;MyProject.c,5145 :: 		k = 0;
	CLRF        main_k_L0+0 
;MyProject.c,5147 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5148 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1436
;MyProject.c,5149 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5150 :: 		}
L_main1436:
;MyProject.c,5152 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1438
;MyProject.c,5153 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5154 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr36_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr36_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5155 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1439:
	DECFSZ      R13, 1, 1
	BRA         L_main1439
	DECFSZ      R12, 1, 1
	BRA         L_main1439
	DECFSZ      R11, 1, 1
	BRA         L_main1439
	NOP
	NOP
;MyProject.c,5156 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5157 :: 		}
L_main1438:
;MyProject.c,5159 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,5160 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5162 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5163 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1440
;MyProject.c,5164 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5165 :: 		}
L_main1440:
;MyProject.c,5167 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1442
;MyProject.c,5168 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5169 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr37_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr37_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5170 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1443:
	DECFSZ      R13, 1, 1
	BRA         L_main1443
	DECFSZ      R12, 1, 1
	BRA         L_main1443
	DECFSZ      R11, 1, 1
	BRA         L_main1443
	NOP
	NOP
;MyProject.c,5171 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5172 :: 		}
L_main1442:
;MyProject.c,5173 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5174 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5176 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5177 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1444
;MyProject.c,5178 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5179 :: 		}
L_main1444:
;MyProject.c,5181 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1446
;MyProject.c,5182 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5183 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr38_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr38_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5184 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1447:
	DECFSZ      R13, 1, 1
	BRA         L_main1447
	DECFSZ      R12, 1, 1
	BRA         L_main1447
	DECFSZ      R11, 1, 1
	BRA         L_main1447
	NOP
	NOP
;MyProject.c,5185 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5186 :: 		}
L_main1446:
;MyProject.c,5187 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,5188 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,5190 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5191 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1448
;MyProject.c,5192 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5193 :: 		}
L_main1448:
;MyProject.c,5195 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1450
;MyProject.c,5196 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5197 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr39_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr39_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5198 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1451:
	DECFSZ      R13, 1, 1
	BRA         L_main1451
	DECFSZ      R12, 1, 1
	BRA         L_main1451
	DECFSZ      R11, 1, 1
	BRA         L_main1451
	NOP
	NOP
;MyProject.c,5199 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5200 :: 		}
L_main1450:
;MyProject.c,5201 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,5202 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5204 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5205 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1452
;MyProject.c,5206 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5207 :: 		}
L_main1452:
;MyProject.c,5209 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1454
;MyProject.c,5210 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5211 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr40_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr40_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5212 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1455:
	DECFSZ      R13, 1, 1
	BRA         L_main1455
	DECFSZ      R12, 1, 1
	BRA         L_main1455
	DECFSZ      R11, 1, 1
	BRA         L_main1455
	NOP
	NOP
;MyProject.c,5213 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5214 :: 		}
L_main1454:
;MyProject.c,5215 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5216 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5218 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5219 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1456
;MyProject.c,5220 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5221 :: 		}
L_main1456:
;MyProject.c,5223 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1458
;MyProject.c,5224 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5225 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr41_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr41_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5226 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1459:
	DECFSZ      R13, 1, 1
	BRA         L_main1459
	DECFSZ      R12, 1, 1
	BRA         L_main1459
	DECFSZ      R11, 1, 1
	BRA         L_main1459
	NOP
	NOP
;MyProject.c,5227 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5228 :: 		}
L_main1458:
;MyProject.c,5229 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,5230 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,5232 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5233 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1460
;MyProject.c,5234 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5235 :: 		}
L_main1460:
;MyProject.c,5237 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1462
;MyProject.c,5238 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5239 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr42_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr42_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5240 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1463:
	DECFSZ      R13, 1, 1
	BRA         L_main1463
	DECFSZ      R12, 1, 1
	BRA         L_main1463
	DECFSZ      R11, 1, 1
	BRA         L_main1463
	NOP
	NOP
;MyProject.c,5241 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5242 :: 		}
L_main1462:
;MyProject.c,5243 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5244 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5246 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5247 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1464
;MyProject.c,5248 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5249 :: 		}
L_main1464:
;MyProject.c,5251 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1466
;MyProject.c,5252 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5253 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr43_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr43_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5254 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1467:
	DECFSZ      R13, 1, 1
	BRA         L_main1467
	DECFSZ      R12, 1, 1
	BRA         L_main1467
	DECFSZ      R11, 1, 1
	BRA         L_main1467
	NOP
	NOP
;MyProject.c,5255 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5256 :: 		}
L_main1466:
;MyProject.c,5257 :: 		}
	GOTO        L_main1468
L_main1432:
;MyProject.c,5259 :: 		else if (var_random == 4){
	MOVLW       0
	XORWF       main_var_random_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main2003
	MOVLW       4
	XORWF       main_var_random_L0+0, 0 
L__main2003:
	BTFSS       STATUS+0, 2 
	GOTO        L_main1469
;MyProject.c,5261 :: 		for (k = 0; k<2; k++){
	CLRF        main_k_L0+0 
L_main1470:
	MOVLW       128
	XORWF       main_k_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main1471
;MyProject.c,5263 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5264 :: 		ataque_5();
	CALL        _ataque_5+0, 0
;MyProject.c,5265 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,5267 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,5268 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5269 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,5271 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5272 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,5273 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,5261 :: 		for (k = 0; k<2; k++){
	INCF        main_k_L0+0, 1 
;MyProject.c,5274 :: 		}
	GOTO        L_main1470
L_main1471:
;MyProject.c,5276 :: 		k = 0;
	CLRF        main_k_L0+0 
;MyProject.c,5278 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5279 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1473
;MyProject.c,5280 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5281 :: 		}
L_main1473:
;MyProject.c,5283 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1475
;MyProject.c,5284 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5285 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr44_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr44_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5286 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1476:
	DECFSZ      R13, 1, 1
	BRA         L_main1476
	DECFSZ      R12, 1, 1
	BRA         L_main1476
	DECFSZ      R11, 1, 1
	BRA         L_main1476
	NOP
	NOP
;MyProject.c,5287 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5288 :: 		}
L_main1475:
;MyProject.c,5290 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,5291 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,5293 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5294 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1477
;MyProject.c,5295 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5296 :: 		}
L_main1477:
;MyProject.c,5298 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1479
;MyProject.c,5299 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5300 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr45_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr45_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5301 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1480:
	DECFSZ      R13, 1, 1
	BRA         L_main1480
	DECFSZ      R12, 1, 1
	BRA         L_main1480
	DECFSZ      R11, 1, 1
	BRA         L_main1480
	NOP
	NOP
;MyProject.c,5302 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5303 :: 		}
L_main1479:
;MyProject.c,5304 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5305 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5307 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5308 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1481
;MyProject.c,5309 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5310 :: 		}
L_main1481:
;MyProject.c,5312 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1483
;MyProject.c,5313 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5314 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr46_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr46_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5315 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1484:
	DECFSZ      R13, 1, 1
	BRA         L_main1484
	DECFSZ      R12, 1, 1
	BRA         L_main1484
	DECFSZ      R11, 1, 1
	BRA         L_main1484
	NOP
	NOP
;MyProject.c,5316 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5317 :: 		}
L_main1483:
;MyProject.c,5318 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5319 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5321 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5322 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1485
;MyProject.c,5323 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5324 :: 		}
L_main1485:
;MyProject.c,5326 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1487
;MyProject.c,5327 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5328 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr47_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr47_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5329 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1488:
	DECFSZ      R13, 1, 1
	BRA         L_main1488
	DECFSZ      R12, 1, 1
	BRA         L_main1488
	DECFSZ      R11, 1, 1
	BRA         L_main1488
	NOP
	NOP
;MyProject.c,5330 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5331 :: 		}
L_main1487:
;MyProject.c,5332 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,5333 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,5335 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5336 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1489
;MyProject.c,5337 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5338 :: 		}
L_main1489:
;MyProject.c,5340 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1491
;MyProject.c,5341 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5342 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr48_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr48_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5343 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1492:
	DECFSZ      R13, 1, 1
	BRA         L_main1492
	DECFSZ      R12, 1, 1
	BRA         L_main1492
	DECFSZ      R11, 1, 1
	BRA         L_main1492
	NOP
	NOP
;MyProject.c,5344 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5345 :: 		}
L_main1491:
;MyProject.c,5346 :: 		ataque_4();
	CALL        _ataque_4+0, 0
;MyProject.c,5347 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5349 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5350 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1493
;MyProject.c,5351 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5352 :: 		}
L_main1493:
;MyProject.c,5354 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1495
;MyProject.c,5355 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5356 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr49_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr49_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5357 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1496:
	DECFSZ      R13, 1, 1
	BRA         L_main1496
	DECFSZ      R12, 1, 1
	BRA         L_main1496
	DECFSZ      R11, 1, 1
	BRA         L_main1496
	NOP
	NOP
;MyProject.c,5358 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5359 :: 		}
L_main1495:
;MyProject.c,5360 :: 		ataque_6();
	CALL        _ataque_6+0, 0
;MyProject.c,5361 :: 		ataque_2();
	CALL        _ataque_2+0, 0
;MyProject.c,5363 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5364 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1497
;MyProject.c,5365 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5366 :: 		}
L_main1497:
;MyProject.c,5368 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1499
;MyProject.c,5369 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5370 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr50_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr50_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5371 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1500:
	DECFSZ      R13, 1, 1
	BRA         L_main1500
	DECFSZ      R12, 1, 1
	BRA         L_main1500
	DECFSZ      R11, 1, 1
	BRA         L_main1500
	NOP
	NOP
;MyProject.c,5372 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5373 :: 		}
L_main1499:
;MyProject.c,5374 :: 		ataque_1();
	CALL        _ataque_1+0, 0
;MyProject.c,5375 :: 		ataque_3();
	CALL        _ataque_3+0, 0
;MyProject.c,5377 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,5378 :: 		if (testa_final == 1){
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main1501
;MyProject.c,5379 :: 		goto comeco;
	GOTO        ___main_comeco
;MyProject.c,5380 :: 		}
L_main1501:
;MyProject.c,5382 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main1503
;MyProject.c,5383 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,5384 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr51_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr51_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,5385 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main1504:
	DECFSZ      R13, 1, 1
	BRA         L_main1504
	DECFSZ      R12, 1, 1
	BRA         L_main1504
	DECFSZ      R11, 1, 1
	BRA         L_main1504
	NOP
	NOP
;MyProject.c,5386 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,5387 :: 		}
L_main1503:
;MyProject.c,5389 :: 		}
L_main1469:
L_main1468:
L_main1431:
L_main1394:
;MyProject.c,5523 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
