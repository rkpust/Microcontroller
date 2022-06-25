#line 1 "F:/B.Sc Engg. Course (CSE)/4-2/Interfacing & Microcontroller/Lab/Light Blinking/Light Blinking Code/Light_Blinking.c"
void main() {
 TRISB = 0x00;

 while(1) {

 PORTB = 0XFF;
 delay_ms(1000);
 PORTB = 0x00;
 delay_ms(1000);
 }

}
