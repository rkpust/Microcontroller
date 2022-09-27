#line 1 "F:/B.Sc Engg. Course (CSE)/4-2/Interfacing & Microcontroller/Lab/Motor Rotating/Code/Motor_Rotating.c"

void main() {
 TRISC = 0x00;
 PORTC = 0x00;
 TRISD = 0xff;

 while(1){
 int status;
 if(portd.f0==1){
 delay_ms(200);

 if(portd.f0==1)
 {
 status=1;
 }
 }

 if(portd.f3==1){
 delay_ms(200);
 if(portd.f3==1)
 {
 status=0;
 }

 if(portd.f6==1){
 delay_ms(200);
 if(portd.f6==1)
 {
 status=2;
 }
 }


 if(status==1) {
 portc.f0=1;
 portc.f1=0;
 }
 else if(status==2) {
 portc.f0=0;
 portc.f1=1;
 }
 else {
 portc.f0=0;
 portc.f1=0;
 }
 }
 }

}
