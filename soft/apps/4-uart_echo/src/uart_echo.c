inline int cycles() {
   int cycles;
   asm volatile ("rdcycle %0" : "=r"(cycles));
   return cycles;
}

inline void wait_cycles(int nb_cycles)
{
  int lim = cycles() + nb_cycles;
  while( cycles() < lim );
}

int main()
{
    volatile unsigned int* leds_io = 0x400004;
    volatile unsigned int* uart_ou = 0x400008;
    volatile unsigned int* uart_ct = 0x400010;
    volatile unsigned int* uart_in = 0x400020;

    int cnt = 0x8000;
    (*leds_io) = cnt;
    while( 1 )
    {
        int rcvd;
        do
        {
            rcvd = (*uart_in);
        }while( (rcvd & 0x0100) == 0 );

        (*uart_ou) = rcvd & 0x00FF;

        (*leds_io) = ++cnt;
    }
    
    return 0;
}
