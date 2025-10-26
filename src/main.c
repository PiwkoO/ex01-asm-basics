#include <stdint.h>
#include <stdio.h>

extern unsigned strlen8(const char* s);
extern unsigned sum8(const uint8_t* p, unsigned n);

int main(void) {
  const unsigned S = 123; /* podmień na (nr_albumu % 1000) w raporcie */
  const unsigned N = 200u + (S % 50u);

  static uint8_t buf[512];
  for (unsigned i=0;i<N;i++) buf[i]=(uint8_t)((i*7u+3u)&0xFF);

  const char *txt = "ARM RISC demo";
  unsigned len = strlen8(txt);
  unsigned s   = sum8(buf, N);

  printf("ex01: strlen8=%u sum8=%u\n", len, s);
  if (len>0 && s>0) {
    puts("OK [ex01]");
  } else {
    puts("FAIL [ex01]");
  }
  return 0;
}
