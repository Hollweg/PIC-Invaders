
_Ataque1:

;naveAtaques.c,15 :: 		void Ataque1(){
;naveAtaques.c,17 :: 		int i  = 0b00000000;
	CLRF        Ataque1_i_L0+0 
	CLRF        Ataque1_i_L0+1 
	CLRF        Ataque1_explode_nave_L0+0 
;naveAtaques.c,22 :: 		while (i<16){
L_Ataque10:
	MOVLW       128
	XORWF       Ataque1_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1837
	MOVLW       16
	SUBWF       Ataque1_i_L0+0, 0 
L__Ataque1837:
	BTFSC       STATUS+0, 0 
	GOTO        L_Ataque11
;naveAtaques.c,23 :: 		linha2 = 0b00000010;
	MOVLW       2
	MOVWF       _linha2+0 
;naveAtaques.c,24 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;naveAtaques.c,25 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,26 :: 		switch (i){
	GOTO        L_Ataque12
;naveAtaques.c,27 :: 		case 1:
L_Ataque14:
;naveAtaques.c,28 :: 		Lcd_chr (2,16,2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,29 :: 		armazena_pos_inimigo2 = 0b00001111;
	MOVLW       15
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,30 :: 		testa_inimigo2 = 0b00010000;
	MOVLW       16
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,31 :: 		if ((button(&PORTD, 2, 200, 1))){
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
	GOTO        L_Ataque15
;naveAtaques.c,32 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,33 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,34 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,35 :: 		}
L_Ataque15:
;naveAtaques.c,37 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,38 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1838
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1838:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1748
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1748
	GOTO        L_Ataque18
L__Ataque1748:
;naveAtaques.c,39 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque18:
;naveAtaques.c,40 :: 		delay_ms(300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque19:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque19
	DECFSZ      R12, 1, 1
	BRA         L_Ataque19
	DECFSZ      R11, 1, 1
	BRA         L_Ataque19
	NOP
	NOP
;naveAtaques.c,41 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,43 :: 		case 2:
L_Ataque110:
;naveAtaques.c,44 :: 		Lcd_chr (2,15, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,45 :: 		armazena_pos_inimigo2 = 0b00001110;
	MOVLW       14
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,46 :: 		testa_inimigo2 =  0b00001111;
	MOVLW       15
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,48 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,49 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,51 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,52 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1839
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1839:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque111
;naveAtaques.c,53 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,54 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,55 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,56 :: 		}
L_Ataque111:
;naveAtaques.c,58 :: 		if (explode_nave == 0){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque112
;naveAtaques.c,59 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque113
;naveAtaques.c,60 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque114
L_Ataque113:
;naveAtaques.c,62 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque117
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque117
L__Ataque1747:
;naveAtaques.c,63 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,64 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,65 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,66 :: 		}
L_Ataque117:
L_Ataque114:
;naveAtaques.c,68 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,69 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1840
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1840:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1746
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1746
	GOTO        L_Ataque120
L__Ataque1746:
;naveAtaques.c,70 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque120:
;naveAtaques.c,71 :: 		}
L_Ataque112:
;naveAtaques.c,72 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque121:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque121
	DECFSZ      R12, 1, 1
	BRA         L_Ataque121
	DECFSZ      R11, 1, 1
	BRA         L_Ataque121
	NOP
	NOP
;naveAtaques.c,73 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,75 :: 		case 3:
L_Ataque122:
;naveAtaques.c,76 :: 		Lcd_chr (2,14, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,77 :: 		armazena_pos_inimigo2 = 0b00001101;
	MOVLW       13
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,78 :: 		testa_inimigo2 =  0b00001110;
	MOVLW       14
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,80 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,81 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,83 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,84 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1841
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1841:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque123
;naveAtaques.c,85 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,86 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,87 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,88 :: 		}
L_Ataque123:
;naveAtaques.c,90 :: 		if (explode_nave == 0){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque124
;naveAtaques.c,91 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque125
;naveAtaques.c,92 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque126
L_Ataque125:
;naveAtaques.c,94 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque129
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque129
L__Ataque1745:
;naveAtaques.c,95 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,96 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,97 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,98 :: 		}
L_Ataque129:
L_Ataque126:
;naveAtaques.c,100 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,101 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1842
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1842:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1744
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1744
	GOTO        L_Ataque132
L__Ataque1744:
;naveAtaques.c,102 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque132:
;naveAtaques.c,103 :: 		}
L_Ataque124:
;naveAtaques.c,104 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque133:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque133
	DECFSZ      R12, 1, 1
	BRA         L_Ataque133
	DECFSZ      R11, 1, 1
	BRA         L_Ataque133
	NOP
	NOP
;naveAtaques.c,105 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,107 :: 		case 4:
L_Ataque134:
;naveAtaques.c,108 :: 		Lcd_chr (2,13, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,109 :: 		armazena_pos_inimigo2 = 0b00001100;
	MOVLW       12
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,110 :: 		testa_inimigo2 =  0b00001101;
	MOVLW       13
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,112 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,113 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,115 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,116 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1843
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1843:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque135
;naveAtaques.c,117 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,118 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,119 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,120 :: 		}
L_Ataque135:
;naveAtaques.c,122 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque136
;naveAtaques.c,123 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque137
;naveAtaques.c,124 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque138
L_Ataque137:
;naveAtaques.c,126 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque141
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque141
L__Ataque1743:
;naveAtaques.c,127 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,128 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,129 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,130 :: 		}
L_Ataque141:
L_Ataque138:
;naveAtaques.c,132 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,133 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1844
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1844:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1742
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1742
	GOTO        L_Ataque144
L__Ataque1742:
;naveAtaques.c,134 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque144:
;naveAtaques.c,135 :: 		}
L_Ataque136:
;naveAtaques.c,136 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque145:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque145
	DECFSZ      R12, 1, 1
	BRA         L_Ataque145
	DECFSZ      R11, 1, 1
	BRA         L_Ataque145
	NOP
	NOP
;naveAtaques.c,137 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,139 :: 		case 5:
L_Ataque146:
;naveAtaques.c,140 :: 		Lcd_chr (2,12, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,141 :: 		armazena_pos_inimigo2 = 0b00001011;
	MOVLW       11
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,142 :: 		testa_inimigo2 =  0b00001100;
	MOVLW       12
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,144 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,145 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,147 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,148 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1845
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1845:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque147
;naveAtaques.c,149 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,150 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,151 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,152 :: 		}
L_Ataque147:
;naveAtaques.c,154 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque148
;naveAtaques.c,155 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque149
;naveAtaques.c,156 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque150
L_Ataque149:
;naveAtaques.c,158 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque153
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque153
L__Ataque1741:
;naveAtaques.c,159 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,160 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,161 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,162 :: 		}
L_Ataque153:
L_Ataque150:
;naveAtaques.c,164 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,165 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1846
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1846:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1740
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1740
	GOTO        L_Ataque156
L__Ataque1740:
;naveAtaques.c,166 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque156:
;naveAtaques.c,167 :: 		}
L_Ataque148:
;naveAtaques.c,168 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque157:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque157
	DECFSZ      R12, 1, 1
	BRA         L_Ataque157
	DECFSZ      R11, 1, 1
	BRA         L_Ataque157
	NOP
	NOP
;naveAtaques.c,169 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,171 :: 		case 6:
L_Ataque158:
;naveAtaques.c,172 :: 		Lcd_chr (2,11, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,173 :: 		armazena_pos_inimigo2 = 0b00001010;
	MOVLW       10
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,174 :: 		testa_inimigo2 =  0b00001011;
	MOVLW       11
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,176 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,177 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,179 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,180 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1847
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1847:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque159
;naveAtaques.c,181 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,182 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,183 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,184 :: 		}
L_Ataque159:
;naveAtaques.c,186 :: 		if (explode_nave == 0b0000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque160
;naveAtaques.c,187 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque161
;naveAtaques.c,188 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque162
L_Ataque161:
;naveAtaques.c,190 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque165
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque165
L__Ataque1739:
;naveAtaques.c,191 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,192 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,193 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,194 :: 		}
L_Ataque165:
L_Ataque162:
;naveAtaques.c,196 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,197 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1848
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1848:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1738
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1738
	GOTO        L_Ataque168
L__Ataque1738:
;naveAtaques.c,198 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque168:
;naveAtaques.c,199 :: 		}
L_Ataque160:
;naveAtaques.c,200 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque169:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque169
	DECFSZ      R12, 1, 1
	BRA         L_Ataque169
	DECFSZ      R11, 1, 1
	BRA         L_Ataque169
	NOP
	NOP
;naveAtaques.c,201 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,203 :: 		case 7:
L_Ataque170:
;naveAtaques.c,204 :: 		Lcd_chr (2,10, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,205 :: 		armazena_pos_inimigo2 = 0b00001001;
	MOVLW       9
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,206 :: 		testa_inimigo2 =  0b00001010;
	MOVLW       10
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,208 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,209 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,211 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,212 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1849
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1849:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque171
;naveAtaques.c,213 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,214 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,215 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,216 :: 		}
L_Ataque171:
;naveAtaques.c,218 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque172
;naveAtaques.c,219 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque173
;naveAtaques.c,220 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque174
L_Ataque173:
;naveAtaques.c,222 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque177
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque177
L__Ataque1737:
;naveAtaques.c,223 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,224 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,225 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,226 :: 		}
L_Ataque177:
L_Ataque174:
;naveAtaques.c,228 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,229 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1850
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1850:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1736
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1736
	GOTO        L_Ataque180
L__Ataque1736:
;naveAtaques.c,230 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque180:
;naveAtaques.c,231 :: 		}
L_Ataque172:
;naveAtaques.c,232 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque181:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque181
	DECFSZ      R12, 1, 1
	BRA         L_Ataque181
	DECFSZ      R11, 1, 1
	BRA         L_Ataque181
	NOP
	NOP
;naveAtaques.c,233 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,235 :: 		case 8:
L_Ataque182:
;naveAtaques.c,236 :: 		Lcd_chr (2,9, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,237 :: 		armazena_pos_inimigo2 = 0b00001000;
	MOVLW       8
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,238 :: 		testa_inimigo2 =  0b00001001;
	MOVLW       9
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,240 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,241 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,243 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,244 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1851
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1851:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque183
;naveAtaques.c,245 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,246 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,247 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,248 :: 		}
L_Ataque183:
;naveAtaques.c,250 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque184
;naveAtaques.c,251 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque185
;naveAtaques.c,252 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque186
L_Ataque185:
;naveAtaques.c,254 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque189
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque189
L__Ataque1735:
;naveAtaques.c,255 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,256 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,257 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,258 :: 		}
L_Ataque189:
L_Ataque186:
;naveAtaques.c,260 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,261 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1852
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1852:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1734
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1734
	GOTO        L_Ataque192
L__Ataque1734:
;naveAtaques.c,262 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque192:
;naveAtaques.c,263 :: 		}
L_Ataque184:
;naveAtaques.c,264 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque193:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque193
	DECFSZ      R12, 1, 1
	BRA         L_Ataque193
	DECFSZ      R11, 1, 1
	BRA         L_Ataque193
	NOP
	NOP
;naveAtaques.c,265 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,267 :: 		case 9:
L_Ataque194:
;naveAtaques.c,268 :: 		Lcd_chr (2,8, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,269 :: 		armazena_pos_inimigo2 = 0b00000111;
	MOVLW       7
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,270 :: 		testa_inimigo2 =  0b00001000;
	MOVLW       8
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,272 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,273 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,275 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,276 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1853
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1853:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque195
;naveAtaques.c,277 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,278 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,279 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,280 :: 		}
L_Ataque195:
;naveAtaques.c,282 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque196
;naveAtaques.c,283 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque197
;naveAtaques.c,284 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque198
L_Ataque197:
;naveAtaques.c,286 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque1101
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1101
L__Ataque1733:
;naveAtaques.c,287 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,288 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,289 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,290 :: 		}
L_Ataque1101:
L_Ataque198:
;naveAtaques.c,292 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,293 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1854
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1854:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1732
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1732
	GOTO        L_Ataque1104
L__Ataque1732:
;naveAtaques.c,294 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque1104:
;naveAtaques.c,295 :: 		}
L_Ataque196:
;naveAtaques.c,296 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque1105:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque1105
	DECFSZ      R12, 1, 1
	BRA         L_Ataque1105
	DECFSZ      R11, 1, 1
	BRA         L_Ataque1105
	NOP
	NOP
;naveAtaques.c,297 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,299 :: 		case 10:
L_Ataque1106:
;naveAtaques.c,300 :: 		Lcd_chr (2,7, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,301 :: 		armazena_pos_inimigo2 = 0b00000110;
	MOVLW       6
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,302 :: 		testa_inimigo2 =  0b00000111;
	MOVLW       7
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,304 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,305 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,307 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,308 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1855
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1855:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1107
;naveAtaques.c,309 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,310 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,311 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,312 :: 		}
L_Ataque1107:
;naveAtaques.c,314 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1108
;naveAtaques.c,315 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1109
;naveAtaques.c,316 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque1110
L_Ataque1109:
;naveAtaques.c,318 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque1113
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1113
L__Ataque1731:
;naveAtaques.c,319 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,320 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,321 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,322 :: 		}
L_Ataque1113:
L_Ataque1110:
;naveAtaques.c,324 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,325 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1856
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1856:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1730
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1730
	GOTO        L_Ataque1116
L__Ataque1730:
;naveAtaques.c,326 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque1116:
;naveAtaques.c,327 :: 		}
L_Ataque1108:
;naveAtaques.c,328 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque1117:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque1117
	DECFSZ      R12, 1, 1
	BRA         L_Ataque1117
	DECFSZ      R11, 1, 1
	BRA         L_Ataque1117
	NOP
	NOP
;naveAtaques.c,329 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,331 :: 		case 11:
L_Ataque1118:
;naveAtaques.c,332 :: 		Lcd_chr (2,6, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,333 :: 		armazena_pos_inimigo2 = 0b00000101;
	MOVLW       5
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,334 :: 		testa_inimigo2 =  0b00000110;
	MOVLW       6
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,336 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,337 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,339 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,340 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1857
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1857:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1119
;naveAtaques.c,341 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,342 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,343 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,344 :: 		}
L_Ataque1119:
;naveAtaques.c,346 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1120
;naveAtaques.c,347 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1121
;naveAtaques.c,348 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque1122
L_Ataque1121:
;naveAtaques.c,350 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque1125
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1125
L__Ataque1729:
;naveAtaques.c,351 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,352 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,353 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,354 :: 		}
L_Ataque1125:
L_Ataque1122:
;naveAtaques.c,356 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,357 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 1)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1858
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1858:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1728
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1728
	GOTO        L_Ataque1128
L__Ataque1728:
;naveAtaques.c,358 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque1128:
;naveAtaques.c,359 :: 		}
L_Ataque1120:
;naveAtaques.c,360 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque1129:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque1129
	DECFSZ      R12, 1, 1
	BRA         L_Ataque1129
	DECFSZ      R11, 1, 1
	BRA         L_Ataque1129
	NOP
	NOP
;naveAtaques.c,361 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,363 :: 		case 12:
L_Ataque1130:
;naveAtaques.c,364 :: 		Lcd_chr (2,5, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,365 :: 		armazena_pos_inimigo2 = 0b00000100;
	MOVLW       4
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,366 :: 		testa_inimigo2 =  0b00000101;
	MOVLW       5
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,368 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,369 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,371 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,372 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1859
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1859:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1131
;naveAtaques.c,373 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,374 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,375 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,376 :: 		}
L_Ataque1131:
;naveAtaques.c,378 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1132
;naveAtaques.c,379 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1133
;naveAtaques.c,380 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque1134
L_Ataque1133:
;naveAtaques.c,382 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque1137
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1137
L__Ataque1727:
;naveAtaques.c,383 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,384 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,385 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,386 :: 		}
L_Ataque1137:
L_Ataque1134:
;naveAtaques.c,388 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,389 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1860
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1860:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1726
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1726
	GOTO        L_Ataque1140
L__Ataque1726:
;naveAtaques.c,390 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque1140:
;naveAtaques.c,391 :: 		}
L_Ataque1132:
;naveAtaques.c,392 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque1141:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque1141
	DECFSZ      R12, 1, 1
	BRA         L_Ataque1141
	DECFSZ      R11, 1, 1
	BRA         L_Ataque1141
	NOP
	NOP
;naveAtaques.c,393 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,395 :: 		case 13:
L_Ataque1142:
;naveAtaques.c,396 :: 		Lcd_chr (2,4, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,397 :: 		armazena_pos_inimigo2 = 0b00000011;
	MOVLW       3
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,398 :: 		testa_inimigo2 =  0b00000100;
	MOVLW       4
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,400 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,401 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,403 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,404 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1861
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1861:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1143
;naveAtaques.c,405 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,406 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,407 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,408 :: 		}
L_Ataque1143:
;naveAtaques.c,410 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1144
;naveAtaques.c,411 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1145
;naveAtaques.c,412 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque1146
L_Ataque1145:
;naveAtaques.c,414 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque1149
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1149
L__Ataque1725:
;naveAtaques.c,415 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,416 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,417 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,418 :: 		}
L_Ataque1149:
L_Ataque1146:
;naveAtaques.c,420 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,421 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1862
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1862:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1724
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1724
	GOTO        L_Ataque1152
L__Ataque1724:
;naveAtaques.c,422 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque1152:
;naveAtaques.c,423 :: 		}
L_Ataque1144:
;naveAtaques.c,424 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque1153:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque1153
	DECFSZ      R12, 1, 1
	BRA         L_Ataque1153
	DECFSZ      R11, 1, 1
	BRA         L_Ataque1153
	NOP
	NOP
;naveAtaques.c,425 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,427 :: 		case 14:
L_Ataque1154:
;naveAtaques.c,428 :: 		Lcd_chr (2,3, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,429 :: 		armazena_pos_inimigo2 = 0b00000010;
	MOVLW       2
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,430 :: 		testa_inimigo2 =  0b00000011;
	MOVLW       3
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,431 :: 		pos_inimigo_final = 0b000000010;
	MOVLW       2
	MOVWF       _pos_inimigo_final+0 
;naveAtaques.c,433 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,434 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,436 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,437 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1863
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1863:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1155
;naveAtaques.c,438 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,439 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,440 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,441 :: 		}
L_Ataque1155:
;naveAtaques.c,443 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1156
;naveAtaques.c,444 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1157
;naveAtaques.c,445 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque1158
L_Ataque1157:
;naveAtaques.c,447 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque1161
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1161
L__Ataque1723:
;naveAtaques.c,448 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,449 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,450 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,451 :: 		}
L_Ataque1161:
L_Ataque1158:
;naveAtaques.c,453 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,454 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1864
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1864:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1722
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1722
	GOTO        L_Ataque1164
L__Ataque1722:
;naveAtaques.c,455 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
L_Ataque1164:
;naveAtaques.c,456 :: 		}
L_Ataque1156:
;naveAtaques.c,457 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque1165:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque1165
	DECFSZ      R12, 1, 1
	BRA         L_Ataque1165
	DECFSZ      R11, 1, 1
	BRA         L_Ataque1165
	NOP
	NOP
;naveAtaques.c,458 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,460 :: 		case 15:
L_Ataque1166:
;naveAtaques.c,461 :: 		Lcd_chr (2,2, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,462 :: 		armazena_pos_inimigo1 = 0b00000001;
	MOVLW       1
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,463 :: 		testa_inimigo2 =  0b00000010;
	MOVLW       2
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,464 :: 		pos_inimigo_final = 0b00000001;
	MOVLW       1
	MOVWF       _pos_inimigo_final+0 
;naveAtaques.c,466 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,467 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,469 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,470 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1865
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1865:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1167
;naveAtaques.c,471 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
;naveAtaques.c,472 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,473 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque1_explode_nave_L0+0 
;naveAtaques.c,474 :: 		}
L_Ataque1167:
;naveAtaques.c,476 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque1_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1168
;naveAtaques.c,477 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1169
;naveAtaques.c,478 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque1170
L_Ataque1169:
;naveAtaques.c,480 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque1173
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1173
L__Ataque1721:
;naveAtaques.c,481 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,482 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,483 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,484 :: 		}
L_Ataque1173:
L_Ataque1170:
;naveAtaques.c,486 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,487 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1866
	MOVLW       1
	XORWF       R0, 0 
L__Ataque1866:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1720
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque1720
	GOTO        L_Ataque1176
L__Ataque1720:
;naveAtaques.c,488 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque1_i_L0+0 
	MOVLW       0
	MOVWF       Ataque1_i_L0+1 
	GOTO        L_Ataque1177
L_Ataque1176:
;naveAtaques.c,490 :: 		else  if (pos_inimigo_final == 0b00000001)
	MOVF        _pos_inimigo_final+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque1178
;naveAtaques.c,491 :: 		GameOver();
	CALL        _GameOver+0, 0
L_Ataque1178:
L_Ataque1177:
;naveAtaques.c,492 :: 		}
L_Ataque1168:
;naveAtaques.c,493 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque1179:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque1179
	DECFSZ      R12, 1, 1
	BRA         L_Ataque1179
	DECFSZ      R11, 1, 1
	BRA         L_Ataque1179
	NOP
	NOP
;naveAtaques.c,494 :: 		break;
	GOTO        L_Ataque13
;naveAtaques.c,495 :: 		}
L_Ataque12:
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1867
	MOVLW       1
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1867:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque14
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1868
	MOVLW       2
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1868:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque110
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1869
	MOVLW       3
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1869:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque122
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1870
	MOVLW       4
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1870:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque134
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1871
	MOVLW       5
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1871:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque146
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1872
	MOVLW       6
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1872:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque158
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1873
	MOVLW       7
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1873:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque170
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1874
	MOVLW       8
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1874:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque182
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1875
	MOVLW       9
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1875:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque194
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1876
	MOVLW       10
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1876:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque1106
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1877
	MOVLW       11
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1877:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque1118
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1878
	MOVLW       12
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1878:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque1130
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1879
	MOVLW       13
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1879:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque1142
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1880
	MOVLW       14
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1880:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque1154
	MOVLW       0
	XORWF       Ataque1_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque1881
	MOVLW       15
	XORWF       Ataque1_i_L0+0, 0 
L__Ataque1881:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque1166
L_Ataque13:
;naveAtaques.c,496 :: 		i++;
	INFSNZ      Ataque1_i_L0+0, 1 
	INCF        Ataque1_i_L0+1, 1 
;naveAtaques.c,497 :: 		}
	GOTO        L_Ataque10
L_Ataque11:
;naveAtaques.c,499 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;naveAtaques.c,501 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;naveAtaques.c,502 :: 		testa_inimigo2 = 0b00000000;
	CLRF        _testa_inimigo2+0 
;naveAtaques.c,503 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;naveAtaques.c,504 :: 		armazena_pos_inimigo1 = 0b00000000;
	CLRF        _armazena_pos_inimigo1+0 
;naveAtaques.c,505 :: 		armazena_pos_inimigo2 = 0b00000000;
	CLRF        _armazena_pos_inimigo2+0 
;naveAtaques.c,506 :: 		armazena_pos_inimigo3 = 0b00000000;
	CLRF        _armazena_pos_inimigo3+0 
;naveAtaques.c,507 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;naveAtaques.c,508 :: 		testa_primeira_explosao = 0b00000000;
	CLRF        _testa_primeira_explosao+0 
;naveAtaques.c,509 :: 		explode_nave = 0b00000000;
	CLRF        Ataque1_explode_nave_L0+0 
;naveAtaques.c,510 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,511 :: 		especial = 0;
	CLRF        _especial+0 
;naveAtaques.c,512 :: 		}//~ final Ataque1
L_end_Ataque1:
	RETURN      0
; end of _Ataque1

_Ataque2:

;naveAtaques.c,525 :: 		void Ataque2 (){
;naveAtaques.c,528 :: 		int i = 0b00000000;
	CLRF        Ataque2_i_L0+0 
	CLRF        Ataque2_i_L0+1 
	CLRF        Ataque2_explode_nave_L0+0 
;naveAtaques.c,533 :: 		while (i<16){
L_Ataque2180:
	MOVLW       128
	XORWF       Ataque2_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2883
	MOVLW       16
	SUBWF       Ataque2_i_L0+0, 0 
L__Ataque2883:
	BTFSC       STATUS+0, 0 
	GOTO        L_Ataque2181
;naveAtaques.c,534 :: 		linha1 = 0b00000001;
	MOVLW       1
	MOVWF       _linha1+0 
;naveAtaques.c,535 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;naveAtaques.c,536 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,537 :: 		switch (i){
	GOTO        L_Ataque2182
;naveAtaques.c,538 :: 		case 1:
L_Ataque2184:
;naveAtaques.c,539 :: 		Lcd_chr (1,16, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,540 :: 		armazena_pos_inimigo2 = 0b00001111;
	MOVLW       15
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,541 :: 		testa_inimigo1 = 0b00010000;
	MOVLW       16
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,542 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,544 :: 		if ((button(&PORTD, 2, 200, 1))){
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
	GOTO        L_Ataque2185
;naveAtaques.c,545 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,546 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,547 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,548 :: 		}
L_Ataque2185:
;naveAtaques.c,549 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,550 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2884
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2884:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2777
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2777
	GOTO        L_Ataque2188
L__Ataque2777:
;naveAtaques.c,551 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2188:
;naveAtaques.c,552 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2189:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2189
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2189
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2189
	NOP
	NOP
;naveAtaques.c,553 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,555 :: 		case 2:
L_Ataque2190:
;naveAtaques.c,556 :: 		Lcd_chr (1,15, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,557 :: 		armazena_pos_inimigo2 = 0b00001110;
	MOVLW       14
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,558 :: 		testa_inimigo1 = 0b0001111;
	MOVLW       15
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,559 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,560 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,561 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,562 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2885
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2885:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2191
;naveAtaques.c,563 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,564 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,565 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,566 :: 		}
L_Ataque2191:
;naveAtaques.c,567 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2192
;naveAtaques.c,568 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,569 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2193
;naveAtaques.c,570 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2194
L_Ataque2193:
;naveAtaques.c,571 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2197
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2197
L__Ataque2776:
;naveAtaques.c,572 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,573 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,574 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,575 :: 		}
L_Ataque2197:
L_Ataque2194:
;naveAtaques.c,576 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,577 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2886
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2886:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2775
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2775
	GOTO        L_Ataque2200
L__Ataque2775:
;naveAtaques.c,578 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2200:
;naveAtaques.c,579 :: 		}
L_Ataque2192:
;naveAtaques.c,580 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2201:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2201
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2201
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2201
	NOP
	NOP
;naveAtaques.c,581 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,583 :: 		case 3:
L_Ataque2202:
;naveAtaques.c,584 :: 		Lcd_chr (1,14, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,585 :: 		armazena_pos_inimigo2 = 0b00001101;
	MOVLW       13
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,586 :: 		testa_inimigo1 = 0b00001110;
	MOVLW       14
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,587 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,588 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,589 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,590 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2887
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2887:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2203
;naveAtaques.c,591 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,592 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,593 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,594 :: 		}
L_Ataque2203:
;naveAtaques.c,596 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2204
;naveAtaques.c,597 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2205
;naveAtaques.c,598 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2206
L_Ataque2205:
;naveAtaques.c,599 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2209
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2209
L__Ataque2774:
;naveAtaques.c,600 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,601 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,602 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,603 :: 		}
L_Ataque2209:
L_Ataque2206:
;naveAtaques.c,604 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,605 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2888
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2888:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2773
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2773
	GOTO        L_Ataque2212
L__Ataque2773:
;naveAtaques.c,606 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2212:
;naveAtaques.c,607 :: 		}
L_Ataque2204:
;naveAtaques.c,608 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2213:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2213
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2213
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2213
	NOP
	NOP
;naveAtaques.c,609 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,611 :: 		case 4:
L_Ataque2214:
;naveAtaques.c,612 :: 		Lcd_chr (1,13, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,613 :: 		armazena_pos_inimigo2 = 0b00001100;
	MOVLW       12
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,614 :: 		testa_inimigo1 = 0b00001101;
	MOVLW       13
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,615 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,616 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,617 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,618 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2889
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2889:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2215
;naveAtaques.c,619 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,620 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,621 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,622 :: 		}
L_Ataque2215:
;naveAtaques.c,623 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2216
;naveAtaques.c,624 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2217
;naveAtaques.c,625 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2218
L_Ataque2217:
;naveAtaques.c,626 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2221
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2221
L__Ataque2772:
;naveAtaques.c,627 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,628 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,629 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,630 :: 		}
L_Ataque2221:
L_Ataque2218:
;naveAtaques.c,631 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,632 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2890
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2890:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2771
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2771
	GOTO        L_Ataque2224
L__Ataque2771:
;naveAtaques.c,633 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2224:
;naveAtaques.c,634 :: 		}
L_Ataque2216:
;naveAtaques.c,635 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2225:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2225
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2225
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2225
	NOP
	NOP
;naveAtaques.c,636 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,638 :: 		case 5:
L_Ataque2226:
;naveAtaques.c,639 :: 		Lcd_chr (1,12, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,640 :: 		armazena_pos_inimigo2 = 0b00001011;
	MOVLW       11
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,641 :: 		testa_inimigo1 = 0b00001100;
	MOVLW       12
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,642 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,643 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,644 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,645 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2891
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2891:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2227
;naveAtaques.c,646 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,647 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,648 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,649 :: 		}
L_Ataque2227:
;naveAtaques.c,651 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2228
;naveAtaques.c,652 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2229
;naveAtaques.c,653 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2230
L_Ataque2229:
;naveAtaques.c,654 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2233
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2233
L__Ataque2770:
;naveAtaques.c,655 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,656 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,657 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,658 :: 		}
L_Ataque2233:
L_Ataque2230:
;naveAtaques.c,659 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,660 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2892
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2892:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2769
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2769
	GOTO        L_Ataque2236
L__Ataque2769:
;naveAtaques.c,661 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2236:
;naveAtaques.c,662 :: 		}
L_Ataque2228:
;naveAtaques.c,663 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_Ataque2237:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2237
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2237
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2237
	NOP
	NOP
;naveAtaques.c,664 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,666 :: 		case 6:
L_Ataque2238:
;naveAtaques.c,667 :: 		Lcd_chr (1,11, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,668 :: 		armazena_pos_inimigo2 = 0b00001010;
	MOVLW       10
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,669 :: 		testa_inimigo1 =  0b00001011;
	MOVLW       11
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,670 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,671 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,672 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,673 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2893
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2893:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2239
;naveAtaques.c,674 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,675 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,676 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,677 :: 		}
L_Ataque2239:
;naveAtaques.c,679 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2240
;naveAtaques.c,680 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2241
;naveAtaques.c,681 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2242
L_Ataque2241:
;naveAtaques.c,682 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2245
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2245
L__Ataque2768:
;naveAtaques.c,683 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,684 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,685 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,686 :: 		}
L_Ataque2245:
L_Ataque2242:
;naveAtaques.c,687 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,688 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2894
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2894:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2767
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2767
	GOTO        L_Ataque2248
L__Ataque2767:
;naveAtaques.c,689 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2248:
;naveAtaques.c,690 :: 		}
L_Ataque2240:
;naveAtaques.c,691 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2249:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2249
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2249
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2249
	NOP
	NOP
;naveAtaques.c,692 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,694 :: 		case 7:
L_Ataque2250:
;naveAtaques.c,695 :: 		Lcd_chr (1,10, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,696 :: 		armazena_pos_inimigo2 = 0b00001001;
	MOVLW       9
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,697 :: 		testa_inimigo1 =  0b00001010;
	MOVLW       10
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,698 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,699 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,700 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,701 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2895
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2895:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2251
;naveAtaques.c,702 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,703 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,704 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,705 :: 		}
L_Ataque2251:
;naveAtaques.c,706 :: 		if (explode_nave == 0){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2252
;naveAtaques.c,707 :: 		if (testa_tiro == 1)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2253
;naveAtaques.c,708 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2254
L_Ataque2253:
;naveAtaques.c,709 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2257
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2257
L__Ataque2766:
;naveAtaques.c,710 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,711 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,712 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,713 :: 		}
L_Ataque2257:
L_Ataque2254:
;naveAtaques.c,714 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,715 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2896
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2896:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2765
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2765
	GOTO        L_Ataque2260
L__Ataque2765:
;naveAtaques.c,716 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2260:
;naveAtaques.c,718 :: 		}
L_Ataque2252:
;naveAtaques.c,719 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2261:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2261
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2261
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2261
	NOP
	NOP
;naveAtaques.c,720 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,722 :: 		case 8:
L_Ataque2262:
;naveAtaques.c,723 :: 		Lcd_chr (1,9, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,724 :: 		armazena_pos_inimigo2 = 0b00001000;
	MOVLW       8
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,725 :: 		testa_inimigo1 =  0b00001001;
	MOVLW       9
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,726 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,727 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,728 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,729 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2897
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2897:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2263
;naveAtaques.c,730 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,731 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,732 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,733 :: 		}
L_Ataque2263:
;naveAtaques.c,734 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2264
;naveAtaques.c,735 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2265
;naveAtaques.c,736 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2266
L_Ataque2265:
;naveAtaques.c,737 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2269
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2269
L__Ataque2764:
;naveAtaques.c,738 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,739 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,740 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,741 :: 		}
L_Ataque2269:
L_Ataque2266:
;naveAtaques.c,742 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,743 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2898
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2898:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2763
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2763
	GOTO        L_Ataque2272
L__Ataque2763:
;naveAtaques.c,744 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2272:
;naveAtaques.c,745 :: 		}
L_Ataque2264:
;naveAtaques.c,746 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2273:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2273
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2273
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2273
	NOP
	NOP
;naveAtaques.c,747 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,749 :: 		case 9:
L_Ataque2274:
;naveAtaques.c,750 :: 		Lcd_chr (1,8, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,751 :: 		armazena_pos_inimigo2 = 0b00000111;
	MOVLW       7
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,752 :: 		testa_inimigo1 =  0b00001000;
	MOVLW       8
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,753 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,754 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,755 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,756 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2899
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2899:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2275
;naveAtaques.c,757 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,758 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,759 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,760 :: 		}
L_Ataque2275:
;naveAtaques.c,761 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2276
;naveAtaques.c,762 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2277
;naveAtaques.c,763 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2278
L_Ataque2277:
;naveAtaques.c,764 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2281
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2281
L__Ataque2762:
;naveAtaques.c,765 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,766 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,767 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,768 :: 		}
L_Ataque2281:
L_Ataque2278:
;naveAtaques.c,769 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,770 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2900
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2900:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2761
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2761
	GOTO        L_Ataque2284
L__Ataque2761:
;naveAtaques.c,771 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2284:
;naveAtaques.c,772 :: 		}
L_Ataque2276:
;naveAtaques.c,773 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2285:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2285
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2285
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2285
	NOP
	NOP
;naveAtaques.c,774 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,776 :: 		case 10:
L_Ataque2286:
;naveAtaques.c,777 :: 		Lcd_chr (1,7, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,778 :: 		armazena_pos_inimigo2 = 0b00000110;
	MOVLW       6
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,779 :: 		testa_inimigo1 =  0b00000111;
	MOVLW       7
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,780 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,781 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,782 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,783 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2901
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2901:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2287
;naveAtaques.c,784 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,785 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,786 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,787 :: 		}
L_Ataque2287:
;naveAtaques.c,788 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2288
;naveAtaques.c,789 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2289
;naveAtaques.c,790 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2290
L_Ataque2289:
;naveAtaques.c,791 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2293
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2293
L__Ataque2760:
;naveAtaques.c,792 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,793 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,794 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,795 :: 		}
L_Ataque2293:
L_Ataque2290:
;naveAtaques.c,796 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,797 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2902
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2902:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2759
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2759
	GOTO        L_Ataque2296
L__Ataque2759:
;naveAtaques.c,798 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2296:
;naveAtaques.c,799 :: 		}
L_Ataque2288:
;naveAtaques.c,800 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2297:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2297
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2297
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2297
	NOP
	NOP
;naveAtaques.c,801 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,803 :: 		case 11:
L_Ataque2298:
;naveAtaques.c,804 :: 		Lcd_chr (1,6, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,805 :: 		armazena_pos_inimigo2 = 0b00000101;
	MOVLW       5
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,806 :: 		testa_inimigo1 =  0b00000110;
	MOVLW       6
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,807 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,808 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,809 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,810 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2903
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2903:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2299
;naveAtaques.c,811 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,812 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,813 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,814 :: 		}
L_Ataque2299:
;naveAtaques.c,815 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2300
;naveAtaques.c,816 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2301
;naveAtaques.c,817 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2302
L_Ataque2301:
;naveAtaques.c,818 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2305
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2305
L__Ataque2758:
;naveAtaques.c,819 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,820 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,821 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,822 :: 		}
L_Ataque2305:
L_Ataque2302:
;naveAtaques.c,823 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,824 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2904
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2904:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2757
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2757
	GOTO        L_Ataque2308
L__Ataque2757:
;naveAtaques.c,825 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2308:
;naveAtaques.c,826 :: 		}
L_Ataque2300:
;naveAtaques.c,827 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2309:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2309
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2309
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2309
	NOP
	NOP
;naveAtaques.c,828 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,830 :: 		case 12:
L_Ataque2310:
;naveAtaques.c,831 :: 		Lcd_chr (1,5, 2);                                // Nave Inimiga
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,832 :: 		armazena_pos_inimigo2 = 0b00000100;
	MOVLW       4
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,833 :: 		testa_inimigo1 =  0b00000101;
	MOVLW       5
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,834 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,835 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,836 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,837 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2905
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2905:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2311
;naveAtaques.c,838 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,839 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,840 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,841 :: 		}
L_Ataque2311:
;naveAtaques.c,843 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2312
;naveAtaques.c,844 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2313
;naveAtaques.c,845 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2314
L_Ataque2313:
;naveAtaques.c,846 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2317
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2317
L__Ataque2756:
;naveAtaques.c,847 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,848 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,849 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,850 :: 		}
L_Ataque2317:
L_Ataque2314:
;naveAtaques.c,851 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,852 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2906
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2906:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2755
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2755
	GOTO        L_Ataque2320
L__Ataque2755:
;naveAtaques.c,853 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2320:
;naveAtaques.c,854 :: 		}
L_Ataque2312:
;naveAtaques.c,855 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2321:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2321
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2321
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2321
	NOP
	NOP
;naveAtaques.c,856 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,858 :: 		case 13:
L_Ataque2322:
;naveAtaques.c,859 :: 		Lcd_chr (1,4, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,860 :: 		armazena_pos_inimigo2 = 0b00000011;
	MOVLW       3
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,861 :: 		testa_inimigo1 =  0b00000100;
	MOVLW       4
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,862 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,863 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,864 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,865 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2907
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2907:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2323
;naveAtaques.c,866 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,867 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,868 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,869 :: 		}
L_Ataque2323:
;naveAtaques.c,870 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2324
;naveAtaques.c,871 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2325
;naveAtaques.c,872 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2326
L_Ataque2325:
;naveAtaques.c,873 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2329
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2329
L__Ataque2754:
;naveAtaques.c,874 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,875 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,876 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,877 :: 		}
L_Ataque2329:
L_Ataque2326:
;naveAtaques.c,878 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,879 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2908
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2908:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2753
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2753
	GOTO        L_Ataque2332
L__Ataque2753:
;naveAtaques.c,880 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2332:
;naveAtaques.c,881 :: 		}
L_Ataque2324:
;naveAtaques.c,882 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2333:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2333
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2333
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2333
	NOP
	NOP
;naveAtaques.c,883 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,885 :: 		case 14:
L_Ataque2334:
;naveAtaques.c,886 :: 		Lcd_chr (1,3, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,887 :: 		armazena_pos_inimigo2 = 0b00000010;
	MOVLW       2
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,888 :: 		testa_inimigo1 =  0b00000011;
	MOVLW       3
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,889 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,890 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,891 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,892 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2909
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2909:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2335
;naveAtaques.c,893 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,894 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,895 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
;naveAtaques.c,896 :: 		}
L_Ataque2335:
;naveAtaques.c,897 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2336
;naveAtaques.c,898 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2337
;naveAtaques.c,899 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2338
L_Ataque2337:
;naveAtaques.c,900 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2341
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2341
L__Ataque2752:
;naveAtaques.c,901 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,902 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,903 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,904 :: 		}
L_Ataque2341:
L_Ataque2338:
;naveAtaques.c,905 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,906 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2910
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2910:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2751
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2751
	GOTO        L_Ataque2344
L__Ataque2751:
;naveAtaques.c,907 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
L_Ataque2344:
;naveAtaques.c,908 :: 		}
L_Ataque2336:
;naveAtaques.c,909 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2345:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2345
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2345
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2345
	NOP
	NOP
;naveAtaques.c,910 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,912 :: 		case 15:
L_Ataque2346:
;naveAtaques.c,913 :: 		Lcd_chr (1,2, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,914 :: 		armazena_pos_inimigo2 = 0b00000001;
	MOVLW       1
	MOVWF       _armazena_pos_inimigo2+0 
;naveAtaques.c,915 :: 		testa_inimigo1 =  0b00000010;
	MOVLW       2
	MOVWF       _testa_inimigo1+0 
;naveAtaques.c,916 :: 		pos_inimigo_final = 0b00000001;
	MOVLW       1
	MOVWF       _pos_inimigo_final+0 
;naveAtaques.c,918 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,919 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,921 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,922 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2911
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2911:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2347
;naveAtaques.c,923 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
;naveAtaques.c,924 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,925 :: 		explode_nave = 0b00000001;}
	MOVLW       1
	MOVWF       Ataque2_explode_nave_L0+0 
L_Ataque2347:
;naveAtaques.c,926 :: 		if (explode_nave == 0){
	MOVF        Ataque2_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2348
;naveAtaques.c,927 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2349
;naveAtaques.c,928 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque2350
L_Ataque2349:
;naveAtaques.c,929 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque2353
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2353
L__Ataque2750:
;naveAtaques.c,930 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,931 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,932 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,933 :: 		}
L_Ataque2353:
L_Ataque2350:
;naveAtaques.c,934 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,935 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2912
	MOVLW       1
	XORWF       R0, 0 
L__Ataque2912:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2749
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque2749
	GOTO        L_Ataque2356
L__Ataque2749:
;naveAtaques.c,936 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque2_i_L0+0 
	MOVLW       0
	MOVWF       Ataque2_i_L0+1 
	GOTO        L_Ataque2357
L_Ataque2356:
;naveAtaques.c,937 :: 		else  if (pos_inimigo_final == 0b00000001)
	MOVF        _pos_inimigo_final+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque2358
;naveAtaques.c,938 :: 		GameOver();
	CALL        _GameOver+0, 0
L_Ataque2358:
L_Ataque2357:
;naveAtaques.c,939 :: 		}
L_Ataque2348:
;naveAtaques.c,940 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_Ataque2359:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque2359
	DECFSZ      R12, 1, 1
	BRA         L_Ataque2359
	DECFSZ      R11, 1, 1
	BRA         L_Ataque2359
	NOP
	NOP
;naveAtaques.c,941 :: 		break;
	GOTO        L_Ataque2183
;naveAtaques.c,942 :: 		}
L_Ataque2182:
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2913
	MOVLW       1
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2913:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2184
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2914
	MOVLW       2
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2914:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2190
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2915
	MOVLW       3
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2915:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2202
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2916
	MOVLW       4
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2916:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2214
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2917
	MOVLW       5
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2917:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2226
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2918
	MOVLW       6
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2918:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2238
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2919
	MOVLW       7
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2919:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2250
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2920
	MOVLW       8
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2920:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2262
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2921
	MOVLW       9
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2921:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2274
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2922
	MOVLW       10
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2922:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2286
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2923
	MOVLW       11
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2923:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2298
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2924
	MOVLW       12
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2924:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2310
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2925
	MOVLW       13
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2925:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2322
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2926
	MOVLW       14
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2926:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2334
	MOVLW       0
	XORWF       Ataque2_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque2927
	MOVLW       15
	XORWF       Ataque2_i_L0+0, 0 
L__Ataque2927:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque2346
L_Ataque2183:
;naveAtaques.c,943 :: 		i++;
	INFSNZ      Ataque2_i_L0+0, 1 
	INCF        Ataque2_i_L0+1, 1 
;naveAtaques.c,944 :: 		}
	GOTO        L_Ataque2180
L_Ataque2181:
;naveAtaques.c,946 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;naveAtaques.c,947 :: 		armazena_pos_inimigo1 = 0b00000000;
	CLRF        _armazena_pos_inimigo1+0 
;naveAtaques.c,948 :: 		armazena_pos_inimigo2 = 0b00000000;
	CLRF        _armazena_pos_inimigo2+0 
;naveAtaques.c,949 :: 		armazena_pos_inimigo3 = 0b00000000;
	CLRF        _armazena_pos_inimigo3+0 
;naveAtaques.c,950 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;naveAtaques.c,951 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;naveAtaques.c,952 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;naveAtaques.c,954 :: 		testa_inimigo1 = 0b00000000;
	CLRF        _testa_inimigo1+0 
;naveAtaques.c,955 :: 		testa_primeira_explosao = 0b00000000;
	CLRF        _testa_primeira_explosao+0 
;naveAtaques.c,956 :: 		explode_nave = 0b00000000;
	CLRF        Ataque2_explode_nave_L0+0 
;naveAtaques.c,957 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;naveAtaques.c,958 :: 		especial = 0;
	CLRF        _especial+0 
;naveAtaques.c,959 :: 		}//~ final Ataque2
L_end_Ataque2:
	RETURN      0
; end of _Ataque2

_Ataque3:

;naveAtaques.c,972 :: 		void Ataque3 (){
;naveAtaques.c,974 :: 		int i = 0b00000000;
	CLRF        Ataque3_i_L0+0 
	CLRF        Ataque3_i_L0+1 
	CLRF        Ataque3_explode_nave_L0+0 
;naveAtaques.c,979 :: 		while (i<16){
L_Ataque3360:
	MOVLW       128
	XORWF       Ataque3_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3929
	MOVLW       16
	SUBWF       Ataque3_i_L0+0, 0 
L__Ataque3929:
	BTFSC       STATUS+0, 0 
	GOTO        L_Ataque3361
;naveAtaques.c,980 :: 		linha2 = 0b00000010;
	MOVLW       2
	MOVWF       _linha2+0 
;naveAtaques.c,981 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;naveAtaques.c,982 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,984 :: 		switch (i){
	GOTO        L_Ataque3362
;naveAtaques.c,985 :: 		case 1:
L_Ataque3364:
;naveAtaques.c,986 :: 		Lcd_chr (2,16, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,987 :: 		armazena_pos_inimigo1 = 0b00001111;
	MOVLW       15
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,988 :: 		testa_inimigo2 =  0b00010000;
	MOVLW       16
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,989 :: 		if ((button(&PORTD, 2, 200, 1))){
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
	GOTO        L_Ataque3365
;naveAtaques.c,990 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,991 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,992 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,993 :: 		}
L_Ataque3365:
;naveAtaques.c,994 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,995 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3930
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3930:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3806
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3806
	GOTO        L_Ataque3368
L__Ataque3806:
;naveAtaques.c,996 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3368:
;naveAtaques.c,997 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3369:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3369
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3369
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3369
	NOP
	NOP
;naveAtaques.c,998 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1000 :: 		case 2:
L_Ataque3370:
;naveAtaques.c,1001 :: 		Lcd_chr (2,15, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1002 :: 		armazena_pos_inimigo1 = 0b00001110;
	MOVLW       14
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1003 :: 		testa_inimigo2 =  0b00001111;
	MOVLW       15
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1004 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1005 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1006 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1007 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3931
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3931:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3371
;naveAtaques.c,1008 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1009 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1010 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1011 :: 		}
L_Ataque3371:
;naveAtaques.c,1012 :: 		if (explode_nave == 0){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3372
;naveAtaques.c,1013 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3373
;naveAtaques.c,1014 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3374
L_Ataque3373:
;naveAtaques.c,1015 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3377
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3377
L__Ataque3805:
;naveAtaques.c,1016 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1017 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1018 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1019 :: 		}
L_Ataque3377:
L_Ataque3374:
;naveAtaques.c,1020 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1021 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3932
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3932:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3804
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3804
	GOTO        L_Ataque3380
L__Ataque3804:
;naveAtaques.c,1022 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3380:
;naveAtaques.c,1023 :: 		}
L_Ataque3372:
;naveAtaques.c,1024 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3381:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3381
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3381
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3381
	NOP
	NOP
;naveAtaques.c,1025 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1027 :: 		case 3:
L_Ataque3382:
;naveAtaques.c,1028 :: 		Lcd_chr (2,14, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1029 :: 		armazena_pos_inimigo1 = 0b00001101;
	MOVLW       13
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1030 :: 		testa_inimigo2 =  0b00001110;
	MOVLW       14
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1031 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1032 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1033 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1034 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3933
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3933:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3383
;naveAtaques.c,1035 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1036 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1037 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1038 :: 		}
L_Ataque3383:
;naveAtaques.c,1039 :: 		if (explode_nave == 0){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3384
;naveAtaques.c,1040 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3385
;naveAtaques.c,1041 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3386
L_Ataque3385:
;naveAtaques.c,1042 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3389
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3389
L__Ataque3803:
;naveAtaques.c,1043 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1044 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1045 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1046 :: 		}
L_Ataque3389:
L_Ataque3386:
;naveAtaques.c,1047 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1048 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3934
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3934:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3802
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3802
	GOTO        L_Ataque3392
L__Ataque3802:
;naveAtaques.c,1049 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3392:
;naveAtaques.c,1050 :: 		}
L_Ataque3384:
;naveAtaques.c,1051 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3393:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3393
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3393
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3393
	NOP
	NOP
;naveAtaques.c,1052 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1054 :: 		case 4:
L_Ataque3394:
;naveAtaques.c,1055 :: 		Lcd_chr (2,13, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1056 :: 		armazena_pos_inimigo1 = 0b00001100;
	MOVLW       12
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1057 :: 		testa_inimigo2 =  0b00001101;
	MOVLW       13
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1058 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1059 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1060 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1061 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3935
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3935:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3395
;naveAtaques.c,1062 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1063 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1064 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1065 :: 		}
L_Ataque3395:
;naveAtaques.c,1066 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3396
;naveAtaques.c,1067 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3397
;naveAtaques.c,1068 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3398
L_Ataque3397:
;naveAtaques.c,1069 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3401
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3401
L__Ataque3801:
;naveAtaques.c,1070 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1071 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1072 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1073 :: 		}
L_Ataque3401:
L_Ataque3398:
;naveAtaques.c,1074 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1075 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3936
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3936:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3800
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3800
	GOTO        L_Ataque3404
L__Ataque3800:
;naveAtaques.c,1076 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3404:
;naveAtaques.c,1077 :: 		}
L_Ataque3396:
;naveAtaques.c,1078 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3405:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3405
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3405
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3405
	NOP
	NOP
;naveAtaques.c,1079 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1081 :: 		case 5:
L_Ataque3406:
;naveAtaques.c,1082 :: 		Lcd_chr (2,12, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1083 :: 		armazena_pos_inimigo1 = 0b00001011;
	MOVLW       11
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1084 :: 		testa_inimigo2 =  0b00001100;
	MOVLW       12
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1085 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1086 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1087 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1088 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3937
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3937:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3407
;naveAtaques.c,1089 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1090 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1091 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1092 :: 		}
L_Ataque3407:
;naveAtaques.c,1093 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3408
;naveAtaques.c,1094 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3409
;naveAtaques.c,1095 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3410
L_Ataque3409:
;naveAtaques.c,1096 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3413
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3413
L__Ataque3799:
;naveAtaques.c,1097 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1098 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1099 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1100 :: 		}
L_Ataque3413:
L_Ataque3410:
;naveAtaques.c,1101 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1102 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3938
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3938:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3798
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3798
	GOTO        L_Ataque3416
L__Ataque3798:
;naveAtaques.c,1103 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3416:
;naveAtaques.c,1104 :: 		}
L_Ataque3408:
;naveAtaques.c,1105 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3417:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3417
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3417
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3417
	NOP
	NOP
;naveAtaques.c,1106 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1108 :: 		case 6:
L_Ataque3418:
;naveAtaques.c,1109 :: 		Lcd_chr (2,11, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1110 :: 		armazena_pos_inimigo1 = 0b00001010;
	MOVLW       10
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1111 :: 		testa_inimigo2 =  0b00001011;
	MOVLW       11
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1112 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1113 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1114 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1115 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3939
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3939:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3419
;naveAtaques.c,1116 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1117 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1118 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1119 :: 		}
L_Ataque3419:
;naveAtaques.c,1120 :: 		if (explode_nave == 0b0000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3420
;naveAtaques.c,1121 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3421
;naveAtaques.c,1122 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3422
L_Ataque3421:
;naveAtaques.c,1123 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3425
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3425
L__Ataque3797:
;naveAtaques.c,1124 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1125 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1126 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1127 :: 		}
L_Ataque3425:
L_Ataque3422:
;naveAtaques.c,1129 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1130 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3940
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3940:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3796
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3796
	GOTO        L_Ataque3428
L__Ataque3796:
;naveAtaques.c,1131 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3428:
;naveAtaques.c,1132 :: 		}
L_Ataque3420:
;naveAtaques.c,1133 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3429:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3429
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3429
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3429
	NOP
	NOP
;naveAtaques.c,1134 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1136 :: 		case 7:
L_Ataque3430:
;naveAtaques.c,1137 :: 		Lcd_chr (2,10, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1138 :: 		armazena_pos_inimigo1 = 0b00001001;
	MOVLW       9
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1139 :: 		testa_inimigo2 =  0b00001010;
	MOVLW       10
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1140 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1141 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1142 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1143 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3941
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3941:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3431
;naveAtaques.c,1144 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1145 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1146 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1147 :: 		}
L_Ataque3431:
;naveAtaques.c,1148 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3432
;naveAtaques.c,1149 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3433
;naveAtaques.c,1150 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3434
L_Ataque3433:
;naveAtaques.c,1151 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3437
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3437
L__Ataque3795:
;naveAtaques.c,1152 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1153 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1154 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1155 :: 		}
L_Ataque3437:
L_Ataque3434:
;naveAtaques.c,1156 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1157 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3942
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3942:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3794
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3794
	GOTO        L_Ataque3440
L__Ataque3794:
;naveAtaques.c,1158 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3440:
;naveAtaques.c,1159 :: 		}
L_Ataque3432:
;naveAtaques.c,1160 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3441:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3441
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3441
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3441
	NOP
	NOP
;naveAtaques.c,1161 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1163 :: 		case 8:
L_Ataque3442:
;naveAtaques.c,1164 :: 		Lcd_chr (2,9, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1165 :: 		armazena_pos_inimigo1 = 0b00001000;
	MOVLW       8
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1166 :: 		testa_inimigo2 =  0b00001001;
	MOVLW       9
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1167 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1168 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1169 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1170 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3943
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3943:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3443
;naveAtaques.c,1171 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1172 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1173 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1174 :: 		}
L_Ataque3443:
;naveAtaques.c,1175 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3444
;naveAtaques.c,1176 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3445
;naveAtaques.c,1177 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3446
L_Ataque3445:
;naveAtaques.c,1178 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3449
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3449
L__Ataque3793:
;naveAtaques.c,1179 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1180 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1181 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1182 :: 		}
L_Ataque3449:
L_Ataque3446:
;naveAtaques.c,1183 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1184 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3944
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3944:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3792
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3792
	GOTO        L_Ataque3452
L__Ataque3792:
;naveAtaques.c,1185 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3452:
;naveAtaques.c,1186 :: 		}
L_Ataque3444:
;naveAtaques.c,1187 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3453:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3453
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3453
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3453
	NOP
	NOP
;naveAtaques.c,1188 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1190 :: 		case 9:
L_Ataque3454:
;naveAtaques.c,1191 :: 		Lcd_chr (2,8, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1192 :: 		armazena_pos_inimigo1 = 0b00000111;
	MOVLW       7
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1193 :: 		testa_inimigo2 =  0b00001000;
	MOVLW       8
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1194 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1195 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1196 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1197 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3945
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3945:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3455
;naveAtaques.c,1198 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1199 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1200 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1201 :: 		}
L_Ataque3455:
;naveAtaques.c,1202 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3456
;naveAtaques.c,1203 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3457
;naveAtaques.c,1204 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3458
L_Ataque3457:
;naveAtaques.c,1205 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3461
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3461
L__Ataque3791:
;naveAtaques.c,1206 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1207 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1208 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1209 :: 		}
L_Ataque3461:
L_Ataque3458:
;naveAtaques.c,1210 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1211 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3946
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3946:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3790
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3790
	GOTO        L_Ataque3464
L__Ataque3790:
;naveAtaques.c,1212 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3464:
;naveAtaques.c,1213 :: 		}
L_Ataque3456:
;naveAtaques.c,1214 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3465:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3465
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3465
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3465
	NOP
	NOP
;naveAtaques.c,1215 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1217 :: 		case 10:
L_Ataque3466:
;naveAtaques.c,1218 :: 		Lcd_chr (2,7, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1219 :: 		armazena_pos_inimigo1 = 0b00000110;
	MOVLW       6
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1220 :: 		testa_inimigo2 =  0b00000111;
	MOVLW       7
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1221 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1222 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1223 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1224 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3947
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3947:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3467
;naveAtaques.c,1225 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1226 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1227 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1228 :: 		}
L_Ataque3467:
;naveAtaques.c,1229 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3468
;naveAtaques.c,1230 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3469
;naveAtaques.c,1231 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3470
L_Ataque3469:
;naveAtaques.c,1232 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3473
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3473
L__Ataque3789:
;naveAtaques.c,1233 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1234 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1235 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1236 :: 		}
L_Ataque3473:
L_Ataque3470:
;naveAtaques.c,1237 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1238 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3948
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3948:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3788
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3788
	GOTO        L_Ataque3476
L__Ataque3788:
;naveAtaques.c,1239 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3476:
;naveAtaques.c,1240 :: 		}
L_Ataque3468:
;naveAtaques.c,1241 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3477:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3477
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3477
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3477
	NOP
	NOP
;naveAtaques.c,1242 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1244 :: 		case 11:
L_Ataque3478:
;naveAtaques.c,1245 :: 		Lcd_chr (2,6, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1246 :: 		armazena_pos_inimigo1 = 0b00000101;
	MOVLW       5
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1247 :: 		testa_inimigo2 =  0b00000110;
	MOVLW       6
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1248 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1249 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1250 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1251 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3949
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3949:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3479
;naveAtaques.c,1252 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1253 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1254 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1255 :: 		}
L_Ataque3479:
;naveAtaques.c,1256 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3480
;naveAtaques.c,1257 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3481
;naveAtaques.c,1258 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3482
L_Ataque3481:
;naveAtaques.c,1259 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3485
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3485
L__Ataque3787:
;naveAtaques.c,1260 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1261 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1262 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1263 :: 		}
L_Ataque3485:
L_Ataque3482:
;naveAtaques.c,1264 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1265 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 1)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3950
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3950:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3786
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3786
	GOTO        L_Ataque3488
L__Ataque3786:
;naveAtaques.c,1266 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3488:
;naveAtaques.c,1267 :: 		}
L_Ataque3480:
;naveAtaques.c,1268 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3489:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3489
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3489
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3489
	NOP
	NOP
;naveAtaques.c,1269 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1271 :: 		case 12:
L_Ataque3490:
;naveAtaques.c,1272 :: 		Lcd_chr (2,5, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1273 :: 		armazena_pos_inimigo1 = 0b00000100;
	MOVLW       4
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1274 :: 		testa_inimigo2 =  0b00000101;
	MOVLW       5
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1275 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1276 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1277 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1278 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3951
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3951:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3491
;naveAtaques.c,1279 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1280 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1281 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1282 :: 		}
L_Ataque3491:
;naveAtaques.c,1283 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3492
;naveAtaques.c,1284 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3493
;naveAtaques.c,1285 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3494
L_Ataque3493:
;naveAtaques.c,1286 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3497
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3497
L__Ataque3785:
;naveAtaques.c,1287 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1288 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1289 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1290 :: 		}
L_Ataque3497:
L_Ataque3494:
;naveAtaques.c,1291 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1292 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3952
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3952:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3784
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3784
	GOTO        L_Ataque3500
L__Ataque3784:
;naveAtaques.c,1293 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3500:
;naveAtaques.c,1294 :: 		}
L_Ataque3492:
;naveAtaques.c,1295 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3501:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3501
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3501
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3501
	NOP
	NOP
;naveAtaques.c,1296 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1298 :: 		case 13:
L_Ataque3502:
;naveAtaques.c,1299 :: 		Lcd_chr (2,4, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1300 :: 		armazena_pos_inimigo1 = 0b00000011;
	MOVLW       3
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1301 :: 		testa_inimigo2 =  0b00000100;
	MOVLW       4
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1302 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1303 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1304 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1305 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3953
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3953:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3503
;naveAtaques.c,1306 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1307 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1308 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1309 :: 		}
L_Ataque3503:
;naveAtaques.c,1310 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3504
;naveAtaques.c,1311 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3505
;naveAtaques.c,1312 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3506
L_Ataque3505:
;naveAtaques.c,1313 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3509
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3509
L__Ataque3783:
;naveAtaques.c,1314 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1315 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1316 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1317 :: 		}
L_Ataque3509:
L_Ataque3506:
;naveAtaques.c,1318 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1319 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3954
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3954:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3782
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3782
	GOTO        L_Ataque3512
L__Ataque3782:
;naveAtaques.c,1320 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3512:
;naveAtaques.c,1321 :: 		}
L_Ataque3504:
;naveAtaques.c,1322 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3513:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3513
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3513
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3513
	NOP
	NOP
;naveAtaques.c,1323 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1325 :: 		case 14:
L_Ataque3514:
;naveAtaques.c,1326 :: 		Lcd_chr (2,3, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1327 :: 		armazena_pos_inimigo1 = 0b00000010;
	MOVLW       2
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1328 :: 		testa_inimigo2 =  0b00000011;
	MOVLW       3
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1329 :: 		pos_inimigo_final = 0b000000010;
	MOVLW       2
	MOVWF       _pos_inimigo_final+0 
;naveAtaques.c,1330 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1331 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1332 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1333 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3955
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3955:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3515
;naveAtaques.c,1334 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1335 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1336 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1337 :: 		}
L_Ataque3515:
;naveAtaques.c,1338 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3516
;naveAtaques.c,1339 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3517
;naveAtaques.c,1340 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3518
L_Ataque3517:
;naveAtaques.c,1341 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3521
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3521
L__Ataque3781:
;naveAtaques.c,1342 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1343 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1344 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1345 :: 		}
L_Ataque3521:
L_Ataque3518:
;naveAtaques.c,1346 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1347 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3956
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3956:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3780
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3780
	GOTO        L_Ataque3524
L__Ataque3780:
;naveAtaques.c,1348 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
L_Ataque3524:
;naveAtaques.c,1349 :: 		}
L_Ataque3516:
;naveAtaques.c,1350 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3525:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3525
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3525
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3525
	NOP
	NOP
;naveAtaques.c,1351 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1353 :: 		case 15:
L_Ataque3526:
;naveAtaques.c,1354 :: 		Lcd_chr (2,2, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1355 :: 		armazena_pos_inimigo1 = 0b00000001;
	MOVLW       1
	MOVWF       _armazena_pos_inimigo1+0 
;naveAtaques.c,1356 :: 		testa_inimigo2 =  0b00000010;
	MOVLW       2
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1357 :: 		pos_inimigo_final = 0b00000001;
	MOVLW       1
	MOVWF       _pos_inimigo_final+0 
;naveAtaques.c,1358 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1359 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1360 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1361 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3957
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3957:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3527
;naveAtaques.c,1362 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
;naveAtaques.c,1363 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1364 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque3_explode_nave_L0+0 
;naveAtaques.c,1365 :: 		}
L_Ataque3527:
;naveAtaques.c,1366 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque3_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3528
;naveAtaques.c,1367 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3529
;naveAtaques.c,1368 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque3530
L_Ataque3529:
;naveAtaques.c,1369 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque3533
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3533
L__Ataque3779:
;naveAtaques.c,1370 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1371 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1372 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1373 :: 		}
L_Ataque3533:
L_Ataque3530:
;naveAtaques.c,1374 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1375 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3958
	MOVLW       1
	XORWF       R0, 0 
L__Ataque3958:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3778
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque3778
	GOTO        L_Ataque3536
L__Ataque3778:
;naveAtaques.c,1376 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque3_i_L0+0 
	MOVLW       0
	MOVWF       Ataque3_i_L0+1 
	GOTO        L_Ataque3537
L_Ataque3536:
;naveAtaques.c,1377 :: 		else  if (pos_inimigo_final == 0b00000001)
	MOVF        _pos_inimigo_final+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque3538
;naveAtaques.c,1378 :: 		GameOver();
	CALL        _GameOver+0, 0
L_Ataque3538:
L_Ataque3537:
;naveAtaques.c,1379 :: 		}
L_Ataque3528:
;naveAtaques.c,1380 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque3539:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque3539
	DECFSZ      R12, 1, 1
	BRA         L_Ataque3539
	DECFSZ      R11, 1, 1
	BRA         L_Ataque3539
	NOP
	NOP
;naveAtaques.c,1381 :: 		break;
	GOTO        L_Ataque3363
;naveAtaques.c,1382 :: 		}
L_Ataque3362:
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3959
	MOVLW       1
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3959:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3364
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3960
	MOVLW       2
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3960:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3370
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3961
	MOVLW       3
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3961:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3382
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3962
	MOVLW       4
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3962:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3394
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3963
	MOVLW       5
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3963:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3406
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3964
	MOVLW       6
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3964:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3418
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3965
	MOVLW       7
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3965:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3430
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3966
	MOVLW       8
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3966:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3442
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3967
	MOVLW       9
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3967:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3454
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3968
	MOVLW       10
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3968:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3466
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3969
	MOVLW       11
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3969:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3478
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3970
	MOVLW       12
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3970:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3490
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3971
	MOVLW       13
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3971:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3502
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3972
	MOVLW       14
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3972:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3514
	MOVLW       0
	XORWF       Ataque3_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque3973
	MOVLW       15
	XORWF       Ataque3_i_L0+0, 0 
L__Ataque3973:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque3526
L_Ataque3363:
;naveAtaques.c,1383 :: 		i++;
	INFSNZ      Ataque3_i_L0+0, 1 
	INCF        Ataque3_i_L0+1, 1 
;naveAtaques.c,1384 :: 		}
	GOTO        L_Ataque3360
L_Ataque3361:
;naveAtaques.c,1386 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;naveAtaques.c,1388 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;naveAtaques.c,1389 :: 		testa_inimigo2 = 0b00000000;
	CLRF        _testa_inimigo2+0 
;naveAtaques.c,1390 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;naveAtaques.c,1391 :: 		armazena_pos_inimigo1 = 0b00000000;
	CLRF        _armazena_pos_inimigo1+0 
;naveAtaques.c,1392 :: 		armazena_pos_inimigo2 = 0b00000000;
	CLRF        _armazena_pos_inimigo2+0 
;naveAtaques.c,1393 :: 		armazena_pos_inimigo3 = 0b00000000;
	CLRF        _armazena_pos_inimigo3+0 
;naveAtaques.c,1394 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;naveAtaques.c,1395 :: 		testa_primeira_explosao = 0b00000000;
	CLRF        _testa_primeira_explosao+0 
;naveAtaques.c,1396 :: 		explode_nave = 0b00000000;
	CLRF        Ataque3_explode_nave_L0+0 
;naveAtaques.c,1397 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1398 :: 		especial = 0;
	CLRF        _especial+0 
;naveAtaques.c,1400 :: 		}// final Ataque3
L_end_Ataque3:
	RETURN      0
; end of _Ataque3

_Ataque4:

;naveAtaques.c,1414 :: 		void Ataque4 (){
;naveAtaques.c,1416 :: 		int i = 0b00000000;
	CLRF        Ataque4_i_L0+0 
	CLRF        Ataque4_i_L0+1 
	CLRF        Ataque4_explode_nave_L0+0 
;naveAtaques.c,1421 :: 		while (i<16){
L_Ataque4540:
	MOVLW       128
	XORWF       Ataque4_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4975
	MOVLW       16
	SUBWF       Ataque4_i_L0+0, 0 
L__Ataque4975:
	BTFSC       STATUS+0, 0 
	GOTO        L_Ataque4541
;naveAtaques.c,1422 :: 		linha2 = 0b00000010;
	MOVLW       2
	MOVWF       _linha2+0 
;naveAtaques.c,1423 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;naveAtaques.c,1424 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1425 :: 		switch (i) {
	GOTO        L_Ataque4542
;naveAtaques.c,1426 :: 		case 1:
L_Ataque4544:
;naveAtaques.c,1427 :: 		Lcd_chr (2,16, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1428 :: 		armazena_pos_inimigo3 = 0b00001111;
	MOVLW       15
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1429 :: 		testa_inimigo2 =  0b00010000;
	MOVLW       16
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1431 :: 		if ((button(&PORTD, 2, 200, 1))){
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
	GOTO        L_Ataque4545
;naveAtaques.c,1432 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1433 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1434 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1435 :: 		}
L_Ataque4545:
;naveAtaques.c,1437 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1438 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4976
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4976:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4835
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4835
	GOTO        L_Ataque4548
L__Ataque4835:
;naveAtaques.c,1439 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4548:
;naveAtaques.c,1441 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4549:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4549
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4549
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4549
	NOP
	NOP
;naveAtaques.c,1442 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1444 :: 		case 2:
L_Ataque4550:
;naveAtaques.c,1445 :: 		Lcd_chr (2,15, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1446 :: 		armazena_pos_inimigo3 = 0b00001110;
	MOVLW       14
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1447 :: 		testa_inimigo2 =  0b00001111;
	MOVLW       15
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1449 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1450 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1452 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1453 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4977
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4977:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4551
;naveAtaques.c,1454 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1455 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1456 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1457 :: 		}
L_Ataque4551:
;naveAtaques.c,1459 :: 		if (explode_nave == 0){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4552
;naveAtaques.c,1460 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4553
;naveAtaques.c,1461 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4554
L_Ataque4553:
;naveAtaques.c,1463 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4557
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4557
L__Ataque4834:
;naveAtaques.c,1464 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1465 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1466 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1467 :: 		}
L_Ataque4557:
L_Ataque4554:
;naveAtaques.c,1469 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1470 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4978
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4978:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4833
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4833
	GOTO        L_Ataque4560
L__Ataque4833:
;naveAtaques.c,1471 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4560:
;naveAtaques.c,1472 :: 		}
L_Ataque4552:
;naveAtaques.c,1473 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4561:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4561
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4561
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4561
	NOP
	NOP
;naveAtaques.c,1474 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1476 :: 		case 3:
L_Ataque4562:
;naveAtaques.c,1477 :: 		Lcd_chr (2,14, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1478 :: 		armazena_pos_inimigo3 = 0b00001101;
	MOVLW       13
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1479 :: 		testa_inimigo2 =  0b00001110;
	MOVLW       14
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1481 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1482 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1484 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1485 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4979
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4979:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4563
;naveAtaques.c,1486 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1487 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1488 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1489 :: 		}
L_Ataque4563:
;naveAtaques.c,1491 :: 		if (explode_nave == 0){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4564
;naveAtaques.c,1492 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4565
;naveAtaques.c,1493 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4566
L_Ataque4565:
;naveAtaques.c,1495 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4569
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4569
L__Ataque4832:
;naveAtaques.c,1496 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1497 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1498 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1499 :: 		}
L_Ataque4569:
L_Ataque4566:
;naveAtaques.c,1501 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1502 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4980
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4980:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4831
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4831
	GOTO        L_Ataque4572
L__Ataque4831:
;naveAtaques.c,1503 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4572:
;naveAtaques.c,1504 :: 		}
L_Ataque4564:
;naveAtaques.c,1505 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4573:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4573
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4573
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4573
	NOP
	NOP
;naveAtaques.c,1506 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1508 :: 		case 4:
L_Ataque4574:
;naveAtaques.c,1509 :: 		Lcd_chr (2,13, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1510 :: 		armazena_pos_inimigo3 = 0b00001100;
	MOVLW       12
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1511 :: 		testa_inimigo2 =  0b00001101;
	MOVLW       13
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1513 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1514 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1516 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1517 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4981
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4981:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4575
;naveAtaques.c,1518 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1519 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1520 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1521 :: 		}
L_Ataque4575:
;naveAtaques.c,1523 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4576
;naveAtaques.c,1524 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4577
;naveAtaques.c,1525 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4578
L_Ataque4577:
;naveAtaques.c,1527 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4581
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4581
L__Ataque4830:
;naveAtaques.c,1528 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1529 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1530 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1531 :: 		}
L_Ataque4581:
L_Ataque4578:
;naveAtaques.c,1533 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1534 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4982
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4982:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4829
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4829
	GOTO        L_Ataque4584
L__Ataque4829:
;naveAtaques.c,1535 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4584:
;naveAtaques.c,1536 :: 		}
L_Ataque4576:
;naveAtaques.c,1537 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4585:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4585
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4585
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4585
	NOP
	NOP
;naveAtaques.c,1538 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1540 :: 		case 5:
L_Ataque4586:
;naveAtaques.c,1541 :: 		Lcd_chr (2,12, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1542 :: 		armazena_pos_inimigo3 = 0b00001011;
	MOVLW       11
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1543 :: 		testa_inimigo2 =  0b00001100;
	MOVLW       12
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1545 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1546 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1548 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1549 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4983
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4983:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4587
;naveAtaques.c,1550 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1551 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1552 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1553 :: 		}
L_Ataque4587:
;naveAtaques.c,1555 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4588
;naveAtaques.c,1556 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4589
;naveAtaques.c,1557 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4590
L_Ataque4589:
;naveAtaques.c,1559 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4593
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4593
L__Ataque4828:
;naveAtaques.c,1560 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1561 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1562 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1563 :: 		}
L_Ataque4593:
L_Ataque4590:
;naveAtaques.c,1565 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1566 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4984
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4984:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4827
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4827
	GOTO        L_Ataque4596
L__Ataque4827:
;naveAtaques.c,1567 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4596:
;naveAtaques.c,1568 :: 		}
L_Ataque4588:
;naveAtaques.c,1569 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4597:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4597
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4597
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4597
	NOP
	NOP
;naveAtaques.c,1570 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1572 :: 		case 6:
L_Ataque4598:
;naveAtaques.c,1573 :: 		Lcd_chr (2,11, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1574 :: 		armazena_pos_inimigo3 = 0b00001010;
	MOVLW       10
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1575 :: 		testa_inimigo2 =  0b00001011;
	MOVLW       11
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1577 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1578 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1580 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1581 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4985
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4985:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4599
;naveAtaques.c,1582 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1583 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1584 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1585 :: 		}
L_Ataque4599:
;naveAtaques.c,1587 :: 		if (explode_nave == 0b0000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4600
;naveAtaques.c,1588 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4601
;naveAtaques.c,1589 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4602
L_Ataque4601:
;naveAtaques.c,1591 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4605
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4605
L__Ataque4826:
;naveAtaques.c,1592 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1593 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1594 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1595 :: 		}
L_Ataque4605:
L_Ataque4602:
;naveAtaques.c,1597 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1598 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4986
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4986:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4825
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4825
	GOTO        L_Ataque4608
L__Ataque4825:
;naveAtaques.c,1599 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4608:
;naveAtaques.c,1600 :: 		}
L_Ataque4600:
;naveAtaques.c,1601 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4609:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4609
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4609
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4609
	NOP
	NOP
;naveAtaques.c,1602 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1604 :: 		case 7:
L_Ataque4610:
;naveAtaques.c,1605 :: 		Lcd_chr (2,10, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1606 :: 		armazena_pos_inimigo3 = 0b00001001;
	MOVLW       9
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1607 :: 		testa_inimigo2 =  0b00001010;
	MOVLW       10
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1609 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1610 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1612 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1613 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4987
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4987:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4611
;naveAtaques.c,1614 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1615 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1616 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1617 :: 		}
L_Ataque4611:
;naveAtaques.c,1619 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4612
;naveAtaques.c,1620 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4613
;naveAtaques.c,1621 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4614
L_Ataque4613:
;naveAtaques.c,1623 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4617
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4617
L__Ataque4824:
;naveAtaques.c,1624 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1625 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1626 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1627 :: 		}
L_Ataque4617:
L_Ataque4614:
;naveAtaques.c,1629 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1630 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4988
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4988:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4823
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4823
	GOTO        L_Ataque4620
L__Ataque4823:
;naveAtaques.c,1631 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4620:
;naveAtaques.c,1632 :: 		}
L_Ataque4612:
;naveAtaques.c,1633 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4621:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4621
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4621
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4621
	NOP
	NOP
;naveAtaques.c,1634 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1636 :: 		case 8:
L_Ataque4622:
;naveAtaques.c,1637 :: 		Lcd_chr (2,9, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1638 :: 		armazena_pos_inimigo3 = 0b00001000;
	MOVLW       8
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1639 :: 		testa_inimigo2 =  0b00001001;
	MOVLW       9
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1641 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1642 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1644 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1645 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4989
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4989:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4623
;naveAtaques.c,1646 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1647 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1648 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1649 :: 		}
L_Ataque4623:
;naveAtaques.c,1651 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4624
;naveAtaques.c,1652 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4625
;naveAtaques.c,1653 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4626
L_Ataque4625:
;naveAtaques.c,1655 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4629
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4629
L__Ataque4822:
;naveAtaques.c,1656 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1657 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1658 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1659 :: 		}
L_Ataque4629:
L_Ataque4626:
;naveAtaques.c,1661 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1662 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4990
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4990:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4821
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4821
	GOTO        L_Ataque4632
L__Ataque4821:
;naveAtaques.c,1663 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4632:
;naveAtaques.c,1664 :: 		}
L_Ataque4624:
;naveAtaques.c,1665 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4633:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4633
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4633
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4633
	NOP
	NOP
;naveAtaques.c,1666 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1668 :: 		case 9:
L_Ataque4634:
;naveAtaques.c,1669 :: 		Lcd_chr (2,8, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1670 :: 		armazena_pos_inimigo3 = 0b00000111;
	MOVLW       7
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1671 :: 		testa_inimigo2 =  0b00001000;
	MOVLW       8
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1673 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1674 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1676 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1677 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4991
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4991:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4635
;naveAtaques.c,1678 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1679 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1680 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1681 :: 		}
L_Ataque4635:
;naveAtaques.c,1682 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4636
;naveAtaques.c,1683 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4637
;naveAtaques.c,1684 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4638
L_Ataque4637:
;naveAtaques.c,1686 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4641
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4641
L__Ataque4820:
;naveAtaques.c,1687 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1688 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1689 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1690 :: 		}
L_Ataque4641:
L_Ataque4638:
;naveAtaques.c,1692 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1693 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4992
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4992:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4819
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4819
	GOTO        L_Ataque4644
L__Ataque4819:
;naveAtaques.c,1694 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4644:
;naveAtaques.c,1695 :: 		}
L_Ataque4636:
;naveAtaques.c,1696 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4645:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4645
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4645
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4645
	NOP
	NOP
;naveAtaques.c,1697 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1699 :: 		case 10:
L_Ataque4646:
;naveAtaques.c,1700 :: 		Lcd_chr (2,7, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1701 :: 		armazena_pos_inimigo3 = 0b00000110;
	MOVLW       6
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1702 :: 		testa_inimigo2 =  0b00000111;
	MOVLW       7
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1704 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1705 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1707 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1708 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4993
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4993:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4647
;naveAtaques.c,1709 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1710 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1711 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1712 :: 		}
L_Ataque4647:
;naveAtaques.c,1714 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4648
;naveAtaques.c,1715 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4649
;naveAtaques.c,1716 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4650
L_Ataque4649:
;naveAtaques.c,1718 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4653
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4653
L__Ataque4818:
;naveAtaques.c,1719 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1720 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1721 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1722 :: 		}
L_Ataque4653:
L_Ataque4650:
;naveAtaques.c,1724 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1725 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4994
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4994:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4817
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4817
	GOTO        L_Ataque4656
L__Ataque4817:
;naveAtaques.c,1726 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4656:
;naveAtaques.c,1727 :: 		}
L_Ataque4648:
;naveAtaques.c,1728 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4657:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4657
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4657
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4657
	NOP
	NOP
;naveAtaques.c,1729 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1731 :: 		case 11:
L_Ataque4658:
;naveAtaques.c,1732 :: 		Lcd_chr (2,6, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1733 :: 		armazena_pos_inimigo3 = 0b00000101;
	MOVLW       5
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1734 :: 		testa_inimigo2 =  0b00000110;
	MOVLW       6
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1736 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1737 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1739 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1740 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4995
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4995:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4659
;naveAtaques.c,1741 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1742 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1743 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1744 :: 		}
L_Ataque4659:
;naveAtaques.c,1746 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4660
;naveAtaques.c,1747 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4661
;naveAtaques.c,1748 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4662
L_Ataque4661:
;naveAtaques.c,1750 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4665
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4665
L__Ataque4816:
;naveAtaques.c,1751 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1752 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1753 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1754 :: 		}
L_Ataque4665:
L_Ataque4662:
;naveAtaques.c,1755 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1756 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 1)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4996
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4996:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4815
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4815
	GOTO        L_Ataque4668
L__Ataque4815:
;naveAtaques.c,1757 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4668:
;naveAtaques.c,1758 :: 		}
L_Ataque4660:
;naveAtaques.c,1759 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4669:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4669
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4669
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4669
	NOP
	NOP
;naveAtaques.c,1760 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1762 :: 		case 12:
L_Ataque4670:
;naveAtaques.c,1763 :: 		Lcd_chr (2,5, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1764 :: 		armazena_pos_inimigo3 = 0b00000100;
	MOVLW       4
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1765 :: 		testa_inimigo2 =  0b00000101;
	MOVLW       5
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1767 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1768 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1770 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1771 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4997
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4997:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4671
;naveAtaques.c,1772 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1773 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1774 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1775 :: 		}
L_Ataque4671:
;naveAtaques.c,1777 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4672
;naveAtaques.c,1778 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4673
;naveAtaques.c,1779 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4674
L_Ataque4673:
;naveAtaques.c,1781 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4677
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4677
L__Ataque4814:
;naveAtaques.c,1782 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1783 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1784 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1785 :: 		}
L_Ataque4677:
L_Ataque4674:
;naveAtaques.c,1787 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1788 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4998
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4998:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4813
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4813
	GOTO        L_Ataque4680
L__Ataque4813:
;naveAtaques.c,1789 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4680:
;naveAtaques.c,1791 :: 		}
L_Ataque4672:
;naveAtaques.c,1792 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4681:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4681
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4681
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4681
	NOP
	NOP
;naveAtaques.c,1793 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1795 :: 		case 13:
L_Ataque4682:
;naveAtaques.c,1796 :: 		Lcd_chr (2,4, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1797 :: 		armazena_pos_inimigo3 = 0b00000011;
	MOVLW       3
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1798 :: 		testa_inimigo2 =  0b00000100;
	MOVLW       4
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1800 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1801 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1803 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1804 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque4999
	MOVLW       1
	XORWF       R0, 0 
L__Ataque4999:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4683
;naveAtaques.c,1805 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1806 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1807 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1808 :: 		}
L_Ataque4683:
;naveAtaques.c,1810 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4684
;naveAtaques.c,1811 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4685
;naveAtaques.c,1812 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4686
L_Ataque4685:
;naveAtaques.c,1814 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4689
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4689
L__Ataque4812:
;naveAtaques.c,1815 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1816 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1817 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1818 :: 		}
L_Ataque4689:
L_Ataque4686:
;naveAtaques.c,1820 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1821 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41000
	MOVLW       1
	XORWF       R0, 0 
L__Ataque41000:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4811
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4811
	GOTO        L_Ataque4692
L__Ataque4811:
;naveAtaques.c,1822 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4692:
;naveAtaques.c,1823 :: 		}
L_Ataque4684:
;naveAtaques.c,1824 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4693:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4693
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4693
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4693
	NOP
	NOP
;naveAtaques.c,1825 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1827 :: 		case 14:
L_Ataque4694:
;naveAtaques.c,1828 :: 		Lcd_chr (2,3, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1829 :: 		armazena_pos_inimigo3 = 0b00000010;
	MOVLW       2
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1830 :: 		testa_inimigo2 =  0b00000011;
	MOVLW       3
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1831 :: 		pos_inimigo_final = 0b000000010;
	MOVLW       2
	MOVWF       _pos_inimigo_final+0 
;naveAtaques.c,1833 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1834 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1836 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1837 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41001
	MOVLW       1
	XORWF       R0, 0 
L__Ataque41001:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4695
;naveAtaques.c,1838 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1839 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1840 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1841 :: 		}
L_Ataque4695:
;naveAtaques.c,1843 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4696
;naveAtaques.c,1844 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4697
;naveAtaques.c,1845 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4698
L_Ataque4697:
;naveAtaques.c,1847 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4701
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4701
L__Ataque4810:
;naveAtaques.c,1848 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1849 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1850 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1851 :: 		}
L_Ataque4701:
L_Ataque4698:
;naveAtaques.c,1853 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1854 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41002
	MOVLW       1
	XORWF       R0, 0 
L__Ataque41002:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4809
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4809
	GOTO        L_Ataque4704
L__Ataque4809:
;naveAtaques.c,1855 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
L_Ataque4704:
;naveAtaques.c,1856 :: 		}
L_Ataque4696:
;naveAtaques.c,1857 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4705:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4705
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4705
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4705
	NOP
	NOP
;naveAtaques.c,1858 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1860 :: 		case 15:
L_Ataque4706:
;naveAtaques.c,1861 :: 		Lcd_chr (2,2, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;naveAtaques.c,1862 :: 		armazena_pos_inimigo3 = 0b00000001;
	MOVLW       1
	MOVWF       _armazena_pos_inimigo3+0 
;naveAtaques.c,1863 :: 		testa_inimigo2 =  0b00000010;
	MOVLW       2
	MOVWF       _testa_inimigo2+0 
;naveAtaques.c,1864 :: 		pos_inimigo_final = 0b00000001;
	MOVLW       1
	MOVWF       _pos_inimigo_final+0 
;naveAtaques.c,1866 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;naveAtaques.c,1867 :: 		EscreveEnterprise();
	CALL        _EscreveEnterprise+0, 0
;naveAtaques.c,1869 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1870 :: 		if (testa == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41003
	MOVLW       1
	XORWF       R0, 0 
L__Ataque41003:
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4707
;naveAtaques.c,1871 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
;naveAtaques.c,1872 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1873 :: 		explode_nave = 0b00000001;
	MOVLW       1
	MOVWF       Ataque4_explode_nave_L0+0 
;naveAtaques.c,1874 :: 		}
L_Ataque4707:
;naveAtaques.c,1876 :: 		if (explode_nave == 0b00000000){
	MOVF        Ataque4_explode_nave_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4708
;naveAtaques.c,1877 :: 		if (testa_tiro == 0b00000001)
	MOVF        _testa_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4709
;naveAtaques.c,1878 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
	GOTO        L_Ataque4710
L_Ataque4709:
;naveAtaques.c,1880 :: 		else if ((button(&PORTD, 2, 200, 1)) && (testa_tiro == 0b00000000)){
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
	GOTO        L_Ataque4713
	MOVF        _testa_tiro+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4713
L__Ataque4808:
;naveAtaques.c,1881 :: 		store_tiro = posicao_nave;
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;naveAtaques.c,1882 :: 		NaveTiro();
	CALL        _NaveTiro+0, 0
;naveAtaques.c,1883 :: 		testa_tiro = 0b00000001;
	MOVLW       1
	MOVWF       _testa_tiro+0 
;naveAtaques.c,1884 :: 		}
L_Ataque4713:
L_Ataque4710:
;naveAtaques.c,1886 :: 		testa = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;naveAtaques.c,1887 :: 		if (testa == 0b00000001 || testa_primeira_explosao == 0b00000001)
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41004
	MOVLW       1
	XORWF       R0, 0 
L__Ataque41004:
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4807
	MOVF        _testa_primeira_explosao+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__Ataque4807
	GOTO        L_Ataque4716
L__Ataque4807:
;naveAtaques.c,1888 :: 		i = 15;
	MOVLW       15
	MOVWF       Ataque4_i_L0+0 
	MOVLW       0
	MOVWF       Ataque4_i_L0+1 
	GOTO        L_Ataque4717
L_Ataque4716:
;naveAtaques.c,1890 :: 		else  if (pos_inimigo_final == 0b00000001)
	MOVF        _pos_inimigo_final+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Ataque4718
;naveAtaques.c,1891 :: 		GameOver();
	CALL        _GameOver+0, 0
L_Ataque4718:
L_Ataque4717:
;naveAtaques.c,1892 :: 		}
L_Ataque4708:
;naveAtaques.c,1893 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Ataque4719:
	DECFSZ      R13, 1, 1
	BRA         L_Ataque4719
	DECFSZ      R12, 1, 1
	BRA         L_Ataque4719
	DECFSZ      R11, 1, 1
	BRA         L_Ataque4719
	NOP
	NOP
;naveAtaques.c,1894 :: 		break;
	GOTO        L_Ataque4543
;naveAtaques.c,1895 :: 		}
L_Ataque4542:
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41005
	MOVLW       1
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41005:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4544
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41006
	MOVLW       2
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41006:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4550
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41007
	MOVLW       3
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41007:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4562
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41008
	MOVLW       4
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41008:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4574
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41009
	MOVLW       5
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41009:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4586
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41010
	MOVLW       6
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41010:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4598
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41011
	MOVLW       7
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41011:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4610
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41012
	MOVLW       8
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41012:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4622
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41013
	MOVLW       9
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41013:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4634
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41014
	MOVLW       10
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41014:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4646
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41015
	MOVLW       11
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41015:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4658
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41016
	MOVLW       12
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41016:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4670
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41017
	MOVLW       13
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41017:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4682
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41018
	MOVLW       14
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41018:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4694
	MOVLW       0
	XORWF       Ataque4_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Ataque41019
	MOVLW       15
	XORWF       Ataque4_i_L0+0, 0 
L__Ataque41019:
	BTFSC       STATUS+0, 2 
	GOTO        L_Ataque4706
L_Ataque4543:
;naveAtaques.c,1896 :: 		i++;
	INFSNZ      Ataque4_i_L0+0, 1 
	INCF        Ataque4_i_L0+1, 1 
;naveAtaques.c,1897 :: 		}
	GOTO        L_Ataque4540
L_Ataque4541:
;naveAtaques.c,1899 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;naveAtaques.c,1901 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;naveAtaques.c,1902 :: 		testa_inimigo2 = 0b00000000;
	CLRF        _testa_inimigo2+0 
;naveAtaques.c,1903 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;naveAtaques.c,1904 :: 		armazena_pos_inimigo1 = 0b00000000;
	CLRF        _armazena_pos_inimigo1+0 
;naveAtaques.c,1905 :: 		armazena_pos_inimigo2 = 0b00000000;
	CLRF        _armazena_pos_inimigo2+0 
;naveAtaques.c,1906 :: 		armazena_pos_inimigo3 = 0b00000000;
	CLRF        _armazena_pos_inimigo3+0 
;naveAtaques.c,1907 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;naveAtaques.c,1908 :: 		testa_primeira_explosao = 0b00000000;
	CLRF        _testa_primeira_explosao+0 
;naveAtaques.c,1909 :: 		explode_nave = 0b00000000;
	CLRF        Ataque4_explode_nave_L0+0 
;naveAtaques.c,1910 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;naveAtaques.c,1911 :: 		especial = 0;
	CLRF        _especial+0 
;naveAtaques.c,1912 :: 		}//~ final Ataque4
L_end_Ataque4:
	RETURN      0
; end of _Ataque4
