
_main:

;Motor_Rotating.c,1 :: 		void main() {
;Motor_Rotating.c,2 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Motor_Rotating.c,3 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;Motor_Rotating.c,4 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Motor_Rotating.c,6 :: 		while(1){
L_main0:
;Motor_Rotating.c,7 :: 		if(portd.f0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Motor_Rotating.c,8 :: 		portc.f0=0xff;
	BSF        PORTC+0, 0
;Motor_Rotating.c,9 :: 		portc.f1=0x00;
	BCF        PORTC+0, 1
;Motor_Rotating.c,10 :: 		}
L_main2:
;Motor_Rotating.c,13 :: 		}
	GOTO       L_main0
;Motor_Rotating.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
