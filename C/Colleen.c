#include <stdio.h>
char *F = "#include <stdio.h>%2$cchar *F = %3$c%1$s%3$c;%2$cvoid display() {printf(F, F, 10, 34, 47);}%4$c%4$clol1%2$cint main () {display();%4$c*lol2*%4$c}%2$c";
void display() {printf(F, F, 10, 34, 47);}//lol1
int main () {display();/*lol2*/}
