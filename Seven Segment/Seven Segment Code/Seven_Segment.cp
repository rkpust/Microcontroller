#line 1 "F:/B.Sc Engg. Course (CSE)/4-2/Interfacing & Microcontroller/Lab/Seven Segment/Seven Segment Code/Seven_Segment.c"
void main() {
 char array[] = {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
 int i;
 trisb =0x00;
 portb = 0x00;

 while(1) {
 for(i=0;i<10;i++){
 portb = array[i];
 delay_ms(1000);
 }
 }
}
