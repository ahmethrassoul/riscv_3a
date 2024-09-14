/**
 * 
 * Bertrand LE GAL (bertrand.le-gal@irisa.fr)
 * 
*/
int main()
{
#if 1
   print_string("(ii)\n");
   print_string("(ii) HELLO world !\n");
   print_string("(ii) Let me introduce myself, I am the BreiZH RISC-V.\n");
   print_string("(ii) release :\n");
   print_string("(ii) ");
   print_string(__DATE__);
   print_string(" ");
   print_string(__TIME__);
   print_string( "\n");
   print_string("(ii)\n");
   return 0;
#else
   print_string("(aa)\n(bb) HELLO world !\n(ii) Let me introduce myself, I am the BreiZH RISC-V.\n(ii) release :\n(ii)\n");
   return 0;
#endif
}

