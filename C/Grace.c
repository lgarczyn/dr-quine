#include <stdio.h>
#include <fcntl.h>
#define C lol
#define B "#include <stdio.h>%2$c#include <fcntl.h>%2$c#define C lol%2$c#define B %3$c%1$s%3$c%2$c#define A int main(%4$c**%4$c){fprintf(fopen(%3$cGrace_kid.c%3$c, %3$cw%3$c), B, B, 10, 34, 47);}%2$cA%2$c"
#define A int main(/**/){fprintf(fopen("Grace_kid.c", "w"), B, B, 10, 34, 47);}
A
