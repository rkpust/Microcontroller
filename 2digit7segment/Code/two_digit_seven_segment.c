char array_CA [] = {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void main() {
     int i =0,leftDigit,rightDigit,j;
     TRISB = 0x00;
     PORTB = 0x00;
     
     TRISC = 0x00;
     TRISC = 0x00;
     
     while(1)
     {
      for(i=0;i<100;i++)
      {
       leftDigit = i/10;
       rightDigit = i%10;
       
       for(j=1;j<50;j++)
       {
        portc.f0 = 1;
        portb = array_CA[leftDigit];
        delay_ms(10);
        portc.f0 = 0;
        
        portc.f1 = 1;
        portb = array_CA[rightDigit];
        delay_ms(10);
        portc.f1 = 0;
       }
      }
     }

}