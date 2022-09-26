#line 1 "F:/B.Sc Engg. Course (CSE)/4-2/Interfacing & Microcontroller/Lab/Temperature Sensor Interfacing/Code/temperature.c"

sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D4 at RB2_bit;
sbit LCD_D5 at RB3_bit;
sbit LCD_D6 at RB4_bit;
sbit LCD_D7 at RB5_bit;
sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB4_bit;
sbit LCD_D7_Direction at TRISB5_bit;

char display[16]="";
void main() {
unsigned int result;
float volt,temp;
trisb=0x00;
trisa=0xff;
adcon1=0x80;
lcd_init();
lcd_cmd(_lcd_clear);
lcd_cmd(_LCD_CURSOR_OFF);
while(1)
{
result=adc_read(0);
volt=result*4.88;
temp=volt/10;
lcd_out(1,1,"Temp =");
floattostr(temp,display);
lcd_out_cp(display);
lcd_chr(1,15,223);
lcd_out_cp("C");
}
}
