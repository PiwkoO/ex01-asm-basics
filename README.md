# Ćwiczenie 2 — Unrolling ×4 i porównanie -O0/-O2/-O3

## Cel
- Dodać wariant funkcji z **unrolling ×4** (C lub ASM) i porównać działanie.
- Zbudować przy `-O0`, `-O2`, `-O3` i porównać rozmiar (`size`) i metrykę czasową (pętla 100×).
- Upewnić się, że warianty zwracają **ten sam wynik**.

## Krok po kroku
1. Uzupełnij `sum8_unroll4` (w C *lub* jako `asm/sum8_unroll4.S` – wtedy pamiętaj dodać do Makefile).
2. Zmieniaj `CFLAGS` w Makefile na `-O0/-O2/-O3` (lub dodaj cele `make O0/O2/O3`).
3. Uruchom: `make && ./scripts/run.sh` i zanotuj wyniki, rozmiar (`make size`).
4. W logu QEMU powinno pojawić się „OK [ex02]” jeśli wyniki się zgadzają.

## Oddanie (GitHub Classroom)
Analogicznie jak w Ćw.1 — push uruchamia CI, które sprawdza znacznik „OK”. Dodaj krótką tabelę: wersja → rozmiar `.text` oraz metrykę.

## Kryteria zaliczenia
- Poprawna implementacja `sum8_unroll4` — 50%.
- Porównanie wyników i rozmiarów + krótkie wnioski — 30%.
- Zielony status CI — 20%.
