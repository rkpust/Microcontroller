
_main:

;Seven_Segment_By_Switch.c,1 :: 		void main() {
;Seven_Segment_By_Switch.c,2 :: 		char array[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
	MOVLW      63
	MOVWF      main_array_L0+0
	MOVLW      6
	MOVWF      main_array_L0+1
	MOVLW      91
	MOVWF      main_array_L0+2
	MOVLW      79
	MOVWF      main_array_L0+3
	MOVLW      102
	MOVWF      main_array_L0+4
	MOVLW      109
	MOVWF      main_array_L0+5
	MOVLW      125
	MOVWF      main_array_L0+6
	MOVLW      7
	MOVWF      main_array_L0+7
	MOVLW      127
	MOVWF      main_array_L0+8
	MOVLW      111
	MOVWF      main_array_L0+9
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;Seven_Segment_By_Switch.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Seven_Segment_By_Switch.c,5 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Seven_Segment_By_Switch.c,6 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Seven_Segment_By_Switch.c,9 :: 		while(1) {
L_main0:
;Seven_Segment_By_Switch.c,10 :: 		if (portd.f0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Seven_Segment_By_Switch.c,11 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;Seven_Segment_By_Switch.c,13 :: 		if (portd.f0==1) {
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;Seven_Segment_By_Switch.c,14 :: 		if (i<9)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;Seven_Segment_By_Switch.c,15 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
L_main5:
;Seven_Segment_By_Switch.c,17 :: 		}
L_main4:
;Seven_Segment_By_Switch.c,20 :: 		}
L_main2:
;Seven_Segment_By_Switch.c,22 :: 		if (portd.f4==1){
	BTFSS      PORTD+0, 4
	GOTO       L_main6
;Seven_Segment_By_Switch.c,23 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;Seven_Segment_By_Switch.c,25 :: 		if (portd.f4==1) {
	BTFSS      PORTD+0, 4
	GOTO       L_main8
;Seven_Segment_By_Switch.c,26 :: 		if(i>0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;Seven_Segment_By_Switch.c,27 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
L_main9:
;Seven_Segment_By_Switch.c,29 :: 		}
L_main8:
;Seven_Segment_By_Switch.c,31 :: 		}
L_main6:
;Seven_Segment_By_Switch.c,32 :: 		portb = array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      main_array_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Seven_Segment_By_Switch.c,34 :: 		}
	GOTO       L_main0
;Seven_Segment_By_Switch.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
