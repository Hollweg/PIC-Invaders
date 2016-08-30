
_GameOver:

;gameControle.c,17 :: 		int GameOver() {
;gameControle.c,19 :: 		short j = 0;
	CLRF        GameOver_j_L0+0 
;gameControle.c,20 :: 		for (j = 0; j<4; j++){
	CLRF        GameOver_j_L0+0 
L_GameOver0:
	MOVLW       128
	XORWF       GameOver_j_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       4
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_GameOver1
;gameControle.c,21 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,22 :: 		lcd_chr (1, 6, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,23 :: 		lcd_chr (1, 7, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,24 :: 		lcd_chr (1, 8, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,25 :: 		lcd_chr (1, 9, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,26 :: 		lcd_chr (1, 10, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,27 :: 		lcd_chr (2, 6, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,28 :: 		lcd_chr (2, 7, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,29 :: 		lcd_chr (2, 8, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,30 :: 		lcd_chr (2, 9, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,31 :: 		lcd_chr (2, 10, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,32 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_GameOver3:
	DECFSZ      R13, 1, 1
	BRA         L_GameOver3
	DECFSZ      R12, 1, 1
	BRA         L_GameOver3
	DECFSZ      R11, 1, 1
	BRA         L_GameOver3
	NOP
;gameControle.c,33 :: 		lcd_chr (1, 6, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,34 :: 		lcd_chr (1, 7, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,35 :: 		lcd_chr (1, 8, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,36 :: 		lcd_chr (1, 9, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,37 :: 		lcd_chr (1, 10, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,38 :: 		lcd_chr (2, 6, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,39 :: 		lcd_chr (2, 7, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,40 :: 		lcd_chr (2, 8, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,41 :: 		lcd_chr (2, 9, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,42 :: 		lcd_chr (2, 10, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,43 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_GameOver4:
	DECFSZ      R13, 1, 1
	BRA         L_GameOver4
	DECFSZ      R12, 1, 1
	BRA         L_GameOver4
	DECFSZ      R11, 1, 1
	BRA         L_GameOver4
	NOP
;gameControle.c,20 :: 		for (j = 0; j<4; j++){
	INCF        GameOver_j_L0+0, 1 
;gameControle.c,44 :: 		}
	GOTO        L_GameOver0
L_GameOver1:
;gameControle.c,46 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,47 :: 		Lcd_out (1,3, "GAME OVER!!!");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,48 :: 		delay_ms(3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_GameOver5:
	DECFSZ      R13, 1, 1
	BRA         L_GameOver5
	DECFSZ      R12, 1, 1
	BRA         L_GameOver5
	DECFSZ      R11, 1, 1
	BRA         L_GameOver5
	NOP
	NOP
;gameControle.c,50 :: 		if (boss_teste == 1) {
	MOVF        _Boss_teste+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_GameOver6
;gameControle.c,51 :: 		game_over = 1;
	MOVLW       1
	MOVWF       _game_over+0 
;gameControle.c,52 :: 		return game_over;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_GameOver
;gameControle.c,53 :: 		}
L_GameOver6:
;gameControle.c,56 :: 		ApagaRam();
	CALL        _ApagaRam+0, 0
;gameControle.c,57 :: 		return 0;
	CLRF        R0 
	CLRF        R1 
;gameControle.c,59 :: 		}//~ final GameOver
L_end_GameOver:
	RETURN      0
; end of _GameOver

_WinGame:

;gameControle.c,72 :: 		void WinGame(){
;gameControle.c,74 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,75 :: 		lcd_chr (1, 16, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,76 :: 		lcd_chr (2, 16, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,77 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_WinGame8:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame8
	DECFSZ      R12, 1, 1
	BRA         L_WinGame8
	DECFSZ      R11, 1, 1
	BRA         L_WinGame8
	NOP
;gameControle.c,79 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,80 :: 		lcd_chr (1, 16, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,81 :: 		lcd_chr (2, 16, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,82 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_WinGame9:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame9
	DECFSZ      R12, 1, 1
	BRA         L_WinGame9
	DECFSZ      R11, 1, 1
	BRA         L_WinGame9
	NOP
;gameControle.c,84 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,85 :: 		lcd_chr (1, 16, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,86 :: 		lcd_chr (2, 16, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,87 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_WinGame10:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame10
	DECFSZ      R12, 1, 1
	BRA         L_WinGame10
	DECFSZ      R11, 1, 1
	BRA         L_WinGame10
	NOP
;gameControle.c,89 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,90 :: 		lcd_chr (1, 16, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,91 :: 		lcd_chr (2, 16, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,92 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_WinGame11:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame11
	DECFSZ      R12, 1, 1
	BRA         L_WinGame11
	DECFSZ      R11, 1, 1
	BRA         L_WinGame11
	NOP
;gameControle.c,94 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,95 :: 		Lcd_Out (1, 1, "Apos derrotar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,96 :: 		Lcd_Out (2, 2, "As formigas");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,97 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_WinGame12:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame12
	DECFSZ      R12, 1, 1
	BRA         L_WinGame12
	DECFSZ      R11, 1, 1
	BRA         L_WinGame12
	NOP
	NOP
;gameControle.c,99 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,100 :: 		Lcd_Out (1, 2, "Devoradoras de");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,101 :: 		Lcd_Out (2, 3, "Chocolates");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,102 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_WinGame13:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame13
	DECFSZ      R12, 1, 1
	BRA         L_WinGame13
	DECFSZ      R11, 1, 1
	BRA         L_WinGame13
	NOP
	NOP
;gameControle.c,104 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,105 :: 		Lcd_Out (1, 3, "Chegamos ao");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,106 :: 		Lcd_Out (2, 2, "nosso destino.");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,107 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_WinGame14:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame14
	DECFSZ      R12, 1, 1
	BRA         L_WinGame14
	DECFSZ      R11, 1, 1
	BRA         L_WinGame14
	NOP
	NOP
;gameControle.c,109 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,110 :: 		Lcd_Out (1, 1, "Assim degustamos");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,111 :: 		Lcd_Out (2, 3, "Com o Povo do");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,112 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_WinGame15:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame15
	DECFSZ      R12, 1, 1
	BRA         L_WinGame15
	DECFSZ      R11, 1, 1
	BRA         L_WinGame15
	NOP
	NOP
;gameControle.c,114 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,115 :: 		Lcd_Out (1, 2, "Planeta Kripke");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,116 :: 		Lcd_Out (2, 2, "O Achocolatado");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,117 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_WinGame16:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame16
	DECFSZ      R12, 1, 1
	BRA         L_WinGame16
	DECFSZ      R11, 1, 1
	BRA         L_WinGame16
	NOP
	NOP
;gameControle.c,119 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,120 :: 		Lcd_Out (1, 2, "Mais Saboroso");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,121 :: 		Lcd_Out (2, 2, "Belo e Magico");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,122 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_WinGame17:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame17
	DECFSZ      R12, 1, 1
	BRA         L_WinGame17
	DECFSZ      R11, 1, 1
	BRA         L_WinGame17
	NOP
	NOP
;gameControle.c,124 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,125 :: 		Lcd_Out (1, 4, "de Toda a");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,126 :: 		Lcd_Out (2, 4, "VIA LACTA!");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,127 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_WinGame18:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame18
	DECFSZ      R12, 1, 1
	BRA         L_WinGame18
	DECFSZ      R11, 1, 1
	BRA         L_WinGame18
	NOP
	NOP
;gameControle.c,129 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,130 :: 		Lcd_Out (1, 3, "Desenvolvido");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,131 :: 		Lcd_Out (2, 2, "Por Hollweg");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,132 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_WinGame19:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame19
	DECFSZ      R12, 1, 1
	BRA         L_WinGame19
	DECFSZ      R11, 1, 1
	BRA         L_WinGame19
;gameControle.c,134 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,135 :: 		Lcd_Out (1, 3, "WEG Studios");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr18_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr18_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,136 :: 		Lcd_Out (2, 3, "WEG Bobagens");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr19_gameControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr19_gameControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;gameControle.c,137 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_WinGame20:
	DECFSZ      R13, 1, 1
	BRA         L_WinGame20
	DECFSZ      R12, 1, 1
	BRA         L_WinGame20
	DECFSZ      R11, 1, 1
	BRA         L_WinGame20
;gameControle.c,139 :: 		}//~ final WinGame
L_end_WinGame:
	RETURN      0
; end of _WinGame

_EscreveEnterprise:

;gameControle.c,152 :: 		void EscreveEnterprise(){
;gameControle.c,154 :: 		if (button(&PORTD, 0, 50, 1)){                                 //Se pressionado bit 0 de PORTD
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
	GOTO        L_EscreveEnterprise21
;gameControle.c,155 :: 		posicao_nave = 0b00000001;                                 //Nave é escrita e é armazenado valor 1 para comparação posterior
	MOVLW       1
	MOVWF       _posicao_nave+0 
;gameControle.c,156 :: 		armazena_enterprise = 0b00000001;                          //Nave Principal escrita na posicao desejada
	MOVLW       1
	MOVWF       _armazena_enterprise+0 
;gameControle.c,157 :: 		Lcd_chr (1,1, 0);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,158 :: 		}
	GOTO        L_EscreveEnterprise22
L_EscreveEnterprise21:
;gameControle.c,160 :: 		else if (button(&PORTD, 1, 50, 1)){                           //Se pressionado bit 1 de PORTD
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
	GOTO        L_EscreveEnterprise23
;gameControle.c,161 :: 		posicao_nave = 0b00000010;                                //Nave é escrita e é armazenado valor 2 para comparação posterior
	MOVLW       2
	MOVWF       _posicao_nave+0 
;gameControle.c,162 :: 		armazena_enterprise = 0b00000010;                         //Nave Principal escrita na posicao desejada
	MOVLW       2
	MOVWF       _armazena_enterprise+0 
;gameControle.c,163 :: 		Lcd_chr (2,1, 0);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,164 :: 		}
L_EscreveEnterprise23:
L_EscreveEnterprise22:
;gameControle.c,166 :: 		}//~ final EscreveEnterprise
L_end_EscreveEnterprise:
	RETURN      0
; end of _EscreveEnterprise

_ChamaEnterprise:

;gameControle.c,181 :: 		void ChamaEnterprise() {
;gameControle.c,183 :: 		switch (posicao_nave){
	GOTO        L_ChamaEnterprise24
;gameControle.c,184 :: 		case (0b00000001):
L_ChamaEnterprise26:
;gameControle.c,185 :: 		Lcd_chr (1,1, 0);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,186 :: 		break;
	GOTO        L_ChamaEnterprise25
;gameControle.c,188 :: 		case (0b00000010):
L_ChamaEnterprise27:
;gameControle.c,189 :: 		Lcd_chr (2,1, 0);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,190 :: 		break;
	GOTO        L_ChamaEnterprise25
;gameControle.c,191 :: 		}
L_ChamaEnterprise24:
	MOVF        _posicao_nave+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaEnterprise26
	MOVF        _posicao_nave+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaEnterprise27
L_ChamaEnterprise25:
;gameControle.c,192 :: 		}//~ final ChamaEnterprise
L_end_ChamaEnterprise:
	RETURN      0
; end of _ChamaEnterprise

_ChamaInimigo:

;gameControle.c,207 :: 		void ChamaInimigo() {
;gameControle.c,208 :: 		if (linha1 == 0b00000001){
	MOVF        _linha1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_ChamaInimigo28
;gameControle.c,209 :: 		if (armazena_pos_inimigo1 > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _armazena_pos_inimigo1+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_ChamaInimigo29
;gameControle.c,210 :: 		switch (armazena_pos_inimigo1){
	GOTO        L_ChamaInimigo30
;gameControle.c,211 :: 		case (0b00001111):
L_ChamaInimigo32:
;gameControle.c,212 :: 		Lcd_chr (1,15, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,213 :: 		break;                                      //testa primeiro se a variavel que representa inimigo na primeira
	GOTO        L_ChamaInimigo31
;gameControle.c,215 :: 		case (0b00001110):                              //Senão se, testa se posicao inimigo está na linha 2, de forma
L_ChamaInimigo33:
;gameControle.c,216 :: 		Lcd_chr (1,14, 1);                          //que escreve o inimigo em linha 1 ou 2
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,217 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,219 :: 		case (0b00001101):
L_ChamaInimigo34:
;gameControle.c,220 :: 		Lcd_chr (1,13, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,221 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,223 :: 		case (0b00001100):
L_ChamaInimigo35:
;gameControle.c,224 :: 		Lcd_chr (1,12, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,225 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,227 :: 		case (0b00001011):
L_ChamaInimigo36:
;gameControle.c,228 :: 		Lcd_chr (1,11, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,229 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,231 :: 		case (0b00001010):
L_ChamaInimigo37:
;gameControle.c,232 :: 		Lcd_chr (1,10, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,233 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,235 :: 		case (0b00001001):
L_ChamaInimigo38:
;gameControle.c,236 :: 		Lcd_chr (1,9, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,237 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,239 :: 		case (0b00001000):
L_ChamaInimigo39:
;gameControle.c,240 :: 		Lcd_chr (1,8, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,241 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,243 :: 		case (0b00000111):
L_ChamaInimigo40:
;gameControle.c,244 :: 		Lcd_chr (1,7, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,245 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,247 :: 		case (0b00000110):
L_ChamaInimigo41:
;gameControle.c,248 :: 		Lcd_chr (1,6, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,249 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,251 :: 		case (0b00000101):
L_ChamaInimigo42:
;gameControle.c,252 :: 		Lcd_chr (1,5, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,253 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,255 :: 		case (0b00000100):
L_ChamaInimigo43:
;gameControle.c,256 :: 		Lcd_chr (1,4, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,257 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,259 :: 		case (0b00000011):
L_ChamaInimigo44:
;gameControle.c,260 :: 		Lcd_chr (1,3, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,261 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,263 :: 		case (0b00000010):
L_ChamaInimigo45:
;gameControle.c,264 :: 		Lcd_chr (1,2, 1);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,265 :: 		break;
	GOTO        L_ChamaInimigo31
;gameControle.c,266 :: 		}
L_ChamaInimigo30:
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo32
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo33
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo34
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo35
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo36
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo37
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo38
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo39
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo40
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo41
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo42
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo43
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo44
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo45
L_ChamaInimigo31:
;gameControle.c,267 :: 		}
	GOTO        L_ChamaInimigo46
L_ChamaInimigo29:
;gameControle.c,269 :: 		else if (armazena_pos_inimigo2 > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _armazena_pos_inimigo2+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_ChamaInimigo47
;gameControle.c,270 :: 		switch (armazena_pos_inimigo2)  {
	GOTO        L_ChamaInimigo48
;gameControle.c,271 :: 		case (0b00001111):
L_ChamaInimigo50:
;gameControle.c,272 :: 		Lcd_chr (1,15, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,273 :: 		break;                                      //testa primeiro se a variavel que representa inimigo na primeira
	GOTO        L_ChamaInimigo49
;gameControle.c,275 :: 		case (0b00001110):                              //Senão se, testa se posicao inimigo está na linha 2, de forma
L_ChamaInimigo51:
;gameControle.c,276 :: 		Lcd_chr (1,14, 2);                          //que escreve o inimigo em linha 1 ou 2
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,277 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,279 :: 		case (0b00001101):
L_ChamaInimigo52:
;gameControle.c,280 :: 		Lcd_chr (1,13, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,281 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,283 :: 		case (0b00001100):
L_ChamaInimigo53:
;gameControle.c,284 :: 		Lcd_chr (1,12, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,285 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,287 :: 		case (0b00001011):
L_ChamaInimigo54:
;gameControle.c,288 :: 		Lcd_chr (1,11, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,289 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,291 :: 		case (0b00001010):
L_ChamaInimigo55:
;gameControle.c,292 :: 		Lcd_chr (1,10, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,293 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,294 :: 		case (0b00001001):
L_ChamaInimigo56:
;gameControle.c,295 :: 		Lcd_chr (1,9, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,296 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,298 :: 		case (0b00001000):
L_ChamaInimigo57:
;gameControle.c,299 :: 		Lcd_chr (1,8, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,300 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,302 :: 		case (0b00000111):
L_ChamaInimigo58:
;gameControle.c,303 :: 		Lcd_chr (1,7, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,304 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,306 :: 		case (0b00000110):
L_ChamaInimigo59:
;gameControle.c,307 :: 		Lcd_chr (1,6, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,308 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,310 :: 		case (0b00000101):
L_ChamaInimigo60:
;gameControle.c,311 :: 		Lcd_chr (1,5, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,312 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,314 :: 		case (0b00000100):
L_ChamaInimigo61:
;gameControle.c,315 :: 		Lcd_chr (1,4, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,316 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,318 :: 		case (0b00000011):
L_ChamaInimigo62:
;gameControle.c,319 :: 		Lcd_chr (1,3, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,320 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,322 :: 		case (0b00000010):
L_ChamaInimigo63:
;gameControle.c,323 :: 		Lcd_chr (1,2, 2);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,324 :: 		break;
	GOTO        L_ChamaInimigo49
;gameControle.c,325 :: 		}
L_ChamaInimigo48:
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo50
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo51
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo52
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo53
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo54
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo55
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo56
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo57
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo58
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo59
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo60
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo61
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo62
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo63
L_ChamaInimigo49:
;gameControle.c,326 :: 		}
L_ChamaInimigo47:
L_ChamaInimigo46:
;gameControle.c,327 :: 		}
	GOTO        L_ChamaInimigo64
L_ChamaInimigo28:
;gameControle.c,329 :: 		else if (linha2 == 0b00000010){
	MOVF        _linha2+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_ChamaInimigo65
;gameControle.c,330 :: 		if (armazena_pos_inimigo1 > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _armazena_pos_inimigo1+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_ChamaInimigo66
;gameControle.c,331 :: 		switch (armazena_pos_inimigo1)  {
	GOTO        L_ChamaInimigo67
;gameControle.c,332 :: 		case (0b00001111):
L_ChamaInimigo69:
;gameControle.c,333 :: 		Lcd_chr (2,15, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,334 :: 		break;                                      //testa primeiro se a variavel que representa inimigo na primeira
	GOTO        L_ChamaInimigo68
;gameControle.c,336 :: 		case (0b00001110):                              //Senão se, testa se posicao inimigo está na linha 2, de forma
L_ChamaInimigo70:
;gameControle.c,337 :: 		Lcd_chr (2,14, 1);                          //que escreve o inimigo em linha 1 ou 2
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,338 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,339 :: 		case (0b00001101):
L_ChamaInimigo71:
;gameControle.c,340 :: 		Lcd_chr (2,13, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,341 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,343 :: 		case (0b00001100):
L_ChamaInimigo72:
;gameControle.c,344 :: 		Lcd_chr (2,12, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,345 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,347 :: 		case (0b00001011):
L_ChamaInimigo73:
;gameControle.c,348 :: 		Lcd_chr (2,11, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,349 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,351 :: 		case (0b00001010):
L_ChamaInimigo74:
;gameControle.c,352 :: 		Lcd_chr (2,10, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,353 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,355 :: 		case (0b00001001):
L_ChamaInimigo75:
;gameControle.c,356 :: 		Lcd_chr (2,9, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,357 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,359 :: 		case (0b00001000):
L_ChamaInimigo76:
;gameControle.c,360 :: 		Lcd_chr (2,8, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,361 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,363 :: 		case (0b00000111):
L_ChamaInimigo77:
;gameControle.c,364 :: 		Lcd_chr (2,7, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,365 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,367 :: 		case (0b00000110):
L_ChamaInimigo78:
;gameControle.c,368 :: 		Lcd_chr (2,6, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,369 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,371 :: 		case (0b00000101):
L_ChamaInimigo79:
;gameControle.c,372 :: 		Lcd_chr (2,5, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,373 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,375 :: 		case (0b00000100):
L_ChamaInimigo80:
;gameControle.c,376 :: 		Lcd_chr (2,4, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,377 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,379 :: 		case (0b00000011):
L_ChamaInimigo81:
;gameControle.c,380 :: 		Lcd_chr (2,3, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,381 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,383 :: 		case (0b00000010):
L_ChamaInimigo82:
;gameControle.c,384 :: 		Lcd_chr (2,2, 1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,385 :: 		break;
	GOTO        L_ChamaInimigo68
;gameControle.c,387 :: 		}
L_ChamaInimigo67:
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo69
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo70
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo71
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo72
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo73
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo74
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo75
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo76
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo77
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo78
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo79
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo80
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo81
	MOVF        _armazena_pos_inimigo1+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo82
L_ChamaInimigo68:
;gameControle.c,388 :: 		}
	GOTO        L_ChamaInimigo83
L_ChamaInimigo66:
;gameControle.c,390 :: 		else if (armazena_pos_inimigo2 > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _armazena_pos_inimigo2+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_ChamaInimigo84
;gameControle.c,391 :: 		switch (armazena_pos_inimigo2)  {
	GOTO        L_ChamaInimigo85
;gameControle.c,392 :: 		case (0b00001111):
L_ChamaInimigo87:
;gameControle.c,393 :: 		Lcd_chr (2,15, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,394 :: 		break;                                      //testa primeiro se a variavel que representa inimigo na primeira
	GOTO        L_ChamaInimigo86
;gameControle.c,396 :: 		case (0b00001110):                              //Senão se, testa se posicao inimigo está na linha 2, de forma
L_ChamaInimigo88:
;gameControle.c,397 :: 		Lcd_chr (2,14, 2);                          //que escreve o inimigo em linha 1 ou 2
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,398 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,400 :: 		case (0b00001101):
L_ChamaInimigo89:
;gameControle.c,401 :: 		Lcd_chr (2,13, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,402 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,404 :: 		case (0b00001100):
L_ChamaInimigo90:
;gameControle.c,405 :: 		Lcd_chr (2,12, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,406 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,408 :: 		case (0b00001011):
L_ChamaInimigo91:
;gameControle.c,409 :: 		Lcd_chr (2,11, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,410 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,412 :: 		case (0b00001010):
L_ChamaInimigo92:
;gameControle.c,413 :: 		Lcd_chr (2,10, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,414 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,416 :: 		case (0b00001001):
L_ChamaInimigo93:
;gameControle.c,417 :: 		Lcd_chr (2,9, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,418 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,420 :: 		case (0b00001000):
L_ChamaInimigo94:
;gameControle.c,421 :: 		Lcd_chr (2,8, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,422 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,424 :: 		case (0b00000111):
L_ChamaInimigo95:
;gameControle.c,425 :: 		Lcd_chr (2,7, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,426 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,428 :: 		case (0b00000110):
L_ChamaInimigo96:
;gameControle.c,429 :: 		Lcd_chr (2,6, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,430 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,432 :: 		case (0b00000101):
L_ChamaInimigo97:
;gameControle.c,433 :: 		Lcd_chr (2,5, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,434 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,436 :: 		case (0b00000100):
L_ChamaInimigo98:
;gameControle.c,437 :: 		Lcd_chr (2,4, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,438 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,440 :: 		case (0b00000011):
L_ChamaInimigo99:
;gameControle.c,441 :: 		Lcd_chr (2,3, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,442 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,444 :: 		case (0b00000010):
L_ChamaInimigo100:
;gameControle.c,445 :: 		Lcd_chr (2,2, 2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,446 :: 		break;
	GOTO        L_ChamaInimigo86
;gameControle.c,448 :: 		}
L_ChamaInimigo85:
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo87
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo88
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo89
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo90
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo91
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo92
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo93
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo94
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo95
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo96
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo97
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo98
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo99
	MOVF        _armazena_pos_inimigo2+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo100
L_ChamaInimigo86:
;gameControle.c,449 :: 		}
	GOTO        L_ChamaInimigo101
L_ChamaInimigo84:
;gameControle.c,451 :: 		else if (armazena_pos_inimigo3 > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _armazena_pos_inimigo3+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_ChamaInimigo102
;gameControle.c,452 :: 		switch (armazena_pos_inimigo3)  {
	GOTO        L_ChamaInimigo103
;gameControle.c,453 :: 		case (0b00001111):
L_ChamaInimigo105:
;gameControle.c,454 :: 		Lcd_chr (2,15, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,455 :: 		break;                                      //testa primeiro se a variavel que representa inimigo na primeira
	GOTO        L_ChamaInimigo104
;gameControle.c,457 :: 		case (0b00001110):                              //Senão se, testa se posicao inimigo está na linha 2, de forma
L_ChamaInimigo106:
;gameControle.c,458 :: 		Lcd_chr (2,14, 6);                          //que escreve o inimigo em linha 1 ou 2
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,459 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,461 :: 		case (0b00001101):
L_ChamaInimigo107:
;gameControle.c,462 :: 		Lcd_chr (2,13, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,463 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,465 :: 		case (0b00001100):
L_ChamaInimigo108:
;gameControle.c,466 :: 		Lcd_chr (2,12, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,467 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,469 :: 		case (0b00001011):
L_ChamaInimigo109:
;gameControle.c,470 :: 		Lcd_chr (2,11, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       11
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,471 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,473 :: 		case (0b00001010):
L_ChamaInimigo110:
;gameControle.c,474 :: 		Lcd_chr (2,10, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,475 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,477 :: 		case (0b00001001):
L_ChamaInimigo111:
;gameControle.c,478 :: 		Lcd_chr (2,9, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,479 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,481 :: 		case (0b00001000):
L_ChamaInimigo112:
;gameControle.c,482 :: 		Lcd_chr (2,8, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,483 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,485 :: 		case (0b00000111):
L_ChamaInimigo113:
;gameControle.c,486 :: 		Lcd_chr (2,7, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,487 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,489 :: 		case (0b00000110):
L_ChamaInimigo114:
;gameControle.c,490 :: 		Lcd_chr (2,6, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,491 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,493 :: 		case (0b00000101):
L_ChamaInimigo115:
;gameControle.c,494 :: 		Lcd_chr (2,5, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,495 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,497 :: 		case (0b00000100):
L_ChamaInimigo116:
;gameControle.c,498 :: 		Lcd_chr (2,4, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,499 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,501 :: 		case (0b00000011):
L_ChamaInimigo117:
;gameControle.c,502 :: 		Lcd_chr (2,3, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,503 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,505 :: 		case (0b00000010):
L_ChamaInimigo118:
;gameControle.c,506 :: 		Lcd_chr (2,2, 6);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,507 :: 		break;
	GOTO        L_ChamaInimigo104
;gameControle.c,508 :: 		}
L_ChamaInimigo103:
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo105
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo106
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo107
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo108
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo109
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo110
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo111
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo112
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo113
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo114
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo115
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo116
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo117
	MOVF        _armazena_pos_inimigo3+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_ChamaInimigo118
L_ChamaInimigo104:
;gameControle.c,509 :: 		}
L_ChamaInimigo102:
L_ChamaInimigo101:
L_ChamaInimigo83:
;gameControle.c,510 :: 		}
L_ChamaInimigo65:
L_ChamaInimigo64:
;gameControle.c,511 :: 		}//~ final ChamaInimigo
L_end_ChamaInimigo:
	RETURN      0
; end of _ChamaInimigo

_TestaTiroInimigo:

;gameControle.c,526 :: 		int TestaTiroInimigo(){
;gameControle.c,529 :: 		if ((armazena_pos_tiro  == testa_inimigo1) && (linha1 == 0b00000001) && (store_tiro == 0b00000001)){
	MOVF        _armazena_pos_tiro+0, 0 
	XORWF       _testa_inimigo1+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_TestaTiroInimigo121
	MOVF        _linha1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_TestaTiroInimigo121
	MOVF        _store_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_TestaTiroInimigo121
L__TestaTiroInimigo189:
;gameControle.c,530 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,531 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;gameControle.c,532 :: 		lcd_chr (1, testa_inimigo1, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _testa_inimigo1+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,533 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_TestaTiroInimigo122:
	DECFSZ      R13, 1, 1
	BRA         L_TestaTiroInimigo122
	DECFSZ      R12, 1, 1
	BRA         L_TestaTiroInimigo122
	DECFSZ      R11, 1, 1
	BRA         L_TestaTiroInimigo122
	NOP
	NOP
;gameControle.c,534 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,535 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;gameControle.c,537 :: 		pos_inimigo_final = 0b00000000;
	CLRF        _pos_inimigo_final+0 
;gameControle.c,538 :: 		return testa_explosao;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_TestaTiroInimigo
;gameControle.c,539 :: 		}
L_TestaTiroInimigo121:
;gameControle.c,540 :: 		else if ((armazena_pos_tiro == testa_inimigo2) && (linha2 == 0b00000010) && (store_tiro == 0b00000010)){
	MOVF        _armazena_pos_tiro+0, 0 
	XORWF       _testa_inimigo2+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_TestaTiroInimigo126
	MOVF        _linha2+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_TestaTiroInimigo126
	MOVF        _store_tiro+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_TestaTiroInimigo126
L__TestaTiroInimigo188:
;gameControle.c,541 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,542 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;gameControle.c,543 :: 		lcd_chr (2, testa_inimigo2, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _testa_inimigo2+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,544 :: 		delay_ms (300);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       157
	MOVWF       R12, 0
	MOVLW       5
	MOVWF       R13, 0
L_TestaTiroInimigo127:
	DECFSZ      R13, 1, 1
	BRA         L_TestaTiroInimigo127
	DECFSZ      R12, 1, 1
	BRA         L_TestaTiroInimigo127
	DECFSZ      R11, 1, 1
	BRA         L_TestaTiroInimigo127
	NOP
	NOP
;gameControle.c,545 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,546 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;gameControle.c,548 :: 		pos_inimigo_final = 0b00000000;
	CLRF        _pos_inimigo_final+0 
;gameControle.c,549 :: 		return testa_explosao;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_TestaTiroInimigo
;gameControle.c,550 :: 		}
L_TestaTiroInimigo126:
;gameControle.c,551 :: 		}//~ final TestaTiroInimigo
L_end_TestaTiroInimigo:
	RETURN      0
; end of _TestaTiroInimigo

_NaveTiro:

;gameControle.c,565 :: 		void NaveTiro(){
;gameControle.c,567 :: 		int teste = 0;                                //Funcao que chama e testa a posicao do tiro, quando solicitado
;gameControle.c,569 :: 		if (store_tiro == 0b00000001){                //Testa se a variável armazena tiro é 1 ou 2
	MOVF        _store_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_NaveTiro128
;gameControle.c,570 :: 		Lcd_Cmd(_LCD_CLEAR);                      //e dessa forma, atira em linha 1 ou 2
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,571 :: 		ChamaEnterprise();                       //Chama todas as funções de escrita na tela e
	CALL        _ChamaEnterprise+0, 0
;gameControle.c,572 :: 		ChamaInimigo();                          //e testa onde escrever o tiro, após executado
	CALL        _ChamaInimigo+0, 0
;gameControle.c,574 :: 		teste = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;gameControle.c,575 :: 		if (teste == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NaveTiro208
	MOVLW       1
	XORWF       R0, 0 
L__NaveTiro208:
	BTFSS       STATUS+0, 2 
	GOTO        L_NaveTiro129
;gameControle.c,576 :: 		testa_primeira_explosao = 0b00000001;
	MOVLW       1
	MOVWF       _testa_primeira_explosao+0 
;gameControle.c,577 :: 		linha1 = 0b00000000;
	CLRF        _linha1+0 
;gameControle.c,578 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,579 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;gameControle.c,580 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;gameControle.c,581 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;gameControle.c,582 :: 		}
	GOTO        L_NaveTiro130
L_NaveTiro129:
;gameControle.c,584 :: 		lcd_chr (1, tiro, 5);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _tiro+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
L_NaveTiro130:
;gameControle.c,585 :: 		tiro++;
	INCF        _tiro+0, 1 
;gameControle.c,586 :: 		armazena_pos_tiro  = tiro;
	MOVF        _tiro+0, 0 
	MOVWF       _armazena_pos_tiro+0 
;gameControle.c,587 :: 		}
	GOTO        L_NaveTiro131
L_NaveTiro128:
;gameControle.c,588 :: 		else if (store_tiro == 0b00000010){
	MOVF        _store_tiro+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_NaveTiro132
;gameControle.c,589 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,590 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;gameControle.c,591 :: 		ChamaInimigo();
	CALL        _ChamaInimigo+0, 0
;gameControle.c,592 :: 		teste = TestaTiroInimigo();
	CALL        _TestaTiroInimigo+0, 0
;gameControle.c,594 :: 		if (teste == 0b00000001){
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NaveTiro209
	MOVLW       1
	XORWF       R0, 0 
L__NaveTiro209:
	BTFSS       STATUS+0, 2 
	GOTO        L_NaveTiro133
;gameControle.c,595 :: 		testa_primeira_explosao = 0b00000001;
	MOVLW       1
	MOVWF       _testa_primeira_explosao+0 
;gameControle.c,596 :: 		linha2 = 0b00000000;
	CLRF        _linha2+0 
;gameControle.c,597 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,598 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;gameControle.c,599 :: 		testa_tiro = 0b00000000;
	CLRF        _testa_tiro+0 
;gameControle.c,600 :: 		armazena_pos_tiro = 0b00000000;
	CLRF        _armazena_pos_tiro+0 
;gameControle.c,601 :: 		}
	GOTO        L_NaveTiro134
L_NaveTiro133:
;gameControle.c,603 :: 		lcd_chr (2, tiro, 5);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _tiro+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
L_NaveTiro134:
;gameControle.c,604 :: 		tiro++;
	INCF        _tiro+0, 1 
;gameControle.c,605 :: 		armazena_pos_tiro  = tiro;
	MOVF        _tiro+0, 0 
	MOVWF       _armazena_pos_tiro+0 
;gameControle.c,606 :: 		}
L_NaveTiro132:
L_NaveTiro131:
;gameControle.c,608 :: 		}//~ final NaveTiro
L_end_NaveTiro:
	RETURN      0
; end of _NaveTiro

_special:

;gameControle.c,621 :: 		int special(){
;gameControle.c,623 :: 		if ((((button(&PORTD, 3, 200, 1))) && (especial == 1))){
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
	GOTO        L_special137
	MOVF        _especial+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_special137
L__special190:
;gameControle.c,624 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,625 :: 		ChamaEnterprise();
	CALL        _ChamaEnterprise+0, 0
;gameControle.c,627 :: 		if (linha1 == 0b00000001){
	MOVF        _linha1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_special138
;gameControle.c,628 :: 		lcd_chr (1, testa_inimigo1, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _testa_inimigo1+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,629 :: 		delay_ms (250);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       88
	MOVWF       R12, 0
	MOVLW       89
	MOVWF       R13, 0
L_special139:
	DECFSZ      R13, 1, 1
	BRA         L_special139
	DECFSZ      R12, 1, 1
	BRA         L_special139
	DECFSZ      R11, 1, 1
	BRA         L_special139
	NOP
	NOP
;gameControle.c,630 :: 		especial = 0b00000000;
	CLRF        _especial+0 
;gameControle.c,631 :: 		return 1;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_special
;gameControle.c,632 :: 		}
L_special138:
;gameControle.c,634 :: 		else if (linha2 == 0b00000010){
	MOVF        _linha2+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_special141
;gameControle.c,635 :: 		lcd_chr (2, testa_inimigo2, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _testa_inimigo2+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,636 :: 		delay_ms (250);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       88
	MOVWF       R12, 0
	MOVLW       89
	MOVWF       R13, 0
L_special142:
	DECFSZ      R13, 1, 1
	BRA         L_special142
	DECFSZ      R12, 1, 1
	BRA         L_special142
	DECFSZ      R11, 1, 1
	BRA         L_special142
	NOP
	NOP
;gameControle.c,637 :: 		especial = 0b00000000;
	CLRF        _especial+0 
;gameControle.c,638 :: 		return 1;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_special
;gameControle.c,639 :: 		}
L_special141:
;gameControle.c,641 :: 		}
	GOTO        L_special143
L_special137:
;gameControle.c,643 :: 		return 0;
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_special
L_special143:
;gameControle.c,644 :: 		}//~ final special
L_end_special:
	RETURN      0
; end of _special

_Boss:

;gameControle.c,657 :: 		int Boss(){
;gameControle.c,659 :: 		short int conta_tiro = 0;
	CLRF        Boss_conta_tiro_L0+0 
;gameControle.c,662 :: 		do {
L_Boss144:
;gameControle.c,663 :: 		Boss_teste = 0b0000001;
	MOVLW       1
	MOVWF       _Boss_teste+0 
;gameControle.c,664 :: 		Lcd_Cmd(_LCD_CLEAR);                                                  //onde será escrito o caracter de explosão de nave
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,665 :: 		ChamaEnterprise();                                                    //Chama nave_principal
	CALL        _ChamaEnterprise+0, 0
;gameControle.c,666 :: 		Lcd_chr (1,16, 7);                                                    //Escreve na tela, coluna 1, uma parte do boss
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,667 :: 		Lcd_chr (2,16, 7);                                                    //Escreve na tela, coluna 2, a outra parte do boss
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,668 :: 		EscreveEnterprise();                                                  //Testa se usuario quer mudar nave principal
	CALL        _EscreveEnterprise+0, 0
;gameControle.c,671 :: 		if (testa_tiro2 == 0b00000001){                                       //Testa se tiro = 1, e dessa forma executa a função tiro sem
	MOVF        Boss_testa_tiro2_L0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss147
;gameControle.c,672 :: 		NaveTiro();                                                      //que o usuario pressione o botao
	CALL        _NaveTiro+0, 0
;gameControle.c,673 :: 		Lcd_chr (1,16, 7);                                                //Escreve na tela, coluna 1, uma parte do boss
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,674 :: 		Lcd_chr (2,16, 7);                                                //Escreve na tela, coluna 2, a outra parte do boss
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,675 :: 		conta_tiro++;
	INCF        Boss_conta_tiro_L0+0, 1 
;gameControle.c,676 :: 		}
	GOTO        L_Boss148
L_Boss147:
;gameControle.c,678 :: 		else if ((button(&PORTD, 2, 200, 1))){   //Se o bit 2 do portd estiver pressionado
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
	GOTO        L_Boss149
;gameControle.c,679 :: 		store_tiro = posicao_nave;           //armazena na variavel a posicao da nave
	MOVF        _posicao_nave+0, 0 
	MOVWF       _store_tiro+0 
;gameControle.c,680 :: 		NaveTiro();                         //testa se usuario pediu para ser lançado um tiro
	CALL        _NaveTiro+0, 0
;gameControle.c,681 :: 		Lcd_chr (1,16, 7);                   //Escreve na tela, coluna 1, uma parte do boss
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,682 :: 		Lcd_chr (2,16, 7);                   //Escreve na tela, coluna 2, a outra parte do boss
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,683 :: 		testa_tiro2 = 0b00000001;            //atribui 1 a testa_tiro
	MOVLW       1
	MOVWF       Boss_testa_tiro2_L0+0 
;gameControle.c,684 :: 		}
L_Boss149:
L_Boss148:
;gameControle.c,686 :: 		delay_ms (270);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       218
	MOVWF       R12, 0
	MOVLW       56
	MOVWF       R13, 0
L_Boss150:
	DECFSZ      R13, 1, 1
	BRA         L_Boss150
	DECFSZ      R12, 1, 1
	BRA         L_Boss150
	DECFSZ      R11, 1, 1
	BRA         L_Boss150
	NOP
;gameControle.c,688 :: 		}while (conta_tiro < 0b00001101);
	MOVLW       128
	XORWF       Boss_conta_tiro_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       13
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_Boss144
;gameControle.c,690 :: 		if (store_tiro == 0b00000001)
	MOVF        _store_tiro+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss151
;gameControle.c,691 :: 		dano_boss1++;
	INCF        _dano_boss1+0, 1 
	GOTO        L_Boss152
L_Boss151:
;gameControle.c,693 :: 		else if (store_tiro == 0b00000010)
	MOVF        _store_tiro+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss153
;gameControle.c,694 :: 		dano_boss2++;
	INCF        _dano_boss2+0, 1 
L_Boss153:
L_Boss152:
;gameControle.c,696 :: 		if (((dano_boss1 == 0b00000010) && (dano_boss2 == 0b00000000)) || ((dano_boss1 == 0b00000000) && (dano_boss2 == 0b00000010))  || ((dano_boss1 == 0b00000011) && (dano_boss2 == 0b00000001)) || ((dano_boss1 == 0b00000001) && (dano_boss2 == 0b00000011)) || ((dano_boss1 == 0b00000100) && (dano_boss2 == 0b00000010)) || ((dano_boss1 == 0b00000010) && (dano_boss2 == 0b00000100)) || ((dano_boss1 == 0b00000101) && (dano_boss2 == 0b00000011)) || ((dano_boss1 == 0b00000011) && (dano_boss2 == 0b00000101))){
	MOVF        _dano_boss1+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss200
	MOVF        _dano_boss2+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss200
	GOTO        L__Boss192
L__Boss200:
	MOVF        _dano_boss1+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss199
	MOVF        _dano_boss2+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss199
	GOTO        L__Boss192
L__Boss199:
	MOVF        _dano_boss1+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss198
	MOVF        _dano_boss2+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss198
	GOTO        L__Boss192
L__Boss198:
	MOVF        _dano_boss1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss197
	MOVF        _dano_boss2+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss197
	GOTO        L__Boss192
L__Boss197:
	MOVF        _dano_boss1+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss196
	MOVF        _dano_boss2+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss196
	GOTO        L__Boss192
L__Boss196:
	MOVF        _dano_boss1+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss195
	MOVF        _dano_boss2+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss195
	GOTO        L__Boss192
L__Boss195:
	MOVF        _dano_boss1+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss194
	MOVF        _dano_boss2+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss194
	GOTO        L__Boss192
L__Boss194:
	MOVF        _dano_boss1+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss193
	MOVF        _dano_boss2+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L__Boss193
	GOTO        L__Boss192
L__Boss193:
	GOTO        L_Boss172
L__Boss192:
;gameControle.c,697 :: 		dano_boss1 = 0b00000000;
	CLRF        _dano_boss1+0 
;gameControle.c,698 :: 		dano_boss2 = 0b00000000;
	CLRF        _dano_boss2+0 
;gameControle.c,700 :: 		if( posicao_nave == 0b00000001){
	MOVF        _posicao_nave+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss173
;gameControle.c,701 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,702 :: 		lcd_chr (1, 1, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,703 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss174:
	DECFSZ      R13, 1, 1
	BRA         L_Boss174
	DECFSZ      R12, 1, 1
	BRA         L_Boss174
	DECFSZ      R11, 1, 1
	BRA         L_Boss174
	NOP
;gameControle.c,704 :: 		lcd_chr (1, 1, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,705 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss175:
	DECFSZ      R13, 1, 1
	BRA         L_Boss175
	DECFSZ      R12, 1, 1
	BRA         L_Boss175
	DECFSZ      R11, 1, 1
	BRA         L_Boss175
	NOP
;gameControle.c,706 :: 		lcd_chr (1, 1, 3);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,707 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss176:
	DECFSZ      R13, 1, 1
	BRA         L_Boss176
	DECFSZ      R12, 1, 1
	BRA         L_Boss176
	DECFSZ      R11, 1, 1
	BRA         L_Boss176
	NOP
;gameControle.c,708 :: 		lcd_chr (1, 1, 4);
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,709 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss177:
	DECFSZ      R13, 1, 1
	BRA         L_Boss177
	DECFSZ      R12, 1, 1
	BRA         L_Boss177
	DECFSZ      R11, 1, 1
	BRA         L_Boss177
	NOP
;gameControle.c,710 :: 		}
	GOTO        L_Boss178
L_Boss173:
;gameControle.c,712 :: 		else if (posicao_nave == 0b00000010) {
	MOVF        _posicao_nave+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss179
;gameControle.c,713 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;gameControle.c,714 :: 		lcd_chr (2, 1, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,715 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss180:
	DECFSZ      R13, 1, 1
	BRA         L_Boss180
	DECFSZ      R12, 1, 1
	BRA         L_Boss180
	DECFSZ      R11, 1, 1
	BRA         L_Boss180
	NOP
;gameControle.c,716 :: 		lcd_chr (2, 1, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,717 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss181:
	DECFSZ      R13, 1, 1
	BRA         L_Boss181
	DECFSZ      R12, 1, 1
	BRA         L_Boss181
	DECFSZ      R11, 1, 1
	BRA         L_Boss181
	NOP
;gameControle.c,718 :: 		lcd_chr (2, 1, 3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,719 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss182:
	DECFSZ      R13, 1, 1
	BRA         L_Boss182
	DECFSZ      R12, 1, 1
	BRA         L_Boss182
	DECFSZ      R11, 1, 1
	BRA         L_Boss182
	NOP
;gameControle.c,720 :: 		lcd_chr (2, 1, 4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;gameControle.c,721 :: 		delay_ms (700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_Boss183:
	DECFSZ      R13, 1, 1
	BRA         L_Boss183
	DECFSZ      R12, 1, 1
	BRA         L_Boss183
	DECFSZ      R11, 1, 1
	BRA         L_Boss183
	NOP
;gameControle.c,722 :: 		}
L_Boss179:
L_Boss178:
;gameControle.c,723 :: 		GameOver();
	CALL        _GameOver+0, 0
;gameControle.c,724 :: 		return 0;
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_Boss
;gameControle.c,725 :: 		}
L_Boss172:
;gameControle.c,727 :: 		else if ((dano_boss1 == 4) && (dano_boss2 == 4)){
	MOVF        _dano_boss1+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss187
	MOVF        _dano_boss2+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_Boss187
L__Boss191:
;gameControle.c,728 :: 		WinGame();
	CALL        _WinGame+0, 0
;gameControle.c,729 :: 		return 1;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_Boss
;gameControle.c,730 :: 		}
L_Boss187:
;gameControle.c,732 :: 		conta_tiro = 0b0000000;
	CLRF        Boss_conta_tiro_L0+0 
;gameControle.c,733 :: 		testa_tiro2 = 0b0000000;
	CLRF        Boss_testa_tiro2_L0+0 
;gameControle.c,734 :: 		tiro = 0b00000010;
	MOVLW       2
	MOVWF       _tiro+0 
;gameControle.c,735 :: 		store_tiro = 0b00000000;
	CLRF        _store_tiro+0 
;gameControle.c,736 :: 		}//~ final Boss
L_end_Boss:
	RETURN      0
; end of _Boss
