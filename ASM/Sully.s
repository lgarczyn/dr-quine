extern dprintf
extern sprintf
extern printf
extern access
extern open
extern system
global main

section .data
code db "extern dprintf%2$cextern printf%2$cextern sprintf%2$cextern access%2$cextern system%2$cglobal main%2$c%2$csection .data%2$ccode db %3$c%1$s%3$c%2$ccmd db %3$c%5$s%3$c%2$cfirst db %3$cSully_5.c%3$c%2$c%2$csection .text%2$cmain:%2$cpush RBP%2$c%2$cmov R11, %4$d%2$clea RDI, [rel first]%2$cmov RSI, 0%2$ccmp EAX, 0%2$cjnz _endif%2$ccmp R11, 0%2$cjl _end%2$cdec R11%2$c%2$c_endif:%2$c%2$c%2$clea RDI, [rel code]%2$clea RSI, [rel code]%2$cmov RDX, 10%2$cmov RCX, 34%2$cmov R8, R11%2$cxor RAX, RAX%2$ccall printf%2$c%2$c_end:%2$cmov RAX,0%2$cpop RBP%2$cret%2$c", 0
cmd db "S=./Sully_", 37, "d gcc $S.s -o $S && chmod 700 $S && ./$S",0
first db "Sully_5.s"
name db "Sully_", 37, "d.s", 0
buffer: TIMES 1024 db 0

section .text
main:
push RBP
push R12
push R13
;checking for existing Sully_5 and dec counter
lea RDI, [rel first]
mov RSI, 0
call access
cmp EAX, 0
mov R12, 5
jnz _endif
cmp R12, 0
jl _end
dec R12

_endif:
;getting file name
lea RDI, [rel buffer]
lea RSI, [rel name]
mov RDX, R12
xor RAX, RAX
call sprintf

;opening file
lea RDI, [rel buffer]
mov RSI, 01001o
mov RDX, 0644o
mov RAX, 2
call open

;writing to file
mov RDI, RAX
lea RSI, [rel code]
lea RDX, [rel code]
mov RCX, 10
mov R8, R12
lea R9, [rel cmd]
xor RAX, RAX
call dprintf

_end:
mov RAX,0
pop R13
pop R12
pop RBP
ret



;int main()
;{
;int i = 5;
;if(access(S(Sully_5.c),F_OK)!=-1)if(i--<=0)return 0;
;char b[1000];
;sprintf(b, S(Sully_%d.c), i);
;FILE* f = fopen(b,S(w));
;fprintf(f, F, F, 10, 34, 37, i);
;fclose(f);
;sprintf(b, S(gcc Sully_%d.c -o Sully_%d && chmod 700 Sully_%d && ./Sully_%d), i, i, i, i);
;system(b);
;}
