
_Rotation0:

;servo_motor.c,1 :: 		void Rotation0() //0 Degree
;servo_motor.c,4 :: 		for(i=0;i<50;i++)
	CLRF       R1+0
	CLRF       R1+1
L_Rotation00:
	MOVLW      0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Rotation022
	MOVLW      50
	SUBWF      R1+0, 0
L__Rotation022:
	BTFSC      STATUS+0, 0
	GOTO       L_Rotation01
;servo_motor.c,6 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;servo_motor.c,7 :: 		delay_us(800); // pulse of 800us
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_Rotation03:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation03
	DECFSZ     R12+0, 1
	GOTO       L_Rotation03
	NOP
;servo_motor.c,8 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;servo_motor.c,9 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Rotation04:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation04
	DECFSZ     R12+0, 1
	GOTO       L_Rotation04
	NOP
	NOP
;servo_motor.c,4 :: 		for(i=0;i<50;i++)
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
;servo_motor.c,16 :: 		for(i=0;i<50;i++)
	CLRF       R1+0
	CLRF       R1+1
L_Rotation905:
	MOVLW      0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Rotation9024
	MOVLW      50
	SUBWF      R1+0, 0
L__Rotation9024:
	BTFSC      STATUS+0, 0
	GOTO       L_Rotation906
;servo_motor.c,18 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;servo_motor.c,19 :: 		delay_us(1500); // pulse of 1500us
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_Rotation908:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation908
	DECFSZ     R12+0, 1
	GOTO       L_Rotation908
	NOP
;servo_motor.c,20 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;servo_motor.c,21 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_Rotation909:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation909
	DECFSZ     R12+0, 1
	GOTO       L_Rotation909
	NOP
	NOP
;servo_motor.c,16 :: 		for(i=0;i<50;i++)
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
;servo_motor.c,29 :: 		for(i=0;i<50;i++)
	CLRF       R1+0
	CLRF       R1+1
L_Rotation18010:
	MOVLW      0
	SUBWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Rotation18026
	MOVLW      50
	SUBWF      R1+0, 0
L__Rotation18026:
	BTFSC      STATUS+0, 0
	GOTO       L_Rotation18011
;servo_motor.c,31 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;servo_motor.c,32 :: 		delay_us(2200); // pulse of 2200us
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_Rotation18013:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation18013
	DECFSZ     R12+0, 1
	GOTO       L_Rotation18013
	NOP
	NOP
;servo_motor.c,33 :: 		PORTB.F0 = 0;
	BCF        PORTB+0, 0
;servo_motor.c,34 :: 		delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_Rotation18014:
	DECFSZ     R13+0, 1
	GOTO       L_Rotation18014
	DECFSZ     R12+0, 1
	GOTO       L_Rotation18014
	NOP
;servo_motor.c,29 :: 		for(i=0;i<50;i++)
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
;servo_motor.c,44 :: 		delay_ms(2000);
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
;servo_motor.c,46 :: 		delay_ms(2000);
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
;servo_motor.c,48 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
	NOP
;servo_motor.c,49 :: 		}while(1);
	GOTO       L_main15
;servo_motor.c,50 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
