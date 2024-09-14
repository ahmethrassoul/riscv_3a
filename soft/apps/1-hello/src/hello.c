/**
 * 
 * Bertrand LE GAL (bertrand.le-gal@irisa.fr)
 * 
*/
inline void putchar(const char c)
{
   volatile unsigned int* uart_ou = 0x400008;
   ( *uart_ou ) = c;
}

void start() // no main
{
   putchar('H');
   putchar('e');
   putchar('l');
   putchar('l');
   putchar('o');
   putchar('\n');
   asm volatile("ebreak");
}

