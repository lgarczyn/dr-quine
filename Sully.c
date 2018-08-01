#define F "#define F %3$c%1$s%3$c%2$c#include <stdio.h>%2$c#include <stdlib.h>%2$c#define S(X) #X%2$cint main()%2$c{%2$cint i = %5$d;%2$cif(i--<=0)return 0;%2$cchar b[1000];%2$csprintf(b, S(Sully_%4$cd.c), i);%2$cFILE* f = fopen(b,S(w));%2$cfprintf(f, F, F, 10, 34, 37, i);%2$cfclose(f);%2$csprintf(b, S(gcc Sully_%4$cd.c -o Sully_%4$cd && chmod 700 Sully_%4$cd && ./Sully_%4$cd), i, i, i, i);%2$csystem(b);%2$c}%2$c"
#include <stdio.h>
#include <stdlib.h>
#define S(X) #X
int main()
{
int i = 6;
if(i--<=0)return 0;
char b[1000];
sprintf(b, S(Sully_%d.c), i);
FILE* f = fopen(b,S(w));
fprintf(f, F, F, 10, 34, 37, i);
fclose(f);
sprintf(b, S(gcc Sully_%d.c -o Sully_%d && chmod 700 Sully_%d && ./Sully_%d), i, i, i, i);
system(b);
}
