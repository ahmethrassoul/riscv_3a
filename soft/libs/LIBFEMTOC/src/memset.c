#include "../femtostdlib.h"

/* 
 * Needed to prevent the compiler from recognizing memset in the
 * body of memset and replacing it with a call to memset
 * (infinite recursion) 
 */ 
#pragma GCC optimize ("no-tree-loop-distribute-patterns")

/*
 * Super-slow memset function.
 * TODO: write word by word.
 */ 
void* memset(void* s, int c, size_t n) {
   unsigned char* p = (unsigned char*)s;
   for(size_t i=0; i<n; ++i) {
       *p = (unsigned char)c;
       p++;
   }
   return s;
}

