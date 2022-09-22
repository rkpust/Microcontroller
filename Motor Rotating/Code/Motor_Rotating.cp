#line 1 "F:/B.Sc Engg. Course (CSE)/4-2/Interfacing & Microcontroller/Lab/Motor Rotating/Code/Motor_Rotating.c"
void main() {
 TRISC = 0x00;
 PORTC = 0x00;
 TRISD = 0xff;

 while(1){
 if(portd.f0==1){
 portc.f0=0xff;
 portc.f1=0x00;
 }
 }

}
