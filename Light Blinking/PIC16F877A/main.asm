;====================================================================
; Main.asm file generated by New Project wizard
;
; Created:   Fri Jun 24 2022
; Processor: PIC16F877A
; Compiler:  MPASM (Proteus)
;====================================================================

;====================================================================
; DEFINITIONS
;====================================================================

#include p16f877a.inc                ; Include register definition file

;====================================================================
; VARIABLES
;====================================================================

;====================================================================
; RESET and INTERRUPT VECTORS
;====================================================================

      ; Reset Vector
RST   code  0x0 
      goto  Start

;====================================================================
; CODE SEGMENT
;====================================================================

PGM   code
Start
      ; Write your code here
Loop  
      goto  Loop

;====================================================================
      END
