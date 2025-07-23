section .text
  global _start

_start:
  mov eax, 1
  mov ebx, 1
loop:
  add ebx, 1
  cmp ebx, 10 # compare ebx and 10
  jl loop # jump if ebx less than 10 jump to loop
  int 0x80

