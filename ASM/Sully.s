extern dprintf
extern sprintf
extern access
extern open
extern close
extern system
global main

section .data
code db "extern dprintf%2$cextern sprintf%2$cextern access%2$cextern open%2$cextern close%2$cextern system%2$cglobal main%2$c%2$csection .data%2$ccode db %3$c%1$s%3$c, 0%2$ccmd db %3$cS=Sully_%3$c, 37, %3$cd && nasm $S.s -f macho64 --prefix _ && gcc $S.o -o $S && rm $S.o && chmod 700 $S && ./$S%3$c, 10, 0%2$cfirst db %3$cSully_5.s%3$c, 0%2$cname db %3$cSully_%3$c, 37, %3$cd.s%3$c, 0%2$cbuffer: TIMES 1024 db 0%2$c%2$csection .text%2$cmain:%2$cpush RBP%2$cpush R12%2$cpush R13%2$cmov R12, %4$d%2$c;checking counter and existing Sully_5, then dec counter%2$ccmp R12, 0%2$cjle _end%2$c%2$clea RDI, [rel first]%2$cmov RSI, 0%2$ccall access%2$ccmp EAX, 0%2$cjnz _endif%2$cdec R12%2$c%2$c_endif:%2$c;getting file name%2$clea RDI, [rel buffer]%2$clea RSI, [rel name]%2$cmov RDX, R12%2$cxor RAX, RAX%2$ccall sprintf%2$c%2$c;opening file%2$clea RDI, [rel buffer]%2$cmov RSI, 01001o%2$cmov RDX, 0644o%2$cmov RAX, 2%2$ccall open%2$c%2$c;writing to file%2$cmov RDI, RAX%2$clea RSI, [rel code]%2$clea RDX, [rel code]%2$cmov RCX, 10%2$cmov R8, 34%2$cmov R9, R12%2$cxor RAX, RAX%2$ccall dprintf%2$ccall close%2$c%2$c;getting cmd%2$clea RDI, [rel buffer]%2$clea RSI, [rel cmd]%2$cmov RDX, R12%2$cxor RAX, RAX%2$ccall sprintf%2$c%2$c;executing%2$clea RDI, [rel buffer];?%2$ccall system%2$c%2$c_end:%2$cmov RAX,0%2$cpop R13%2$cpop R12%2$cpop RBP%2$cret%2$c", 0
cmd db "S=Sully_", 37, "d && nasm $S.s -f macho64 --prefix _ && gcc $S.o -o $S && rm $S.o && chmod 700 $S && ./$S", 10, 0
first db "Sully_5.s", 0
name db "Sully_", 37, "d.s", 0
buffer: TIMES 1024 db 0

section .text
main:
push RBP
push R12
push R13
mov R12, 5
;checking counter and existing Sully_5, then dec counter
cmp R12, 0
jle _end

lea RDI, [rel first]
mov RSI, 0
call access
cmp EAX, 0
jnz _endif
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
mov R8, 34
mov R9, R12
xor RAX, RAX
call dprintf
call close

;getting cmd
lea RDI, [rel buffer]
lea RSI, [rel cmd]
mov RDX, R12
xor RAX, RAX
call sprintf

;executing
lea RDI, [rel buffer];?
call system

_end:
mov RAX,0
pop R13
pop R12
pop RBP
ret
