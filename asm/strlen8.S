/* asm/strlen8.S — UZUPEŁNIJ */
.syntax unified
.thumb
.global strlen8
.type strlen8, %function
strlen8:
  /* TODO: Zaimplementuj zgodnie z AAPCS (prolog/epilog, wynik w R0) */
  movs r0, #0
  bx lr
