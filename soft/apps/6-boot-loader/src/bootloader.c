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

void print_string(char* s)
{
    volatile unsigned int* uart_ou = 0x400008;
    while( *s )
    {
        (*uart_ou) = (*s);
        s += 1;
    }
}

int main()
{
    volatile unsigned int* leds_io = 0x400004;
    volatile unsigned int* uart_ou = 0x400008;
    volatile unsigned int* uart_ct = 0x400010;
    volatile unsigned int* uart_in = 0x400020;

    print_string("BreiZH RISC-V boot-leader (1.0)\n");
    print_string(__DATE__);
    print_string(" @ ");
    print_string(__TIME__);
    print_string("\n");
    print_string("waiting for data...\n");

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
