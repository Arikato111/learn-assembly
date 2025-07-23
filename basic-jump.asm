section .data

section .text
  global _start

_start:
  mov eax, 1
  mov ebx, 10
  jmp skip 
  add ebx, 120
skip:
  int 0x80
