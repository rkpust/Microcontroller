
_main:

;Motor_Rotating.c,2 :: 		void main() {
;Motor_Rotating.c,3 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Motor_Rotating.c,4 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;Motor_Rotating.c,5 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Motor_Rotating.c,7 :: 		while(1){
L_main0:
;Motor_Rotating.c,9 :: 		if(portd.f0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Motor_Rotating.c,10 :: 		delay_ms(200);
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
;Motor_Rotating.c,12 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;Motor_Rotating.c,14 :: 		status=1;
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
;Motor_Rotating.c,15 :: 		}
L_main4:
;Motor_Rotating.c,16 :: 		}
L_main2:
;Motor_Rotating.c,18 :: 		if(portd.f3==1){
	BTFSS      PORTD+0, 3
	GOTO       L_main5
;Motor_Rotating.c,19 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
;Motor_Rotating.c,20 :: 		if(portd.f3==1)
	BTFSS      PORTD+0, 3
	GOTO       L_main7
;Motor_Rotating.c,22 :: 		status=0;
	CLRF       R1+0
	CLRF       R1+1
;Motor_Rotating.c,23 :: 		}
L_main7:
;Motor_Rotating.c,25 :: 		if(portd.f6==1){
	BTFSS      PORTD+0, 6
	GOTO       L_main8
;Motor_Rotating.c,26 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;Motor_Rotating.c,27 :: 		if(portd.f6==1)
	BTFSS      PORTD+0, 6
	GOTO       L_main10
;Motor_Rotating.c,29 :: 		status=2;
	MOVLW      2
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
;Motor_Rotating.c,30 :: 		}
L_main10:
;Motor_Rotating.c,31 :: 		}
L_main8:
;Motor_Rotating.c,34 :: 		if(status==1) {
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVLW      1
	XORWF      R1+0, 0
L__main16:
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;Motor_Rotating.c,35 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;Motor_Rotating.c,36 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;Motor_Rotating.c,37 :: 		}
	GOTO       L_main12
L_main11:
;Motor_Rotating.c,38 :: 		else if(status==2) {
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVLW      2
	XORWF      R1+0, 0
L__main17:
	BTFSS      STATUS+0, 2
	GOTO       L_main13
;Motor_Rotating.c,39 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;Motor_Rotating.c,40 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;Motor_Rotating.c,41 :: 		}
	GOTO       L_main14
L_main13:
;Motor_Rotating.c,43 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;Motor_Rotating.c,44 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;Motor_Rotating.c,45 :: 		}
L_main14:
L_main12:
;Motor_Rotating.c,46 :: 		}
L_main5:
;Motor_Rotating.c,47 :: 		}
	GOTO       L_main0
;Motor_Rotating.c,49 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
