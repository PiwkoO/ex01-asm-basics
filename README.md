# Podstawy ASM (ARM/Thumb) + AAPCS + integracja z C

## Cel
- Zaimplementuj w assemblerze funkcje:
  - `size_t strlen8(const char* s);`
  - `uint32_t sum8(const uint8_t* p, size_t n);`
- Połącz z C i uruchom na QEMU (`mps2-an385`, semihosting).
- Wygeneruj krótki log z GDB (`info reg`, `disas`).
- **Seed S** = `(nr_albumu % 1000)` wpływa na rozmiary danych.

## Krok po kroku
1. Zainstaluj narzędzia (zob. instrukcje dla Windows/macOS).
2. Uzupełnij pliki: `asm/strlen8.S` i `asm/sum8.S` zgodnie z **AAPCS** (argumenty R0–R3, wynik R0, ramka stosu).
3. Zbuduj i uruchom:
   ```bash
   make && ./scripts/run.sh
   # Windows: .\scripts\run.ps1
   ```
4. Sprawdź, czy program wypisał „OK [ex01]”.
5. (Opcjonalnie) Uruchom debug:
   ```bash
   qemu-system-arm -M mps2-an385 -nographic -S -gdb tcp::1234 \
     -semihosting-config enable=on,target=native \
     -kernel build/firmware.elf
   arm-none-eabi-gdb build/firmware.elf
   (gdb) target remote :1234
   (gdb) disas strlen8
   (gdb) info reg
   ```

## Oddanie (GitHub Classroom)
1. Odbierz zadanie z linku Classroom → powstanie Twoje repo `ex01-asm-basics-<user>`.
2. Sklonuj repo, pracuj w gałęzi `main`, rób czytelne commity.
3. `git push` — uruchomi się CI (GitHub Actions). Status **zielony** = zaliczony test.
4. Wydruk z `printf` i „OK [ex01]” w logu QEMU jest wymagany.

## Kryteria zaliczenia
- Poprawny ASM zgodny z AAPCS (prolog/epilog, rejestry) — 50%.
- Działający build i uruchomienie na QEMU — 30%.
- Log GDB + krótki raport — 20%.
