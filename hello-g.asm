.global _start
.intel_syntax
.section .text

_start:
  mov %eax, 4
  mov %ebx, 1
  lea %ecx, [message]
  mov %edx, 13
  int 0x80

  # exit systemcall
  mov %eax, 1
  mov %ebx, 60
  int 0x80

.section .data
  message:
    .ascii "Hello, World\n"
