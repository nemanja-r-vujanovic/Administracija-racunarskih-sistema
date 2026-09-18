#!/bin/bash

# ----------------------------------------------------------------------------------------------------
# Bash                       # Python

# ----------------------------------------------------------------------------------------------------
# Jednolinijski komentar     # # Jednolinijski komentar

# ----------------------------------------------------------------------------------------------------
# echo

echo "Zdravo svete"          # print("Zdravo svete")

# ----------------------------------------------------------------------------------------------------
# printf

printf "Zdravo svete\n"      # print("Zdravo svete")

# ----------------------------------------------------------------------------------------------------
# Ostali ispisi

echo {fajl1,fajl2,fajl3}     # fajl1 fajl2 fajl3
echo {fajl1,fajl2,fajl3}.txt # fajl1.txt fajl2.txt fajl3.txt
echo {0..10}                 # od 0 do 10
echo {0..10..2}              # od 0 do 10 po 2
echo {10..0}                 # od 10 do 0
echo {10..0..2}              # od 10 do 0 po 2
echo {A..Z}                  # od A do Z
echo {A..Z..2}               # od A do Z po 2
echo {Z..A}                  # od Z do A
echo {Z..A..2}               # od Z do A po 2

# Ispis u bojama:

echo -e "\e[41m          \e[0m"
echo -e "\e[44m          \e[0m"
echo -e "\e[47m          \e[0m"

# ANSI kodna tabela

# 1. Boje teksta:
# Crna \e[30m
# Crvena \e[31m
# Zelena \e[32m
# Zuta \e[33m
# Plava \e[34m
# Roza \e[35m
# Svetloplava \e[36m
# Bela \e[37m

# 2. Boje pozadine:
# Crna \e[40m
# Crvena \e[41m
# Zelena \e[42m
# Zuta \e[43m
# Plava \e[44m
# Roza \e[45m
# Svetloplava \e[46m
# Bela \e[47m

# 3. Stilovi teksta:
# Reset: \e[0m
# Bold: \e[1m
# Italic: \e[3m
# Underline: \e[4m
# Blink: \e[5m

# Kombinovanje sa bojama odvija se razdvajanjem sa tackom zarezom.

# 4. Primer kombinovanja:
# Bold + Blink + Crvena pozadina + Beli tekst
# echo -e "\e[1;5;41;37m Upozorenje! \e[0m"

# ----------------------------------------------------------------------------------------------------
