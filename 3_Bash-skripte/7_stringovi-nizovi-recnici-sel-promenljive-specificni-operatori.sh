#!/bin/bash

# ----------------------------------------------------------------------------------------------------
# Bash                                          # Python

# ----------------------------------------------------------------------------------------------------
# Stringovi

tekst1="jabuka"                                 # tekst1 = "jabuka"
tekst2="banana"                                 # tekst2 = "banana"

if [[ "$tekst1" == "$tekst2" ]]; then           # if (tekst1 == tekst2):
	echo "$tekst1 == $tekst2"                   #     print(f"{tekst1} == {tekst2}")
elif [[ "$tekst1" != "$tekst2" ]]; then         # elif (tekst1 != tekst2):
	echo "$tekst1 != $tekst2"                   #     print(f"{tekst1} != {tekst2}")
fi

if [[ "$tekst1" > "$tekst2" ]]; then            # if (tekst1 > tekst2):
	echo "$tekst1 > $tekst2"                    #     print(f"{tekst1} > {tekst2}")
elif [[ "$tekst1" < "$tekst2" ]]; then          # if (tekst1 < tekst2):
	echo "$tekst1 < $tekst2"                    #     print(f"{tekst1} < {tekst2}")
fi

tekst="Primer"                                  # tekst = "Primer"
if (( "${#tekst}" < 1 )); then                  # if (len(tekst) < 1):
	echo "String je prazan!"                    #     print("String je prazan!")
else                                            # else:
	echo "String nije prazan."                  #     print("String nije prazan")
fi

# ----------------------------------------------------------------------------------------------------
# Niz

voce_niz=("jabuka" "banana" "mandarina")        # voce_niz = ["jabuka", "banana", "mandarina"]
# voce_niz[2]="kivi"                            # # voce_niz[2] = "kivi"
# echo "${voce_niz[2]}"                         # # print(voce_niz[2])

for (( i = 0; i < "${#voce_niz[@]}"; i++ )); do # for i in range(len(voce_niz)):
	echo "${voce_niz[$i]}"                      #     print(voce_niz[i])
done

# ----------------------------------------------------------------------------------------------------
# Recnik

declare -A boje                                 # boje = {}
boje[jabuka]="crvena"                           # boje["jabuka"] = "crvena"
boje[banana]="zuta"                             # boje["banana"] = "zuta"
boje[kivi]="zelena"                             # boje["kivi"] = "zelena"
unset boje[kivi]                                # del boje["kivi"]

echo "${boje[jabuka]}"                          # print(boje["jabuka"])
echo "${boje[banana]}"                          # print(boje["banana"])
echo "${#boje[@]}"                              # print(len(boje))
echo "${boje[@]}"                               # print(boje.values())
echo "${!boje[@]}"                              # print(boje.keys())

for vrednost in "${boje[@]}"; do                # for vrednost in boje.values():
	echo "$vrednost"                            #     print(vrednost)
done

for kljuc in "${!boje[@]}"; do                  # for vrednost in boje.keys():
	echo "$kljuc"                               #     print(kljuc)
done

echo                                            # print()

# ----------------------------------------------------------------------------------------------------
# Sel promenljive

sleep 3 &
echo "Naziv skripte: $0"
echo "Svi argumenti: $@"
echo "Broj argumenata: $#"
echo "Prvi argument: $1"
echo "Drugi argument: $2"
echo "..."
echo "Deveti argument: $9"
echo "Deseti argument: ${10}"
echo "Jedanaesti argument: ${11}"
echo "..."
echo "PID trenutnog sela: $$"
echo "PID poslednjeg procesa: $!"
echo "Izlazni status poslednje komande: $?"

# ----------------------------------------------------------------------------------------------------
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
	printf "\n$naziv_komande postoji.\n"
else
	printf "\n$naziv_komande ne postoji!\n"
fi

# ----------------------------------------------------------------------------------------------------
