
_main:

;two_digit_seven_segment.c,2 :: 		void main() {
;two_digit_seven_segment.c,3 :: 		int i =0,leftDigit,rightDigit,j;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;two_digit_seven_segment.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;two_digit_seven_segment.c,5 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;two_digit_seven_segment.c,7 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;two_digit_seven_segment.c,8 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;two_digit_seven_segment.c,10 :: 		while(1)
L_main0:
;two_digit_seven_segment.c,12 :: 		for(i=0;i<100;i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      100
	SUBWF      main_i_L0+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;two_digit_seven_segment.c,14 :: 		leftDigit = i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_leftDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_leftDigit_L0+1
;two_digit_seven_segment.c,15 :: 		rightDigit = i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_rightDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_rightDigit_L0+1
;two_digit_seven_segment.c,17 :: 		for(j=1;j<50;j++)
	MOVLW      1
	MOVWF      main_j_L0+0
	MOVLW      0
	MOVWF      main_j_L0+1
L_main5:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      50
	SUBWF      main_j_L0+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;two_digit_seven_segment.c,19 :: 		portc.f0 = 1;
	BSF        PORTC+0, 0
;two_digit_seven_segment.c,20 :: 		portb = array_CA[leftDigit];
	MOVF       main_leftDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;two_digit_seven_segment.c,21 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
;two_digit_seven_segment.c,22 :: 		portc.f0 = 0;
	BCF        PORTC+0, 0
;two_digit_seven_segment.c,24 :: 		portc.f1 = 1;
	BSF        PORTC+0, 1
;two_digit_seven_segment.c,25 :: 		portb = array_CA[rightDigit];
	MOVF       main_rightDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;two_digit_seven_segment.c,26 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
;two_digit_seven_segment.c,27 :: 		portc.f1 = 0;
	BCF        PORTC+0, 1
;two_digit_seven_segment.c,17 :: 		for(j=1;j<50;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;two_digit_seven_segment.c,28 :: 		}
	GOTO       L_main5
L_main6:
;two_digit_seven_segment.c,12 :: 		for(i=0;i<100;i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;two_digit_seven_segment.c,29 :: 		}
	GOTO       L_main2
L_main3:
;two_digit_seven_segment.c,30 :: 		}
	GOTO       L_main0
;two_digit_seven_segment.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
