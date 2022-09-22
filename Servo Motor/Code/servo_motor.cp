#line 1 "F:/B.Sc Engg. Course (CSE)/4-2/Interfacing & Microcontroller/Lab/Servo Motor/Code/servo_motor.c"
void Rotation0()
{
unsigned int i;
for(i=0;i<10;i++)
{
PORTB.F0 = 1;
Delay_us(80);
PORTB.F0 = 0;
Delay_us(1920);
}
}

void Rotation90()
{
unsigned int i;
for(i=0;i<100;i++)
{
PORTB.F0 = 1;
Delay_us(150);
PORTB.F0 = 0;
Delay_us(1850);
}
}

void Rotation180()

{
unsigned int i;
for(i=0;i<10;i++)
{
PORTB.F0 = 1;
Delay_us(220);
PORTB.F0 = 0;
Delay_us(1780);
}
}

void main()
{
TRISB = 0;
do
{
Rotation0();
Delay_ms(2000);
Rotation90();
Delay_ms(2000);
Rotation180();
}while(1);
}
