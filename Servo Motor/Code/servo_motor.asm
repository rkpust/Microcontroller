
_Rotation0:

;servo_motor.c,1 :: 		void Rotation0() //0 Degree
;servo_motor.c,4 :: 		for(i=0;i<10;i++)
	CLRF       R1+0
	CLRF       R1+1
L_Rotation00:
	MOVLW      0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Rotation021
	MOVLW      10
	SUBWF      R1+0, 0
L__Rotation021:
	BTFSC      STATUS+0, 0
	GOTO       L_Rotation01
;servo_motor.c,6 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;servo_motor.c,7 :: 		Delay_us(80); // pulse of 800us
	MOVLW      53
	MOVWF      R13+0
L_Rotation03:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation03
;servo_motor.c,8 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;servo_motor.c,9 :: 		Delay_us(1920);
	MOVLW      5
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_Rotation04:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation04
	DECFSZ     R12+0, 1
	GOTO       L_Rotation04
	NOP
	NOP
;servo_motor.c,4 :: 		for(i=0;i<10;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor.c,10 :: 		}
	GOTO       L_Rotation00
L_Rotation01:
;servo_motor.c,11 :: 		}
L_end_Rotation0:
	RETURN
; end of _Rotation0

_Rotation90:

;servo_motor.c,13 :: 		void Rotation90() //90 Degree
;servo_motor.c,16 :: 		for(i=0;i<100;i++)
	CLRF       R1+0
	CLRF       R1+1
L_Rotation905:
	MOVLW      0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Rotation9023
	MOVLW      100
	SUBWF      R1+0, 0
L__Rotation9023:
	BTFSC      STATUS+0, 0
	GOTO       L_Rotation906
;servo_motor.c,18 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;servo_motor.c,19 :: 		Delay_us(150); // pulse of 1500us
	MOVLW      99
	MOVWF      R13+0
L_Rotation908:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation908
	NOP
	NOP
;servo_motor.c,20 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;servo_motor.c,21 :: 		Delay_us(1850);
	MOVLW      5
	MOVWF      R12+0
	MOVLW      205
	MOVWF      R13+0
L_Rotation909:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation909
	DECFSZ     R12+0, 1
	GOTO       L_Rotation909
;servo_motor.c,16 :: 		for(i=0;i<100;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor.c,22 :: 		}
	GOTO       L_Rotation905
L_Rotation906:
;servo_motor.c,23 :: 		}
L_end_Rotation90:
	RETURN
; end of _Rotation90

_Rotation180:

;servo_motor.c,25 :: 		void Rotation180() //180 Degree
;servo_motor.c,29 :: 		for(i=0;i<10;i++)
	CLRF       R1+0
	CLRF       R1+1
L_Rotation18010:
	MOVLW      0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Rotation18025
	MOVLW      10
	SUBWF      R1+0, 0
L__Rotation18025:
	BTFSC      STATUS+0, 0
	GOTO       L_Rotation18011
;servo_motor.c,31 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;servo_motor.c,32 :: 		Delay_us(220); // pulse of 2200us
	MOVLW      146
	MOVWF      R13+0
L_Rotation18013:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation18013
	NOP
;servo_motor.c,33 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;servo_motor.c,34 :: 		Delay_us(1780);
	MOVLW      5
	MOVWF      R12+0
	MOVLW      158
	MOVWF      R13+0
L_Rotation18014:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation18014
	DECFSZ     R12+0, 1
	GOTO       L_Rotation18014
	NOP
;servo_motor.c,29 :: 		for(i=0;i<10;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor.c,35 :: 		}
	GOTO       L_Rotation18010
L_Rotation18011:
;servo_motor.c,36 :: 		}
L_end_Rotation180:
	RETURN
; end of _Rotation180

_main:

;servo_motor.c,38 :: 		void main()
;servo_motor.c,40 :: 		TRISB = 0; // PORTB as Ouput Port
	CLRF       TRISB+0
;servo_motor.c,41 :: 		do
L_main15:
;servo_motor.c,43 :: 		Rotation0(); //0 Degree
	CALL       _Rotation0+0
;servo_motor.c,44 :: 		Delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
;servo_motor.c,45 :: 		Rotation90(); //90 Degree
	CALL       _Rotation90+0
;servo_motor.c,46 :: 		Delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
;servo_motor.c,47 :: 		Rotation180(); //180 Degree
	CALL       _Rotation180+0
;servo_motor.c,48 :: 		}while(1);
	GOTO       L_main15
;servo_motor.c,49 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
