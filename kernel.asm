bits  32                      ; use 32bit mode

section .text
  ; begin multiboot-header
  align 4                     ; flags are set to 0, so we need to align on 4KB page boundaries
  dd 0x1BADB002               ; identify as a multiboot header (magic number)
  dd 0x00                     ; request-flags, don't care, set to 0 and hope for the best
  dd - (0x1BADB002 + 0x00)    ; checksum field (magic_nr + flags)

  global _start               ; define start label
  extern kmain                ; define our kernel main entry point as extern

_start:
  cli                         ; clear interrupt-enable-flag
  call kmain                  ; now that we are set up, call main function in kernel.c
  hlt                         ; done, request processors HALT state.
