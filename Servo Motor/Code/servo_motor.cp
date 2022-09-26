#line 1 "F:/B.Sc Engg. Course (CSE)/4-2/Interfacing & Microcontroller/Lab/Servo Motor/Code/servo_motor.c"
void Rotation0()
{
unsigned int i;
for(i=0;i<50;i++)
{
PORTB.F0 = 1;
delay_us(800);
PORTB.F0 = 0;
delay_us(19200);
}
}

void Rotation90()
{
unsigned int i;
for(i=0;i<50;i++)
{
PORTB.F0 = 1;
delay_us(1500);
PORTB.F0 = 0;
delay_us(18500);
}
}

void Rotation180()

{
unsigned int i;
for(i=0;i<50;i++)
{
PORTB.F0 = 1;
delay_us(2200);
PORTB.F0 = 0;
delay_us(17800);
}
}

void main()
{
TRISB = 0;
do
{
Rotation0();
delay_ms(2000);
Rotation90();
delay_ms(2000);
Rotation180();
delay_ms(2000);
}while(1);
}
