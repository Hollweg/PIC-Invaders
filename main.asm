
_main:

;MyProject.c,57 :: 		void main(){
;MyProject.c,63 :: 		TRISC = 0b00000000;
	CLRF        TRISC+0 
;MyProject.c,64 :: 		TRISD = 0b00001111;
	MOVLW       15
	MOVWF       TRISD+0 
;MyProject.c,66 :: 		PORTC = 0;
	CLRF        PORTC+0 
;MyProject.c,67 :: 		PORTD = 0;
	CLRF        PORTD+0 
;MyProject.c,69 :: 		ANSELA = 0;
	CLRF        ANSELA+0 
;MyProject.c,70 :: 		ANSELB = 0;
	CLRF        ANSELB+0 
;MyProject.c,71 :: 		ANSELC = 0;
	CLRF        ANSELC+0 
;MyProject.c,72 :: 		ANSELD = 0;
	CLRF        ANSELD+0 
;MyProject.c,74 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;MyProject.c,75 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,76 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,78 :: 		comeco:
___main_comeco:
;MyProject.c,80 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,81 :: 		Menu();
	CALL        _Menu+0, 0
;MyProject.c,82 :: 		CustomChar();
	CALL        _CustomChar+0, 0
;MyProject.c,83 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,85 :: 		inicio_jogo:
___main_inicio_jogo:
;MyProject.c,87 :: 		var_random = Random();                //Chama funcao randomica - Testado cada valor de acordo com funcao pré-definida
	CALL        _Random+0, 0
	MOVF        R0, 0 
	MOVWF       main_var_random_L0+0 
	MOVF        R1, 0 
	MOVWF       main_var_random_L0+1 
;MyProject.c,89 :: 		if (var_random == 1){                 //Executa rotina de acordo com a variavel randomica gerada pelo PIC
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main112
	MOVLW       1
	XORWF       R0, 0 
L__main112:
	BTFSS       STATUS+0, 2 
	GOTO        L_main0
;MyProject.c,91 :: 		for (k = 0; k<2; k++){            //Repete testes abaixo, mais 4 vezes
	CLRF        main_k_L0+0 
L_main1:
	MOVLW       128
	XORWF       main_k_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main2
;MyProject.c,92 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,93 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,94 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,95 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,96 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,97 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,98 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,91 :: 		for (k = 0; k<2; k++){            //Repete testes abaixo, mais 4 vezes
	INCF        main_k_L0+0, 1 
;MyProject.c,99 :: 		}
	GOTO        L_main1
L_main2:
;MyProject.c,100 :: 		k = 0;
	CLRF        main_k_L0+0 
;MyProject.c,101 :: 		testa_final = Boss();         //Testa o valor da funcao Boss
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,102 :: 		if (testa_final == 1)         //se 1, parabéns, jogo terminado e de volta a tela inicial  - reseta o game
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main4
;MyProject.c,103 :: 		goto comeco;              //se 0, a nave do usuário é destruída e o jogo é recomeçado
	GOTO        ___main_comeco
L_main4:
;MyProject.c,105 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main6
;MyProject.c,106 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,107 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,108 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
	NOP
;MyProject.c,109 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,110 :: 		}
L_main6:
;MyProject.c,112 :: 		Ataque3();                   //E chamará as funções Boss, 16 vezes, de modo que o usuário deva dividir os ataques no boss
	CALL        _Ataque3+0, 0
;MyProject.c,113 :: 		Ataque4();                   //de 1 a 1, a modo de destruí-los simultaneamente. Caso contrário, é game over e nave do usuário é destruida
	CALL        _Ataque4+0, 0
;MyProject.c,115 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,116 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main8
;MyProject.c,117 :: 		goto comeco;
	GOTO        ___main_comeco
L_main8:
;MyProject.c,119 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main10
;MyProject.c,120 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,121 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,122 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main11:
	DECFSZ      R13, 1, 1
	BRA         L_main11
	DECFSZ      R12, 1, 1
	BRA         L_main11
	DECFSZ      R11, 1, 1
	BRA         L_main11
	NOP
	NOP
;MyProject.c,123 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,124 :: 		}
L_main10:
;MyProject.c,125 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,126 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,128 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,129 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main12
;MyProject.c,130 :: 		goto comeco;
	GOTO        ___main_comeco
L_main12:
;MyProject.c,132 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main14
;MyProject.c,133 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,134 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,135 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main15:
	DECFSZ      R13, 1, 1
	BRA         L_main15
	DECFSZ      R12, 1, 1
	BRA         L_main15
	DECFSZ      R11, 1, 1
	BRA         L_main15
	NOP
	NOP
;MyProject.c,136 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,137 :: 		}
L_main14:
;MyProject.c,138 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,139 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,141 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,142 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main16
;MyProject.c,143 :: 		goto comeco;
	GOTO        ___main_comeco
L_main16:
;MyProject.c,145 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main18
;MyProject.c,146 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,147 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,148 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main19:
	DECFSZ      R13, 1, 1
	BRA         L_main19
	DECFSZ      R12, 1, 1
	BRA         L_main19
	DECFSZ      R11, 1, 1
	BRA         L_main19
	NOP
	NOP
;MyProject.c,149 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,150 :: 		}
L_main18:
;MyProject.c,151 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,152 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,154 :: 		if (game_over == 1){
	MOVF        _game_over+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main20
;MyProject.c,155 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,156 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main21
;MyProject.c,157 :: 		goto comeco;
	GOTO        ___main_comeco
L_main21:
;MyProject.c,159 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main23
;MyProject.c,160 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,161 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,162 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main24:
	DECFSZ      R13, 1, 1
	BRA         L_main24
	DECFSZ      R12, 1, 1
	BRA         L_main24
	DECFSZ      R11, 1, 1
	BRA         L_main24
	NOP
	NOP
;MyProject.c,163 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,164 :: 		}
L_main23:
;MyProject.c,165 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,166 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,168 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,169 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main25
;MyProject.c,170 :: 		goto comeco;
	GOTO        ___main_comeco
L_main25:
;MyProject.c,172 :: 		else if (testa_final == 0) {
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main27
;MyProject.c,173 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,174 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,175 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main28:
	DECFSZ      R13, 1, 1
	BRA         L_main28
	DECFSZ      R12, 1, 1
	BRA         L_main28
	DECFSZ      R11, 1, 1
	BRA         L_main28
	NOP
	NOP
;MyProject.c,176 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,177 :: 		}
L_main27:
;MyProject.c,179 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,180 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,182 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,183 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main29
;MyProject.c,184 :: 		goto comeco;
	GOTO        ___main_comeco
L_main29:
;MyProject.c,186 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main31
;MyProject.c,187 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,188 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,189 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main32:
	DECFSZ      R13, 1, 1
	BRA         L_main32
	DECFSZ      R12, 1, 1
	BRA         L_main32
	DECFSZ      R11, 1, 1
	BRA         L_main32
	NOP
	NOP
;MyProject.c,190 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,191 :: 		}
L_main31:
;MyProject.c,193 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,194 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,196 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,197 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main33
;MyProject.c,198 :: 		goto comeco;
	GOTO        ___main_comeco
L_main33:
;MyProject.c,200 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main35
;MyProject.c,201 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,202 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,203 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main36:
	DECFSZ      R13, 1, 1
	BRA         L_main36
	DECFSZ      R12, 1, 1
	BRA         L_main36
	DECFSZ      R11, 1, 1
	BRA         L_main36
	NOP
	NOP
;MyProject.c,204 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,205 :: 		}
L_main35:
;MyProject.c,206 :: 		}
L_main20:
;MyProject.c,207 :: 		}
	GOTO        L_main37
L_main0:
;MyProject.c,208 :: 		else if (var_random == 2){
	MOVLW       0
	XORWF       main_var_random_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main113
	MOVLW       2
	XORWF       main_var_random_L0+0, 0 
L__main113:
	BTFSS       STATUS+0, 2 
	GOTO        L_main38
;MyProject.c,209 :: 		for (k = 0; k<2; k++){
	CLRF        main_k_L0+0 
L_main39:
	MOVLW       128
	XORWF       main_k_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main40
;MyProject.c,210 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,211 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,212 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,213 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,214 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,215 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,216 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,217 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,218 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,219 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,209 :: 		for (k = 0; k<2; k++){
	INCF        main_k_L0+0, 1 
;MyProject.c,220 :: 		}
	GOTO        L_main39
L_main40:
;MyProject.c,222 :: 		k = 0;
	CLRF        main_k_L0+0 
;MyProject.c,223 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,224 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main42
;MyProject.c,225 :: 		goto comeco;
	GOTO        ___main_comeco
L_main42:
;MyProject.c,227 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main44
;MyProject.c,228 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,229 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,230 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main45:
	DECFSZ      R13, 1, 1
	BRA         L_main45
	DECFSZ      R12, 1, 1
	BRA         L_main45
	DECFSZ      R11, 1, 1
	BRA         L_main45
	NOP
	NOP
;MyProject.c,231 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,232 :: 		}
L_main44:
;MyProject.c,234 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,235 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,237 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,238 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main46
;MyProject.c,239 :: 		goto comeco;
	GOTO        ___main_comeco
L_main46:
;MyProject.c,241 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main48
;MyProject.c,242 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,243 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,244 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main49:
	DECFSZ      R13, 1, 1
	BRA         L_main49
	DECFSZ      R12, 1, 1
	BRA         L_main49
	DECFSZ      R11, 1, 1
	BRA         L_main49
	NOP
	NOP
;MyProject.c,245 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,246 :: 		}
L_main48:
;MyProject.c,247 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,248 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,250 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,251 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main50
;MyProject.c,252 :: 		goto comeco;
	GOTO        ___main_comeco
L_main50:
;MyProject.c,254 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main52
;MyProject.c,255 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,256 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,257 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main53:
	DECFSZ      R13, 1, 1
	BRA         L_main53
	DECFSZ      R12, 1, 1
	BRA         L_main53
	DECFSZ      R11, 1, 1
	BRA         L_main53
	NOP
	NOP
;MyProject.c,258 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,259 :: 		}
L_main52:
;MyProject.c,260 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,261 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,263 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,264 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main54
;MyProject.c,265 :: 		goto comeco;
	GOTO        ___main_comeco
L_main54:
;MyProject.c,267 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main56
;MyProject.c,268 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,269 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,270 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main57:
	DECFSZ      R13, 1, 1
	BRA         L_main57
	DECFSZ      R12, 1, 1
	BRA         L_main57
	DECFSZ      R11, 1, 1
	BRA         L_main57
	NOP
	NOP
;MyProject.c,271 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,272 :: 		}
L_main56:
;MyProject.c,273 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,274 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,276 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,277 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main58
;MyProject.c,278 :: 		goto comeco;
	GOTO        ___main_comeco
L_main58:
;MyProject.c,280 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main60
;MyProject.c,281 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,282 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,283 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main61:
	DECFSZ      R13, 1, 1
	BRA         L_main61
	DECFSZ      R12, 1, 1
	BRA         L_main61
	DECFSZ      R11, 1, 1
	BRA         L_main61
	NOP
	NOP
;MyProject.c,284 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,285 :: 		}
L_main60:
;MyProject.c,286 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,287 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,289 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,290 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main62
;MyProject.c,291 :: 		goto comeco;
	GOTO        ___main_comeco
L_main62:
;MyProject.c,293 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main64
;MyProject.c,294 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,295 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,296 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main65:
	DECFSZ      R13, 1, 1
	BRA         L_main65
	DECFSZ      R12, 1, 1
	BRA         L_main65
	DECFSZ      R11, 1, 1
	BRA         L_main65
	NOP
	NOP
;MyProject.c,297 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,298 :: 		}
L_main64:
;MyProject.c,299 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,300 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,302 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,303 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main66
;MyProject.c,304 :: 		goto comeco;
	GOTO        ___main_comeco
L_main66:
;MyProject.c,306 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main68
;MyProject.c,307 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,308 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,309 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main69:
	DECFSZ      R13, 1, 1
	BRA         L_main69
	DECFSZ      R12, 1, 1
	BRA         L_main69
	DECFSZ      R11, 1, 1
	BRA         L_main69
	NOP
	NOP
;MyProject.c,310 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,311 :: 		}
L_main68:
;MyProject.c,312 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,313 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,315 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,316 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main70
;MyProject.c,317 :: 		goto comeco;
	GOTO        ___main_comeco
L_main70:
;MyProject.c,319 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main72
;MyProject.c,320 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,321 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,322 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main73:
	DECFSZ      R13, 1, 1
	BRA         L_main73
	DECFSZ      R12, 1, 1
	BRA         L_main73
	DECFSZ      R11, 1, 1
	BRA         L_main73
	NOP
	NOP
;MyProject.c,323 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,324 :: 		}
L_main72:
;MyProject.c,325 :: 		}
	GOTO        L_main74
L_main38:
;MyProject.c,327 :: 		else if (var_random == 3){
	MOVLW       0
	XORWF       main_var_random_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main114
	MOVLW       3
	XORWF       main_var_random_L0+0, 0 
L__main114:
	BTFSS       STATUS+0, 2 
	GOTO        L_main75
;MyProject.c,328 :: 		for (k = 0; k<2; k++){
	CLRF        main_k_L0+0 
L_main76:
	MOVLW       128
	XORWF       main_k_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main77
;MyProject.c,329 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,330 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,331 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,332 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,333 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,334 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,335 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,336 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,337 :: 		especial = 0b00000001;
	MOVLW       1
	MOVWF       _especial+0 
;MyProject.c,328 :: 		for (k = 0; k<2; k++){
	INCF        main_k_L0+0, 1 
;MyProject.c,338 :: 		}
	GOTO        L_main76
L_main77:
;MyProject.c,340 :: 		k = 0;
	CLRF        main_k_L0+0 
;MyProject.c,342 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,343 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main79
;MyProject.c,344 :: 		goto comeco;
	GOTO        ___main_comeco
L_main79:
;MyProject.c,346 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main81
;MyProject.c,347 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,348 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,349 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main82:
	DECFSZ      R13, 1, 1
	BRA         L_main82
	DECFSZ      R12, 1, 1
	BRA         L_main82
	DECFSZ      R11, 1, 1
	BRA         L_main82
	NOP
	NOP
;MyProject.c,350 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,351 :: 		}
L_main81:
;MyProject.c,353 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,354 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,356 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,357 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main83
;MyProject.c,358 :: 		goto comeco;
	GOTO        ___main_comeco
L_main83:
;MyProject.c,360 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main85
;MyProject.c,361 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,362 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr18_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr18_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,363 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main86:
	DECFSZ      R13, 1, 1
	BRA         L_main86
	DECFSZ      R12, 1, 1
	BRA         L_main86
	DECFSZ      R11, 1, 1
	BRA         L_main86
	NOP
	NOP
;MyProject.c,364 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,365 :: 		}
L_main85:
;MyProject.c,366 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,367 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,369 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,370 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main87
;MyProject.c,371 :: 		goto comeco;
	GOTO        ___main_comeco
L_main87:
;MyProject.c,373 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main89
;MyProject.c,374 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,375 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr19_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr19_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,376 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main90:
	DECFSZ      R13, 1, 1
	BRA         L_main90
	DECFSZ      R12, 1, 1
	BRA         L_main90
	DECFSZ      R11, 1, 1
	BRA         L_main90
	NOP
	NOP
;MyProject.c,377 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,378 :: 		}
L_main89:
;MyProject.c,379 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,380 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,382 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,383 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main91
;MyProject.c,384 :: 		goto comeco;
	GOTO        ___main_comeco
L_main91:
;MyProject.c,386 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main93
;MyProject.c,387 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,388 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr20_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr20_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,389 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main94:
	DECFSZ      R13, 1, 1
	BRA         L_main94
	DECFSZ      R12, 1, 1
	BRA         L_main94
	DECFSZ      R11, 1, 1
	BRA         L_main94
	NOP
	NOP
;MyProject.c,390 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,391 :: 		}
L_main93:
;MyProject.c,392 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,393 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,395 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,396 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main95
;MyProject.c,397 :: 		goto comeco;
	GOTO        ___main_comeco
L_main95:
;MyProject.c,399 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main97
;MyProject.c,400 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,401 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr21_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr21_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,402 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main98:
	DECFSZ      R13, 1, 1
	BRA         L_main98
	DECFSZ      R12, 1, 1
	BRA         L_main98
	DECFSZ      R11, 1, 1
	BRA         L_main98
	NOP
	NOP
;MyProject.c,403 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,404 :: 		}
L_main97:
;MyProject.c,405 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,406 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,408 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,409 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main99
;MyProject.c,410 :: 		goto comeco;
	GOTO        ___main_comeco
L_main99:
;MyProject.c,412 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main101
;MyProject.c,413 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,414 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr22_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr22_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,415 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main102:
	DECFSZ      R13, 1, 1
	BRA         L_main102
	DECFSZ      R12, 1, 1
	BRA         L_main102
	DECFSZ      R11, 1, 1
	BRA         L_main102
	NOP
	NOP
;MyProject.c,416 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,417 :: 		}
L_main101:
;MyProject.c,418 :: 		Ataque1();
	CALL        _Ataque1+0, 0
;MyProject.c,419 :: 		Ataque2();
	CALL        _Ataque2+0, 0
;MyProject.c,421 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,422 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main103
;MyProject.c,423 :: 		goto comeco;
	GOTO        ___main_comeco
L_main103:
;MyProject.c,425 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main105
;MyProject.c,426 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,427 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr23_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr23_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,428 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main106:
	DECFSZ      R13, 1, 1
	BRA         L_main106
	DECFSZ      R12, 1, 1
	BRA         L_main106
	DECFSZ      R11, 1, 1
	BRA         L_main106
	NOP
	NOP
;MyProject.c,429 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,430 :: 		}
L_main105:
;MyProject.c,431 :: 		Ataque3();
	CALL        _Ataque3+0, 0
;MyProject.c,432 :: 		Ataque4();
	CALL        _Ataque4+0, 0
;MyProject.c,434 :: 		testa_final = Boss();
	CALL        _Boss+0, 0
	MOVF        R0, 0 
	MOVWF       main_testa_final_L0+0 
;MyProject.c,435 :: 		if (testa_final == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main107
;MyProject.c,436 :: 		goto comeco;
	GOTO        ___main_comeco
L_main107:
;MyProject.c,438 :: 		else if (testa_final == 0){
	MOVF        main_testa_final_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main109
;MyProject.c,439 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;MyProject.c,440 :: 		Lcd_Out (1, 4, "Nivel 1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr24_MyProject+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr24_MyProject+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;MyProject.c,441 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_main110:
	DECFSZ      R13, 1, 1
	BRA         L_main110
	DECFSZ      R12, 1, 1
	BRA         L_main110
	DECFSZ      R11, 1, 1
	BRA         L_main110
	NOP
	NOP
;MyProject.c,442 :: 		goto inicio_jogo;
	GOTO        ___main_inicio_jogo
;MyProject.c,443 :: 		}
L_main109:
;MyProject.c,444 :: 		}
L_main75:
L_main74:
L_main37:
;MyProject.c,445 :: 		}//~ final main
L_end_main:
	GOTO        $+0
; end of _main
