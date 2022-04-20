bits 32
section .text
global print

print:
  pop edx ; bit to print
  pop eax ; place to print
  
  add eax, vidptr ; find memory address to print to
  mov [eax], edx ; put given byte at address
  
  add eax, 1 ; find coloring byte
  mov [eax], 0x07 ; set character color grey
  
  ret



section .data
  vidptr: dw 0xb8000
