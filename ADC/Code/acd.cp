#line 1 "F:/B.Sc Engg. Course (CSE)/4-2/Interfacing & Microcontroller/Lab/ADC/Code/acd.c"

int valADC;

char x[4];
void main()
{

UART1_Init(9600);

ADC_Init();

while(1)
{

valADC = ADC_Read(0);

IntToStr(valADC,x);

UART1_Write_Text("Analog value = ");
UART1_Write_Text(x);

strcpy(x,"");
UART1_Write(13);
Delay_ms(1000);
}
}
