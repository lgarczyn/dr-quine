extern printf
global main

section .data
code db "extern printf%2$cglobal main%2$c%2$csection .data%2$ccode db %3$c%1$s%3$c%2$c;first comment%2$csection .text%2$cmain:%2$c;second comment%2$cpush RBP%2$clea RDI, [rel code]%2$clea RSI, [rel code]%2$cmov RDX, 10%2$cmov RCX, 34%2$cxor RAX, RAX%2$ccall printf%2$ccall main2%2$cpop RBP%2$cret%2$cmain2:%2$cmov RAX,0%2$cret%2$c"
;first comment
section .text
main:
;second comment
push RBP
lea RDI, [rel code]
lea RSI, [rel code]
mov RDX, 10
mov RCX, 34
xor RAX, RAX
call printf
call main2
pop RBP
ret
main2:
mov RAX,0
ret
