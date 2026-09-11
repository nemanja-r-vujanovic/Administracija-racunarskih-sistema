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