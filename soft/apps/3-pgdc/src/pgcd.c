int main()
{
   int a = 76152;
   int b =  9865;

   while( a != b )
   {
      if( a > b )
         a -= b;
      else
         b -= a;
   }

   return a;
}

int function(  )
{
   int R1 = 13;

   int R2 = 13;

   int* R3 = 1024;

   int R4 = (*R3);

   int  R5 = R1 * R2 * R2 + R4 * R2 + R4;

   int R6 = (R5 > R4) ? -R5 : R4;
}