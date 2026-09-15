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
# Transformacije

str="BASH PROGRAMIRANJE"                        # str = "BASH PROGRAMIRANJE"
echo "${str,}"                                  # bASH PROGRAMIRANJE
echo "${str,,}"                                 # bash programiranje

str="bash programiranje"                        # str = "bash programiranje"
echo "${str^}"                                  # Bash programiranje
echo "${str^^}"                                 # BASH PROGRAMIRANJE

niz=("bash" "Programiranje")                    # niz = ("bash", "Programiranje")
echo "${niz[@],}"                               # bash programiranje
echo "${niz[@]^}"                               # Bash Programiranje

# ----------------------------------------------------------------------------------------------------
# Isecanje stringa

ime="Nemanja"
echo "${ime}"                                   # Nemanja
echo "${ime:0:2}"                               # Ne
echo "${ime::2}"                                # Ne
echo "${ime::-1}"                               # Nemanj
echo "${ime:(-1)}"                              # a
echo "${ime:(-2)}"                              # ja
echo "${ime:(-2):2}"                            # ja

# ----------------------------------------------------------------------------------------------------
# Niz

voce_niz=("jabuka" "banana" "mandarina")        # voce_niz = ["jabuka", "banana", "mandarina"]
# voce_niz[2]="kivi"                            # # voce_niz[2] = "kivi"
# echo "${voce_niz[2]}"                         # # print(voce_niz[2])

for (( i = 0; i < "${#voce_niz[@]}"; i++ )); do # for i in range(len(voce_niz)):
	echo "${voce_niz[$i]}"                      #     print(voce_niz[i])
done

# Jos primera:

niz1=(test{1..2})
echo "${niz1[@]}"                               # test1 test2

niz2=(test{A..B})
echo "${niz2[@]}"                               # testA testB

niz3=("${niz1[@]}" "${niz2[@]}")
echo "${niz3[@]}"                               # test1 test2 testA testB

niz4=("${niz1[@]}" "${niz2[@]}")
niz4+=("${niz4[@]}")                            # dupliranje sadrzaja
echo "${niz4[@]}"                               # test1 test2 testA testB test1 test2 testA testB

declare -a brojevi=(1 2 3)
brojevi+=(4 5)
echo "${brojevi[@]}"                            # 1 2 3 4 5

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

for kljuc in "${!boje[@]}"; do                  # for kljuc in boje.keys():
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
# -e "$fajl"                                    # da li postoji fajl/direktorijum
# -s "$fajl"                                    # da li postoji fajl/direktorijum i ima velicinu > 0 bajtova
# -f "$fajl"                                    # da li je fajl
# -d "$fajl"                                    # da li je direktorijum
# -L "$fajl"                                    # da li je simbolicki link
# -b "$fajl"                                    # da li je block device
# -c "$fajl"                                    # da li je character device
# -p "$fajl"                                    # da li je FIFO
# -S "$fajl"                                    # da li je socket

# Operatori za poredjenje fajlova:
# "$fajl1" -nt "$fajl2"                         # da li je fajl1 noviji od fajla2
# "$fajl1" -ot "$fajl2"                         # da li je fajl1 stariji od fajla2
# "$fajl1" -ef "$fajl2"                         # da li fajl1 i fajl2 predstavljaju isti fajl

# Operatori dozvola i posebnih bitova:
# -r "$fajl"                                    # da li je citljiv
# -w "$fajl"                                    # da li je upisiv
# -x "$fajl"                                    # da li je izvrsiv
# -u "$fajl"                                    # da li ima setuid bit
# -g "$fajl"                                    # da li ima setgid bit
# -k "$fajl"                                    # da li ima sticky bit

# Da li postoji komanda:
naziv_komande="git"

if command -v "$naziv_komande" >/dev/null 2>&1; then
	printf "\n$naziv_komande postoji.\n"
else
	printf "\n$naziv_komande ne postoji!\n"
fi

# ----------------------------------------------------------------------------------------------------
