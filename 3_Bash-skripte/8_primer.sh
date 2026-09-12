#!/bin/bash

# --------------------------------------------------
# Sel promenljive

sleep 3 &
echo "Naziv skripte: $0"
echo "Svi argumenti: $@"
echo "Broj argumenata: $#"
echo "Prvi argument: $1"
echo "Drugi argument: $2"
echo "..."
echo "PID trenutnog sela: $$"
echo "PID poslednjeg procesa: $!"
echo "Izlazni status poslednje komande: $?"

# --------------------------------------------------
# Operatori za proveru fajlova:
# -e "$fajl"            # da li postoji fajl/direktorijum
# -s "$fajl"            # da li postoji fajl/direktorijum i ima veličinu > 0 bajtova
# -f "$fajl"            # da li je fajl
# -d "$fajl"            # da li je direktorijum
# -L "$fajl"            # da li je simbolički link
# -b "$fajl"            # da li je block device
# -c "$fajl"            # da li je character device
# -p "$fajl"            # da li je FIFO
# -S "$fajl"            # da li je socket

# Operatori za poređenje fajlova:
# "$fajl1" -nt "$fajl2" # da li je fajl1 noviji od fajla2
# "$fajl1" -ot "$fajl2" # da li je fajl1 stariji od fajla2
# "$fajl1" -ef "$fajl2" # da li fajl1 i fajl2 predstavljaju isti fajl

# Operatori dozvola i posebnih bitova:
# -r "$fajl"            # da li je čitljiv
# -w "$fajl"            # da li je upisiv
# -x "$fajl"            # da li je izvršiv
# -u "$fajl"            # da li ima setuid bit
# -g "$fajl"            # da li ima setgid bit
# -k "$fajl"            # da li ima sticky bit

# Da li postoji komanda:
naziv_komande="git"

if command -v "$naziv_komande" >/dev/null 2>&1; then
	echo "$naziv_komande postoji."
else
	echo "$naziv_komande ne postoji!"
fi

# --------------------------------------------------
