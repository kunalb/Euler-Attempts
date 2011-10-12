#include <stdio.h>
#include <gmp.h>
#define LIMIT 2000000

char sieve[250000];

void setbit(int posn) 
{
  sieve[posn/8] |= (1<<(posn%8));
}

int getbit(int posn)
{
  return sieve[posn/8]&(1<<(posn%8));
}

int main(void) 
{
  mpz_t sum, cur; unsigned long i,j;
  mpz_init(sum);  
  mpz_init(cur);

  for(i=0; i<250000; i++) sieve[i]=0;

  i=2;
  while(i<LIMIT) 
  {
    mpz_set_ui(cur, i);
    mpz_add(sum, sum, cur);

    for(j=1; (i*j)<LIMIT; j++)
      setbit(i*j);
  
    i++;
    while(getbit(i)!=0) i++;
  }

  mpz_out_str(stdout,10,sum);
  printf("\n");

  return 0;
}
