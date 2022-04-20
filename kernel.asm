bits 32



section .text
  align 4
  dd 0x1BADB002
  dd 0x00
  dd - (0x1BADB002 + 0x00)

global start

extern print


init:
  cli
  mov esp, stack
  ret


start:
  call init
  mov eax, 0
  push eax
  mov eax, 'h'
  push eax
  call print
  jmp $
  
section .bss
  resb 8000
  stack:
