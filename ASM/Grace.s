%define TARGET "Grace_kid.s"
%define CODE "%4$cdefine TARGET %3$cGrace_kid.s%3$c%2$c%4$cdefine CODE %3$c%1$s%3$c%2$c%2$c%2$c%4$cmacro MAIN 0%2$cextern dprintf%2$cextern open%2$cglobal main%2$c%2$csection .data%2$ctarget db TARGET, 0%2$ccode db CODE, 0%2$c%2$csection .text%2$cmain:%2$cpush RBP%2$clea RDI, [rel target]%2$cmov RSI, 01001o%2$cmov RDX, 0644o%2$cmov RAX, 2%2$ccall open%2$c;comment%2$cmov RDI, RAX%2$clea RSI, [rel code]%2$clea RDX, [rel code]%2$cmov RCX, 10%2$cmov R8, 34%2$cmov R9, 37%2$cxor RAX, RAX%2$ccall dprintf%2$cmov RAX,0%2$cpop RBP%2$cret%2$c%4$cendmacro%2$c%2$cMAIN%2$c"


%macro MAIN 0
extern dprintf
extern open
global main

section .data
target db TARGET, 0
code db CODE, 0

section .text
main:
push RBP
lea RDI, [rel target]
mov RSI, 01001o
mov RDX, 0644o
mov RAX, 2
call open
;comment
mov RDI, RAX
lea RSI, [rel code]
lea RDX, [rel code]
mov RCX, 10
mov R8, 34
mov R9, 37
xor RAX, RAX
call dprintf
mov RAX,0
pop RBP
ret
%endmacro

MAIN
