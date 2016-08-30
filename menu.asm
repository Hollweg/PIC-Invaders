
_Menu:

;menu.c,16 :: 		void Menu(){
;menu.c,18 :: 		char txt1[] =  "PIC INVADERS";
	MOVLW       80
	MOVWF       Menu_txt1_L0+0 
	MOVLW       73
	MOVWF       Menu_txt1_L0+1 
	MOVLW       67
	MOVWF       Menu_txt1_L0+2 
	MOVLW       32
	MOVWF       Menu_txt1_L0+3 
	MOVLW       73
	MOVWF       Menu_txt1_L0+4 
	MOVLW       78
	MOVWF       Menu_txt1_L0+5 
	MOVLW       86
	MOVWF       Menu_txt1_L0+6 
	MOVLW       65
	MOVWF       Menu_txt1_L0+7 
	MOVLW       68
	MOVWF       Menu_txt1_L0+8 
	MOVLW       69
	MOVWF       Menu_txt1_L0+9 
	MOVLW       82
	MOVWF       Menu_txt1_L0+10 
	MOVLW       83
	MOVWF       Menu_txt1_L0+11 
	CLRF        Menu_txt1_L0+12 
	MOVLW       86
	MOVWF       Menu_txt2_L0+0 
	MOVLW       73
	MOVWF       Menu_txt2_L0+1 
	MOVLW       65
	MOVWF       Menu_txt2_L0+2 
	MOVLW       32
	MOVWF       Menu_txt2_L0+3 
	MOVLW       76
	MOVWF       Menu_txt2_L0+4 
	MOVLW       65
	MOVWF       Menu_txt2_L0+5 
	MOVLW       67
	MOVWF       Menu_txt2_L0+6 
	MOVLW       84
	MOVWF       Menu_txt2_L0+7 
	MOVLW       65
	MOVWF       Menu_txt2_L0+8 
	CLRF        Menu_txt2_L0+9 
	MOVLW       78
	MOVWF       Menu_txt3_L0+0 
	MOVLW       69
	MOVWF       Menu_txt3_L0+1 
	MOVLW       87
	MOVWF       Menu_txt3_L0+2 
	MOVLW       32
	MOVWF       Menu_txt3_L0+3 
	MOVLW       71
	MOVWF       Menu_txt3_L0+4 
	MOVLW       65
	MOVWF       Menu_txt3_L0+5 
	MOVLW       77
	MOVWF       Menu_txt3_L0+6 
	MOVLW       69
	MOVWF       Menu_txt3_L0+7 
	CLRF        Menu_txt3_L0+8 
	MOVLW       65
	MOVWF       Menu_txt4_L0+0 
	MOVLW       66
	MOVWF       Menu_txt4_L0+1 
	MOVLW       79
	MOVWF       Menu_txt4_L0+2 
	MOVLW       85
	MOVWF       Menu_txt4_L0+3 
	MOVLW       84
	MOVWF       Menu_txt4_L0+4 
	CLRF        Menu_txt4_L0+5 
	MOVLW       68
	MOVWF       Menu_txt5_L0+0 
	MOVLW       101
	MOVWF       Menu_txt5_L0+1 
	MOVLW       115
	MOVWF       Menu_txt5_L0+2 
	MOVLW       101
	MOVWF       Menu_txt5_L0+3 
	MOVLW       110
	MOVWF       Menu_txt5_L0+4 
	MOVLW       118
	MOVWF       Menu_txt5_L0+5 
	MOVLW       111
	MOVWF       Menu_txt5_L0+6 
	MOVLW       108
	MOVWF       Menu_txt5_L0+7 
	MOVLW       118
	MOVWF       Menu_txt5_L0+8 
	MOVLW       105
	MOVWF       Menu_txt5_L0+9 
	MOVLW       100
	MOVWF       Menu_txt5_L0+10 
	MOVLW       111
	MOVWF       Menu_txt5_L0+11 
	MOVLW       32
	MOVWF       Menu_txt5_L0+12 
	MOVLW       112
	MOVWF       Menu_txt5_L0+13 
	MOVLW       111
	MOVWF       Menu_txt5_L0+14 
	MOVLW       114
	MOVWF       Menu_txt5_L0+15 
	MOVLW       58
	MOVWF       Menu_txt5_L0+16 
	CLRF        Menu_txt5_L0+17 
	MOVLW       72
	MOVWF       Menu_txt6_L0+0 
	MOVLW       111
	MOVWF       Menu_txt6_L0+1 
	MOVLW       108
	MOVWF       Menu_txt6_L0+2 
	MOVLW       108
	MOVWF       Menu_txt6_L0+3 
	MOVLW       119
	MOVWF       Menu_txt6_L0+4 
	MOVLW       101
	MOVWF       Menu_txt6_L0+5 
	MOVLW       103
	MOVWF       Menu_txt6_L0+6 
	CLRF        Menu_txt6_L0+7 
	MOVLW       118
	MOVWF       Menu_txt7_L0+0 
	MOVLW       46
	MOVWF       Menu_txt7_L0+1 
	MOVLW       54
	MOVWF       Menu_txt7_L0+2 
	CLRF        Menu_txt7_L0+3 
	MOVLW       68
	MOVWF       Menu_txt8_L0+0 
	MOVLW       105
	MOVWF       Menu_txt8_L0+1 
	MOVLW       97
	MOVWF       Menu_txt8_L0+2 
	MOVLW       114
	MOVWF       Menu_txt8_L0+3 
	MOVLW       105
	MOVWF       Menu_txt8_L0+4 
	MOVLW       111
	MOVWF       Menu_txt8_L0+5 
	CLRF        Menu_txt8_L0+6 
	MOVLW       100
	MOVWF       Menu_txt9_L0+0 
	MOVLW       111
	MOVWF       Menu_txt9_L0+1 
	MOVLW       32
	MOVWF       Menu_txt9_L0+2 
	MOVLW       67
	MOVWF       Menu_txt9_L0+3 
	MOVLW       97
	MOVWF       Menu_txt9_L0+4 
	MOVLW       112
	MOVWF       Menu_txt9_L0+5 
	MOVLW       105
	MOVWF       Menu_txt9_L0+6 
	MOVLW       116
	MOVWF       Menu_txt9_L0+7 
	MOVLW       97
	MOVWF       Menu_txt9_L0+8 
	MOVLW       111
	MOVWF       Menu_txt9_L0+9 
	CLRF        Menu_txt9_L0+10 
	MOVLW       68
	MOVWF       Menu_txt10_L0+0 
	MOVLW       97
	MOVWF       Menu_txt10_L0+1 
	MOVLW       116
	MOVWF       Menu_txt10_L0+2 
	MOVLW       97
	MOVWF       Menu_txt10_L0+3 
	MOVLW       32
	MOVWF       Menu_txt10_L0+4 
	MOVLW       69
	MOVWF       Menu_txt10_L0+5 
	MOVLW       115
	MOVWF       Menu_txt10_L0+6 
	MOVLW       116
	MOVWF       Menu_txt10_L0+7 
	MOVLW       101
	MOVWF       Menu_txt10_L0+8 
	MOVLW       108
	MOVWF       Menu_txt10_L0+9 
	MOVLW       97
	MOVWF       Menu_txt10_L0+10 
	MOVLW       114
	MOVWF       Menu_txt10_L0+11 
	CLRF        Menu_txt10_L0+12 
	MOVLW       49
	MOVWF       Menu_txt11_L0+0 
	MOVLW       53
	MOVWF       Menu_txt11_L0+1 
	MOVLW       49
	MOVWF       Menu_txt11_L0+2 
	MOVLW       50
	MOVWF       Menu_txt11_L0+3 
	MOVLW       46
	MOVWF       Menu_txt11_L0+4 
	MOVLW       50
	MOVWF       Menu_txt11_L0+5 
	CLRF        Menu_txt11_L0+6 
	MOVLW       83
	MOVWF       Menu_txt12_L0+0 
	MOVLW       101
	MOVWF       Menu_txt12_L0+1 
	MOVLW       103
	MOVWF       Menu_txt12_L0+2 
	MOVLW       117
	MOVWF       Menu_txt12_L0+3 
	MOVLW       105
	MOVWF       Menu_txt12_L0+4 
	MOVLW       97
	MOVWF       Menu_txt12_L0+5 
	MOVLW       109
	MOVWF       Menu_txt12_L0+6 
	MOVLW       111
	MOVWF       Menu_txt12_L0+7 
	MOVLW       115
	MOVWF       Menu_txt12_L0+8 
	MOVLW       32
	MOVWF       Menu_txt12_L0+9 
	MOVLW       112
	MOVWF       Menu_txt12_L0+10 
	MOVLW       97
	MOVWF       Menu_txt12_L0+11 
	MOVLW       114
	MOVWF       Menu_txt12_L0+12 
	MOVLW       97
	MOVWF       Menu_txt12_L0+13 
	MOVLW       32
	MOVWF       Menu_txt12_L0+14 
	MOVLW       111
	MOVWF       Menu_txt12_L0+15 
	CLRF        Menu_txt12_L0+16 
	MOVLW       80
	MOVWF       Menu_txt13_L0+0 
	MOVLW       108
	MOVWF       Menu_txt13_L0+1 
	MOVLW       97
	MOVWF       Menu_txt13_L0+2 
	MOVLW       110
	MOVWF       Menu_txt13_L0+3 
	MOVLW       101
	MOVWF       Menu_txt13_L0+4 
	MOVLW       116
	MOVWF       Menu_txt13_L0+5 
	MOVLW       97
	MOVWF       Menu_txt13_L0+6 
	MOVLW       32
	MOVWF       Menu_txt13_L0+7 
	MOVLW       75
	MOVWF       Menu_txt13_L0+8 
	MOVLW       114
	MOVWF       Menu_txt13_L0+9 
	MOVLW       105
	MOVWF       Menu_txt13_L0+10 
	MOVLW       112
	MOVWF       Menu_txt13_L0+11 
	MOVLW       107
	MOVWF       Menu_txt13_L0+12 
	MOVLW       101
	MOVWF       Menu_txt13_L0+13 
	CLRF        Menu_txt13_L0+14 
	MOVLW       69
	MOVWF       Menu_txt14_L0+0 
	MOVLW       109
	MOVWF       Menu_txt14_L0+1 
	MOVLW       32
	MOVWF       Menu_txt14_L0+2 
	MOVLW       66
	MOVWF       Menu_txt14_L0+3 
	MOVLW       117
	MOVWF       Menu_txt14_L0+4 
	MOVLW       115
	MOVWF       Menu_txt14_L0+5 
	MOVLW       99
	MOVWF       Menu_txt14_L0+6 
	MOVLW       97
	MOVWF       Menu_txt14_L0+7 
	MOVLW       32
	MOVWF       Menu_txt14_L0+8 
	MOVLW       100
	MOVWF       Menu_txt14_L0+9 
	MOVLW       111
	MOVWF       Menu_txt14_L0+10 
	CLRF        Menu_txt14_L0+11 
	MOVLW       67
	MOVWF       Menu_txt15_L0+0 
	MOVLW       104
	MOVWF       Menu_txt15_L0+1 
	MOVLW       111
	MOVWF       Menu_txt15_L0+2 
	MOVLW       99
	MOVWF       Menu_txt15_L0+3 
	MOVLW       111
	MOVWF       Menu_txt15_L0+4 
	MOVLW       108
	MOVWF       Menu_txt15_L0+5 
	MOVLW       97
	MOVWF       Menu_txt15_L0+6 
	MOVLW       116
	MOVWF       Menu_txt15_L0+7 
	MOVLW       101
	MOVWF       Menu_txt15_L0+8 
	MOVLW       32
	MOVWF       Menu_txt15_L0+9 
	MOVLW       77
	MOVWF       Menu_txt15_L0+10 
	MOVLW       97
	MOVWF       Menu_txt15_L0+11 
	MOVLW       103
	MOVWF       Menu_txt15_L0+12 
	MOVLW       105
	MOVWF       Menu_txt15_L0+13 
	MOVLW       99
	MOVWF       Menu_txt15_L0+14 
	MOVLW       111
	MOVWF       Menu_txt15_L0+15 
	CLRF        Menu_txt15_L0+16 
	MOVLW       77
	MOVWF       Menu_txt16_L0+0 
	MOVLW       97
	MOVWF       Menu_txt16_L0+1 
	MOVLW       115
	MOVWF       Menu_txt16_L0+2 
	MOVLW       32
	MOVWF       Menu_txt16_L0+3 
	MOVLW       97
	MOVWF       Menu_txt16_L0+4 
	MOVLW       118
	MOVWF       Menu_txt16_L0+5 
	MOVLW       105
	MOVWF       Menu_txt16_L0+6 
	MOVLW       115
	MOVWF       Menu_txt16_L0+7 
	MOVLW       116
	MOVWF       Menu_txt16_L0+8 
	MOVLW       97
	MOVWF       Menu_txt16_L0+9 
	MOVLW       109
	MOVWF       Menu_txt16_L0+10 
	MOVLW       111
	MOVWF       Menu_txt16_L0+11 
	MOVLW       115
	MOVWF       Menu_txt16_L0+12 
	CLRF        Menu_txt16_L0+13 
	MOVLW       70
	MOVWF       Menu_txt17_L0+0 
	MOVLW       111
	MOVWF       Menu_txt17_L0+1 
	MOVLW       114
	MOVWF       Menu_txt17_L0+2 
	MOVLW       109
	MOVWF       Menu_txt17_L0+3 
	MOVLW       105
	MOVWF       Menu_txt17_L0+4 
	MOVLW       103
	MOVWF       Menu_txt17_L0+5 
	MOVLW       97
	MOVWF       Menu_txt17_L0+6 
	MOVLW       115
	MOVWF       Menu_txt17_L0+7 
	MOVLW       32
	MOVWF       Menu_txt17_L0+8 
	MOVLW       65
	MOVWF       Menu_txt17_L0+9 
	MOVLW       108
	MOVWF       Menu_txt17_L0+10 
	MOVLW       105
	MOVWF       Menu_txt17_L0+11 
	MOVLW       101
	MOVWF       Menu_txt17_L0+12 
	MOVLW       110
	MOVWF       Menu_txt17_L0+13 
	MOVLW       115
	MOVWF       Menu_txt17_L0+14 
	CLRF        Menu_txt17_L0+15 
	MOVLW       70
	MOVWF       Menu_txt18_L0+0 
	MOVLW       97
	MOVWF       Menu_txt18_L0+1 
	MOVLW       109
	MOVWF       Menu_txt18_L0+2 
	MOVLW       105
	MOVWF       Menu_txt18_L0+3 
	MOVLW       110
	MOVWF       Menu_txt18_L0+4 
	MOVLW       116
	MOVWF       Menu_txt18_L0+5 
	MOVLW       97
	MOVWF       Menu_txt18_L0+6 
	MOVLW       115
	MOVWF       Menu_txt18_L0+7 
	MOVLW       32
	MOVWF       Menu_txt18_L0+8 
	MOVLW       67
	MOVWF       Menu_txt18_L0+9 
	MOVLW       114
	MOVWF       Menu_txt18_L0+10 
	MOVLW       117
	MOVWF       Menu_txt18_L0+11 
	MOVLW       101
	MOVWF       Menu_txt18_L0+12 
	MOVLW       105
	MOVWF       Menu_txt18_L0+13 
	MOVLW       115
	MOVWF       Menu_txt18_L0+14 
	CLRF        Menu_txt18_L0+15 
	MOVLW       83
	MOVWF       Menu_txt19_L0+0 
	MOVLW       101
	MOVWF       Menu_txt19_L0+1 
	MOVLW       100
	MOVWF       Menu_txt19_L0+2 
	MOVLW       101
	MOVWF       Menu_txt19_L0+3 
	MOVLW       110
	MOVWF       Menu_txt19_L0+4 
	MOVLW       116
	MOVWF       Menu_txt19_L0+5 
	MOVLW       97
	MOVWF       Menu_txt19_L0+6 
	MOVLW       115
	MOVWF       Menu_txt19_L0+7 
	MOVLW       32
	MOVWF       Menu_txt19_L0+8 
	MOVLW       112
	MOVWF       Menu_txt19_L0+9 
	MOVLW       111
	MOVWF       Menu_txt19_L0+10 
	MOVLW       114
	MOVWF       Menu_txt19_L0+11 
	CLRF        Menu_txt19_L0+12 
	MOVLW       65
	MOVWF       Menu_txt20_L0+0 
	MOVLW       99
	MOVWF       Menu_txt20_L0+1 
	MOVLW       117
	MOVWF       Menu_txt20_L0+2 
	MOVLW       99
	MOVWF       Menu_txt20_L0+3 
	MOVLW       97
	MOVWF       Menu_txt20_L0+4 
	MOVLW       114
	MOVWF       Menu_txt20_L0+5 
	MOVLW       32
	MOVWF       Menu_txt20_L0+6 
	MOVLW       72
	MOVWF       Menu_txt20_L0+7 
	MOVLW       117
	MOVWF       Menu_txt20_L0+8 
	MOVLW       109
	MOVWF       Menu_txt20_L0+9 
	MOVLW       97
	MOVWF       Menu_txt20_L0+10 
	MOVLW       110
	MOVWF       Menu_txt20_L0+11 
	MOVLW       111
	MOVWF       Menu_txt20_L0+12 
	MOVLW       46
	MOVWF       Menu_txt20_L0+13 
	CLRF        Menu_txt20_L0+14 
	MOVLW       67
	MOVWF       Menu_txt21_L0+0 
	MOVLW       111
	MOVWF       Menu_txt21_L0+1 
	MOVLW       108
	MOVWF       Menu_txt21_L0+2 
	MOVLW       111
	MOVWF       Menu_txt21_L0+3 
	MOVLW       99
	MOVWF       Menu_txt21_L0+4 
	MOVLW       97
	MOVWF       Menu_txt21_L0+5 
	MOVLW       109
	MOVWF       Menu_txt21_L0+6 
	MOVLW       111
	MOVWF       Menu_txt21_L0+7 
	MOVLW       115
	MOVWF       Menu_txt21_L0+8 
	MOVLW       32
	MOVWF       Menu_txt21_L0+9 
	MOVLW       78
	MOVWF       Menu_txt21_L0+10 
	MOVLW       111
	MOVWF       Menu_txt21_L0+11 
	MOVLW       115
	MOVWF       Menu_txt21_L0+12 
	MOVLW       115
	MOVWF       Menu_txt21_L0+13 
	MOVLW       111
	MOVWF       Menu_txt21_L0+14 
	MOVLW       115
	MOVWF       Menu_txt21_L0+15 
	CLRF        Menu_txt21_L0+16 
	MOVLW       80
	MOVWF       Menu_txt22_L0+0 
	MOVLW       104
	MOVWF       Menu_txt22_L0+1 
	MOVLW       97
	MOVWF       Menu_txt22_L0+2 
	MOVLW       115
	MOVWF       Menu_txt22_L0+3 
	MOVLW       101
	MOVWF       Menu_txt22_L0+4 
	MOVLW       114
	MOVWF       Menu_txt22_L0+5 
	MOVLW       115
	MOVWF       Menu_txt22_L0+6 
	MOVLW       32
	MOVWF       Menu_txt22_L0+7 
	MOVLW       110
	MOVWF       Menu_txt22_L0+8 
	MOVLW       111
	MOVWF       Menu_txt22_L0+9 
	MOVLW       32
	MOVWF       Menu_txt22_L0+10 
	MOVLW       77
	MOVWF       Menu_txt22_L0+11 
	MOVLW       111
	MOVWF       Menu_txt22_L0+12 
	MOVLW       100
	MOVWF       Menu_txt22_L0+13 
	MOVLW       111
	MOVWF       Menu_txt22_L0+14 
	CLRF        Menu_txt22_L0+15 
	MOVLW       67
	MOVWF       Menu_txt23_L0+0 
	MOVLW       97
	MOVWF       Menu_txt23_L0+1 
	MOVLW       114
	MOVWF       Menu_txt23_L0+2 
	MOVLW       97
	MOVWF       Menu_txt23_L0+3 
	MOVLW       109
	MOVWF       Menu_txt23_L0+4 
	MOVLW       101
	MOVWF       Menu_txt23_L0+5 
	MOVLW       108
	MOVWF       Menu_txt23_L0+6 
	MOVLW       105
	MOVWF       Menu_txt23_L0+7 
	MOVLW       122
	MOVWF       Menu_txt23_L0+8 
	MOVLW       97
	MOVWF       Menu_txt23_L0+9 
	MOVLW       114
	MOVWF       Menu_txt23_L0+10 
	MOVLW       46
	MOVWF       Menu_txt23_L0+11 
	MOVLW       46
	MOVWF       Menu_txt23_L0+12 
	MOVLW       46
	MOVWF       Menu_txt23_L0+13 
	CLRF        Menu_txt23_L0+14 
	MOVLW       65
	MOVWF       Menu_txt24_L0+0 
	MOVLW       32
	MOVWF       Menu_txt24_L0+1 
	MOVLW       66
	MOVWF       Menu_txt24_L0+2 
	MOVLW       97
	MOVWF       Menu_txt24_L0+3 
	MOVLW       116
	MOVWF       Menu_txt24_L0+4 
	MOVLW       97
	MOVWF       Menu_txt24_L0+5 
	MOVLW       108
	MOVWF       Menu_txt24_L0+6 
	MOVLW       104
	MOVWF       Menu_txt24_L0+7 
	MOVLW       97
	MOVWF       Menu_txt24_L0+8 
	MOVLW       32
	MOVWF       Menu_txt24_L0+9 
	MOVLW       69
	MOVWF       Menu_txt24_L0+10 
	MOVLW       115
	MOVWF       Menu_txt24_L0+11 
	MOVLW       116
	MOVWF       Menu_txt24_L0+12 
	MOVLW       97
	MOVWF       Menu_txt24_L0+13 
	MOVLW       118
	MOVWF       Menu_txt24_L0+14 
	MOVLW       97
	MOVWF       Menu_txt24_L0+15 
	CLRF        Menu_txt24_L0+16 
	MOVLW       80
	MOVWF       Menu_txt25_L0+0 
	MOVLW       114
	MOVWF       Menu_txt25_L0+1 
	MOVLW       111
	MOVWF       Menu_txt25_L0+2 
	MOVLW       120
	MOVWF       Menu_txt25_L0+3 
	MOVLW       105
	MOVWF       Menu_txt25_L0+4 
	MOVLW       109
	MOVWF       Menu_txt25_L0+5 
	MOVLW       97
	MOVWF       Menu_txt25_L0+6 
	MOVLW       46
	MOVWF       Menu_txt25_L0+7 
	MOVLW       46
	MOVWF       Menu_txt25_L0+8 
	MOVLW       46
	MOVWF       Menu_txt25_L0+9 
	CLRF        Menu_txt25_L0+10 
	MOVLW       83
	MOVWF       Menu_txt26_L0+0 
	MOVLW       97
	MOVWF       Menu_txt26_L0+1 
	MOVLW       99
	MOVWF       Menu_txt26_L0+2 
	MOVLW       97
	MOVWF       Menu_txt26_L0+3 
	MOVLW       109
	MOVWF       Menu_txt26_L0+4 
	MOVLW       111
	MOVWF       Menu_txt26_L0+5 
	MOVLW       115
	MOVWF       Menu_txt26_L0+6 
	MOVLW       32
	MOVWF       Menu_txt26_L0+7 
	MOVLW       97
	MOVWF       Menu_txt26_L0+8 
	MOVLW       115
	MOVWF       Menu_txt26_L0+9 
	MOVLW       32
	MOVWF       Menu_txt26_L0+10 
	MOVLW       65
	MOVWF       Menu_txt26_L0+11 
	MOVLW       114
	MOVWF       Menu_txt26_L0+12 
	MOVLW       109
	MOVWF       Menu_txt26_L0+13 
	MOVLW       97
	MOVWF       Menu_txt26_L0+14 
	MOVLW       115
	MOVWF       Menu_txt26_L0+15 
	CLRF        Menu_txt26_L0+16 
	MOVLW       69
	MOVWF       Menu_txt27_L0+0 
	MOVLW       32
	MOVWF       Menu_txt27_L0+1 
	MOVLW       67
	MOVWF       Menu_txt27_L0+2 
	MOVLW       111
	MOVWF       Menu_txt27_L0+3 
	MOVLW       109
	MOVWF       Menu_txt27_L0+4 
	MOVLW       98
	MOVWF       Menu_txt27_L0+5 
	MOVLW       97
	MOVWF       Menu_txt27_L0+6 
	MOVLW       116
	MOVWF       Menu_txt27_L0+7 
	MOVLW       101
	MOVWF       Menu_txt27_L0+8 
	MOVLW       109
	MOVWF       Menu_txt27_L0+9 
	MOVLW       111
	MOVWF       Menu_txt27_L0+10 
	MOVLW       115
	MOVWF       Menu_txt27_L0+11 
	CLRF        Menu_txt27_L0+12 
	MOVLW       69
	MOVWF       Menu_txt28_L0+0 
	MOVLW       115
	MOVWF       Menu_txt28_L0+1 
	MOVLW       115
	MOVWF       Menu_txt28_L0+2 
	MOVLW       101
	MOVWF       Menu_txt28_L0+3 
	MOVLW       115
	MOVWF       Menu_txt28_L0+4 
	MOVLW       32
	MOVWF       Menu_txt28_L0+5 
	MOVLW       65
	MOVWF       Menu_txt28_L0+6 
	MOVLW       108
	MOVWF       Menu_txt28_L0+7 
	MOVLW       105
	MOVWF       Menu_txt28_L0+8 
	MOVLW       101
	MOVWF       Menu_txt28_L0+9 
	MOVLW       110
	MOVWF       Menu_txt28_L0+10 
	MOVLW       115
	MOVWF       Menu_txt28_L0+11 
	CLRF        Menu_txt28_L0+12 
	MOVLW       68
	MOVWF       Menu_txt35_L0+0 
	MOVLW       105
	MOVWF       Menu_txt35_L0+1 
	MOVLW       97
	MOVWF       Menu_txt35_L0+2 
	MOVLW       98
	MOVWF       Menu_txt35_L0+3 
	MOVLW       101
	MOVWF       Menu_txt35_L0+4 
	MOVLW       116
	MOVWF       Menu_txt35_L0+5 
	MOVLW       105
	MOVWF       Menu_txt35_L0+6 
	MOVLW       99
	MOVWF       Menu_txt35_L0+7 
	MOVLW       111
	MOVWF       Menu_txt35_L0+8 
	MOVLW       115
	MOVWF       Menu_txt35_L0+9 
	MOVLW       33
	MOVWF       Menu_txt35_L0+10 
	CLRF        Menu_txt35_L0+11 
	MOVLW       72
	MOVWF       Menu_txt29_L0+0 
	MOVLW       69
	MOVWF       Menu_txt29_L0+1 
	MOVLW       76
	MOVWF       Menu_txt29_L0+2 
	MOVLW       80
	MOVWF       Menu_txt29_L0+3 
	CLRF        Menu_txt29_L0+4 
	MOVLW       66
	MOVWF       Menu_txt30_L0+0 
	MOVLW       117
	MOVWF       Menu_txt30_L0+1 
	MOVLW       116
	MOVWF       Menu_txt30_L0+2 
	MOVLW       116
	MOVWF       Menu_txt30_L0+3 
	MOVLW       111
	MOVWF       Menu_txt30_L0+4 
	MOVLW       110
	MOVWF       Menu_txt30_L0+5 
	MOVLW       32
	MOVWF       Menu_txt30_L0+6 
	MOVLW       48
	MOVWF       Menu_txt30_L0+7 
	MOVLW       58
	MOVWF       Menu_txt30_L0+8 
	MOVLW       85
	MOVWF       Menu_txt30_L0+9 
	MOVLW       80
	MOVWF       Menu_txt30_L0+10 
	CLRF        Menu_txt30_L0+11 
	MOVLW       66
	MOVWF       Menu_txt31_L0+0 
	MOVLW       117
	MOVWF       Menu_txt31_L0+1 
	MOVLW       116
	MOVWF       Menu_txt31_L0+2 
	MOVLW       116
	MOVWF       Menu_txt31_L0+3 
	MOVLW       111
	MOVWF       Menu_txt31_L0+4 
	MOVLW       110
	MOVWF       Menu_txt31_L0+5 
	MOVLW       32
	MOVWF       Menu_txt31_L0+6 
	MOVLW       49
	MOVWF       Menu_txt31_L0+7 
	MOVLW       58
	MOVWF       Menu_txt31_L0+8 
	MOVLW       68
	MOVWF       Menu_txt31_L0+9 
	MOVLW       79
	MOVWF       Menu_txt31_L0+10 
	MOVLW       87
	MOVWF       Menu_txt31_L0+11 
	MOVLW       78
	MOVWF       Menu_txt31_L0+12 
	CLRF        Menu_txt31_L0+13 
	MOVLW       66
	MOVWF       Menu_txt32_L0+0 
	MOVLW       117
	MOVWF       Menu_txt32_L0+1 
	MOVLW       116
	MOVWF       Menu_txt32_L0+2 
	MOVLW       116
	MOVWF       Menu_txt32_L0+3 
	MOVLW       111
	MOVWF       Menu_txt32_L0+4 
	MOVLW       110
	MOVWF       Menu_txt32_L0+5 
	MOVLW       32
	MOVWF       Menu_txt32_L0+6 
	MOVLW       50
	MOVWF       Menu_txt32_L0+7 
	MOVLW       58
	MOVWF       Menu_txt32_L0+8 
	MOVLW       70
	MOVWF       Menu_txt32_L0+9 
	MOVLW       105
	MOVWF       Menu_txt32_L0+10 
	MOVLW       114
	MOVWF       Menu_txt32_L0+11 
	MOVLW       101
	MOVWF       Menu_txt32_L0+12 
	MOVLW       33
	MOVWF       Menu_txt32_L0+13 
	CLRF        Menu_txt32_L0+14 
	MOVLW       66
	MOVWF       Menu_txt33_L0+0 
	MOVLW       117
	MOVWF       Menu_txt33_L0+1 
	MOVLW       116
	MOVWF       Menu_txt33_L0+2 
	MOVLW       116
	MOVWF       Menu_txt33_L0+3 
	MOVLW       111
	MOVWF       Menu_txt33_L0+4 
	MOVLW       110
	MOVWF       Menu_txt33_L0+5 
	MOVLW       32
	MOVWF       Menu_txt33_L0+6 
	MOVLW       51
	MOVWF       Menu_txt33_L0+7 
	MOVLW       58
	MOVWF       Menu_txt33_L0+8 
	MOVLW       83
	MOVWF       Menu_txt33_L0+9 
	MOVLW       80
	MOVWF       Menu_txt33_L0+10 
	MOVLW       69
	MOVWF       Menu_txt33_L0+11 
	MOVLW       67
	MOVWF       Menu_txt33_L0+12 
	MOVLW       73
	MOVWF       Menu_txt33_L0+13 
	MOVLW       65
	MOVWF       Menu_txt33_L0+14 
	MOVLW       76
	MOVWF       Menu_txt33_L0+15 
	CLRF        Menu_txt33_L0+16 
	MOVLW       78
	MOVWF       Menu_txt34_L0+0 
	MOVLW       73
	MOVWF       Menu_txt34_L0+1 
	MOVLW       86
	MOVWF       Menu_txt34_L0+2 
	MOVLW       69
	MOVWF       Menu_txt34_L0+3 
	MOVLW       76
	MOVWF       Menu_txt34_L0+4 
	MOVLW       32
	MOVWF       Menu_txt34_L0+5 
	MOVLW       49
	MOVWF       Menu_txt34_L0+6 
	CLRF        Menu_txt34_L0+7 
	MOVLW       69
	MOVWF       Menu_txt36_L0+0 
	MOVLW       77
	MOVWF       Menu_txt36_L0+1 
	MOVLW       32
	MOVWF       Menu_txt36_L0+2 
	MOVLW       66
	MOVWF       Menu_txt36_L0+3 
	MOVLW       85
	MOVWF       Menu_txt36_L0+4 
	MOVLW       83
	MOVWF       Menu_txt36_L0+5 
	MOVLW       67
	MOVWF       Menu_txt36_L0+6 
	MOVLW       65
	MOVWF       Menu_txt36_L0+7 
	MOVLW       32
	MOVWF       Menu_txt36_L0+8 
	MOVLW       68
	MOVWF       Menu_txt36_L0+9 
	MOVLW       79
	MOVWF       Menu_txt36_L0+10 
	CLRF        Menu_txt36_L0+11 
	MOVLW       67
	MOVWF       Menu_txt37_L0+0 
	MOVLW       72
	MOVWF       Menu_txt37_L0+1 
	MOVLW       79
	MOVWF       Menu_txt37_L0+2 
	MOVLW       67
	MOVWF       Menu_txt37_L0+3 
	MOVLW       79
	MOVWF       Menu_txt37_L0+4 
	MOVLW       76
	MOVWF       Menu_txt37_L0+5 
	MOVLW       65
	MOVWF       Menu_txt37_L0+6 
	MOVLW       84
	MOVWF       Menu_txt37_L0+7 
	MOVLW       69
	MOVWF       Menu_txt37_L0+8 
	MOVLW       32
	MOVWF       Menu_txt37_L0+9 
	MOVLW       77
	MOVWF       Menu_txt37_L0+10 
	MOVLW       65
	MOVWF       Menu_txt37_L0+11 
	MOVLW       71
	MOVWF       Menu_txt37_L0+12 
	MOVLW       73
	MOVWF       Menu_txt37_L0+13 
	MOVLW       67
	MOVWF       Menu_txt37_L0+14 
	MOVLW       79
	MOVWF       Menu_txt37_L0+15 
	CLRF        Menu_txt37_L0+16 
;menu.c,56 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,57 :: 		Lcd_out (1,3, txt1);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt1_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt1_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,58 :: 		Lcd_out (2,4, txt2);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt2_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt2_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,59 :: 		delay_ms (5000);
	MOVLW       127
	MOVWF       R11, 0
	MOVLW       212
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_Menu0:
	DECFSZ      R13, 1, 1
	BRA         L_Menu0
	DECFSZ      R12, 1, 1
	BRA         L_Menu0
	DECFSZ      R11, 1, 1
	BRA         L_Menu0
	NOP
	NOP
;menu.c,61 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,62 :: 		Lcd_out (1,3, txt36);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt36_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt36_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,63 :: 		Lcd_out (2,1, txt37);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt37_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt37_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,64 :: 		delay_ms (5000);
	MOVLW       127
	MOVWF       R11, 0
	MOVLW       212
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_Menu1:
	DECFSZ      R13, 1, 1
	BRA         L_Menu1
	DECFSZ      R12, 1, 1
	BRA         L_Menu1
	DECFSZ      R11, 1, 1
	BRA         L_Menu1
	NOP
	NOP
;menu.c,66 :: 		menu:
___Menu_menu:
;menu.c,68 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,69 :: 		Lcd_out (1,3, txt3);                   //Tela de apresentação do Game
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt3_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt3_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,70 :: 		Lcd_out (2,3, txt4);                   //New Game, About e Help
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt4_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt4_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,71 :: 		Lcd_out (1,12, txt29);                 //Para voltar para Menu - Pressionar Bit 1 do PORTD
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt29_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt29_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,72 :: 		delay_ms (250);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       88
	MOVWF       R12, 0
	MOVLW       89
	MOVWF       R13, 0
L_Menu2:
	DECFSZ      R13, 1, 1
	BRA         L_Menu2
	DECFSZ      R12, 1, 1
	BRA         L_Menu2
	DECFSZ      R11, 1, 1
	BRA         L_Menu2
	NOP
	NOP
;menu.c,74 :: 		if (button(&PORTD, 0, 200, 1)){         //Inicia o Game com frase clássica
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
	GOTO        L_Menu3
;menu.c,76 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,77 :: 		Lcd_out (1,6, txt8);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt8_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt8_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,78 :: 		Lcd_out (2,4, txt9);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt9_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt9_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,79 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu4:
	DECFSZ      R13, 1, 1
	BRA         L_Menu4
	DECFSZ      R12, 1, 1
	BRA         L_Menu4
	DECFSZ      R11, 1, 1
	BRA         L_Menu4
	NOP
	NOP
;menu.c,81 :: 		if (button(&PORTD, 0, 200, 1))
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
	GOTO        L_Menu5
;menu.c,82 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu5:
;menu.c,84 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,85 :: 		Lcd_out (1,3, txt10);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt10_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt10_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,86 :: 		Lcd_out (2,6, txt11);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt11_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt11_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,87 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu6:
	DECFSZ      R13, 1, 1
	BRA         L_Menu6
	DECFSZ      R12, 1, 1
	BRA         L_Menu6
	DECFSZ      R11, 1, 1
	BRA         L_Menu6
	NOP
	NOP
;menu.c,89 :: 		if (button(&PORTD, 0, 200, 1))
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
	GOTO        L_Menu7
;menu.c,90 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu7:
;menu.c,92 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,93 :: 		Lcd_out (1,1, txt12);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt12_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt12_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,94 :: 		Lcd_out (2,2, txt13);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt13_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt13_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,95 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu8:
	DECFSZ      R13, 1, 1
	BRA         L_Menu8
	DECFSZ      R12, 1, 1
	BRA         L_Menu8
	DECFSZ      R11, 1, 1
	BRA         L_Menu8
	NOP
	NOP
;menu.c,97 :: 		if (button(&PORTD, 0, 200, 1))
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
	GOTO        L_Menu9
;menu.c,98 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu9:
;menu.c,100 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,101 :: 		Lcd_out (1,3, txt14);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt14_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt14_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,102 :: 		Lcd_out (2,1, txt15);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt15_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt15_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,103 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu10:
	DECFSZ      R13, 1, 1
	BRA         L_Menu10
	DECFSZ      R12, 1, 1
	BRA         L_Menu10
	DECFSZ      R11, 1, 1
	BRA         L_Menu10
	NOP
	NOP
;menu.c,105 :: 		if (button(&PORTD, 0, 200, 1))
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
	GOTO        L_Menu11
;menu.c,106 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu11:
;menu.c,108 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,109 :: 		Lcd_out (1,2, txt16);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt16_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt16_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,110 :: 		Lcd_out (2,1, txt17);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt17_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt17_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,111 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu12:
	DECFSZ      R13, 1, 1
	BRA         L_Menu12
	DECFSZ      R12, 1, 1
	BRA         L_Menu12
	DECFSZ      R11, 1, 1
	BRA         L_Menu12
	NOP
	NOP
;menu.c,113 :: 		if (button(&PORTD, 0, 200, 1))
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
	GOTO        L_Menu13
;menu.c,114 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu13:
;menu.c,116 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,117 :: 		Lcd_out (1,2, txt18);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt18_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt18_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,118 :: 		Lcd_out (2,3, txt19);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt19_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt19_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,119 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu14:
	DECFSZ      R13, 1, 1
	BRA         L_Menu14
	DECFSZ      R12, 1, 1
	BRA         L_Menu14
	DECFSZ      R11, 1, 1
	BRA         L_Menu14
	NOP
	NOP
;menu.c,121 :: 		if (button(&PORTD, 0, 200, 1))
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
	GOTO        L_Menu15
;menu.c,122 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu15:
;menu.c,124 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,125 :: 		Lcd_out (1,2, txt20);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt20_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt20_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,126 :: 		Lcd_out (2,1, txt21);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt21_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt21_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,127 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu16:
	DECFSZ      R13, 1, 1
	BRA         L_Menu16
	DECFSZ      R12, 1, 1
	BRA         L_Menu16
	DECFSZ      R11, 1, 1
	BRA         L_Menu16
	NOP
	NOP
;menu.c,129 :: 		if (button(&PORTD, 0, 200, 1))
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
	GOTO        L_Menu17
;menu.c,130 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu17:
;menu.c,132 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,133 :: 		Lcd_out (1,1, txt22);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt22_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt22_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,134 :: 		Lcd_out (2,2, txt23);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt23_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt23_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,135 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu18:
	DECFSZ      R13, 1, 1
	BRA         L_Menu18
	DECFSZ      R12, 1, 1
	BRA         L_Menu18
	DECFSZ      R11, 1, 1
	BRA         L_Menu18
	NOP
	NOP
;menu.c,137 :: 		if (button(&PORTD, 0, 200, 1))
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
	GOTO        L_Menu19
;menu.c,138 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu19:
;menu.c,140 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,141 :: 		Lcd_out (1,1, txt24);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt24_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt24_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,142 :: 		Lcd_out (2,4, txt25);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt25_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt25_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,143 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu20:
	DECFSZ      R13, 1, 1
	BRA         L_Menu20
	DECFSZ      R12, 1, 1
	BRA         L_Menu20
	DECFSZ      R11, 1, 1
	BRA         L_Menu20
	NOP
	NOP
;menu.c,145 :: 		if (button(&PORTD, 0, 200, 1))
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
	GOTO        L_Menu21
;menu.c,146 :: 		goto nivel1;
	GOTO        ___Menu_nivel1
L_Menu21:
;menu.c,148 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,149 :: 		Lcd_out (1,1, txt26);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt26_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt26_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,150 :: 		Lcd_out (2,2, txt27);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt27_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt27_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,151 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu22:
	DECFSZ      R13, 1, 1
	BRA         L_Menu22
	DECFSZ      R12, 1, 1
	BRA         L_Menu22
	DECFSZ      R11, 1, 1
	BRA         L_Menu22
	NOP
	NOP
;menu.c,153 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,154 :: 		Lcd_out (1,1, txt28);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt28_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt28_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,155 :: 		Lcd_out (2,4, txt35);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt35_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt35_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,156 :: 		delay_ms (3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_Menu23:
	DECFSZ      R13, 1, 1
	BRA         L_Menu23
	DECFSZ      R12, 1, 1
	BRA         L_Menu23
	DECFSZ      R11, 1, 1
	BRA         L_Menu23
	NOP
	NOP
;menu.c,158 :: 		nivel1:
___Menu_nivel1:
;menu.c,160 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,161 :: 		Lcd_out (1,5, txt34);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt34_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt34_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,162 :: 		delay_ms (4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_Menu24:
	DECFSZ      R13, 1, 1
	BRA         L_Menu24
	DECFSZ      R12, 1, 1
	BRA         L_Menu24
	DECFSZ      R11, 1, 1
	BRA         L_Menu24
;menu.c,164 :: 		return;
	GOTO        L_end_Menu
;menu.c,165 :: 		}
L_Menu3:
;menu.c,167 :: 		else if (button(&PORTD, 1, 200, 1)) {       //Escreve Informação de como foi desenvolvido o game e versao atual
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
	GOTO        L_Menu26
;menu.c,168 :: 		while (1){
L_Menu27:
;menu.c,169 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,170 :: 		Lcd_out (1,1, txt5);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt5_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt5_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,171 :: 		Lcd_out (2,1, txt6);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt6_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt6_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,172 :: 		Lcd_out (2,13, txt7);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt7_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt7_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,173 :: 		delay_ms (600);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_Menu29:
	DECFSZ      R13, 1, 1
	BRA         L_Menu29
	DECFSZ      R12, 1, 1
	BRA         L_Menu29
	DECFSZ      R11, 1, 1
	BRA         L_Menu29
	NOP
	NOP
;menu.c,175 :: 		if (button(&PORTD, 1, 200, 1))
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
	GOTO        L_Menu30
;menu.c,176 :: 		goto menu;
	GOTO        ___Menu_menu
L_Menu30:
;menu.c,178 :: 		}
	GOTO        L_Menu27
;menu.c,179 :: 		}
L_Menu26:
;menu.c,181 :: 		else if (button(&PORTD, 2, 200, 1)) {   //Escreve Instruções de jogabilidade
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
	GOTO        L_Menu32
;menu.c,182 :: 		while (1){                         //Lembrete: Pressionar bit 1 do PORTD para voltar para Menu ROOT
L_Menu33:
;menu.c,183 :: 		if (button(&PORTD, 1, 200, 1))
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
	GOTO        L_Menu35
;menu.c,184 :: 		goto menu;
	GOTO        ___Menu_menu
L_Menu35:
;menu.c,186 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,187 :: 		Lcd_out (1,1, txt30);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt30_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt30_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,188 :: 		Lcd_out (2,1, txt31);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt31_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt31_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,189 :: 		delay_ms (2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_Menu36:
	DECFSZ      R13, 1, 1
	BRA         L_Menu36
	DECFSZ      R12, 1, 1
	BRA         L_Menu36
	DECFSZ      R11, 1, 1
	BRA         L_Menu36
	NOP
	NOP
;menu.c,191 :: 		if (button(&PORTD, 1, 200, 1))
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
	GOTO        L_Menu37
;menu.c,192 :: 		goto menu;
	GOTO        ___Menu_menu
L_Menu37:
;menu.c,194 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,195 :: 		Lcd_out (1,1, txt32);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt32_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt32_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,196 :: 		Lcd_out (2,1, txt33);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Menu_txt33_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Menu_txt33_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,197 :: 		delay_ms (2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_Menu38:
	DECFSZ      R13, 1, 1
	BRA         L_Menu38
	DECFSZ      R12, 1, 1
	BRA         L_Menu38
	DECFSZ      R11, 1, 1
	BRA         L_Menu38
	NOP
	NOP
;menu.c,199 :: 		if (button(&PORTD, 1, 200, 1))
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
	GOTO        L_Menu39
;menu.c,200 :: 		goto menu;
	GOTO        ___Menu_menu
L_Menu39:
;menu.c,201 :: 		}
	GOTO        L_Menu33
;menu.c,202 :: 		}
L_Menu32:
;menu.c,203 :: 		goto menu;
	GOTO        ___Menu_menu
;menu.c,204 :: 		}//~ final Menu
L_end_Menu:
	RETURN      0
; end of _Menu
