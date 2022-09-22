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