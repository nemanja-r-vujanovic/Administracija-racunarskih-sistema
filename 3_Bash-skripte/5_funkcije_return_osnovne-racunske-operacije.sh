#!/bin/bash

# ----------------------------------------------------------------------------------------------------
# Bash                                        # Python

# ----------------------------------------------------------------------------------------------------
# Promenljive

i=0                                           # i = 0
s=0                                           # s = 0

# ----------------------------------------------------------------------------------------------------
# Funkcije

function funk1()                              # def funk1():
{
	while true; do                            #     while (true):
		if (( 13 != "$i" )); then             #         if (13 != i):
			echo "$i"                         #             print(i)
		else                                  #         else:
			break                             #             break
		fi
		(( i++ ))                             #         i += 1
	done
}

function funk2()                              # def funk2():
{
	i=1                                       #     i = 1
	while (( 10 >= "$i" )); do                #     while (10 >= i):
		(( s += "$i" ))                       #         s += i
		(( i++ ))                             #         i += 1
	done
	echo "Suma: $s"                           #     print(f"Suma: {s}")
}

function funk3()                              # def funk3():
{
	# Osnovne racunske operacije sa celim brojevima:
	zbir=$(( "$1" + "$2" ))                   # zbir = int(arg1 + arg2)
	razlika=$(( "$1" - "$2" ))                # razlika = int(arg1 - arg2)
	proizvod=$(( "$1" * "$2" ))               # proizvod = int(arg1 * arg2)
	kolicnik=$(( "$1" / "$2" ))               # kolicnik = int(arg1 / arg2)
	ostatak=$(( "$1" % "$2" ))                # ostatak = int(arg1 % arg2)

	echo "$1 + $2 = $zbir"                    # print(f"{arg1} + {arg2} = {zbir}")
	echo "$1 - $2 = $razlika"                 # print(f"{arg1} - {arg2} = {razlika}")
	echo "$1 * $2 = $proizvod"                # print(f"{arg1} * {arg2} = {proizvod}")
	echo "$1 / $2 = $kolicnik"                # print(f"{arg1} / {arg2} = {kolicnik}")
	echo "$1 % $2 = $ostatak"                 # print(f"{arg1} % {arg2} = {ostatak}")

	# Osnovne racunske operacije sa realnim brojevima:
	zbir=$(awk "BEGIN { print $1 + $2 }")     # zbir = arg1 + arg2
	razlika=$(awk "BEGIN { print $1 - $2 }")  # razlika = arg1 - arg2
	proizvod=$(awk "BEGIN { print $1 * $2 }") # proizvod = arg1 * arg2
	kolicnik=$(awk "BEGIN { print $1 / $2 }") # kolicnik = arg1 / arg2

	printf "%.2f + %.2f = %.2f\n" "$1" "$2" "$zbir"
	printf "%.2f - %.2f = %.2f\n" "$1" "$2" "$razlika"
	printf "%.2f * %.2f = %.2f\n" "$1" "$2" "$proizvod"
	printf "%.2f / %.2f = %.2f\n" "$1" "$2" "$kolicnik"
}

function ulepsaj_ispis()                      # def ulepsaj_ispis():
{
	i=0                                       #     i = 0
	string=""                                 #     string = ""
	while (( 100 > "$i" )); do                #     while (100 > i):
		string+="-"                           #         string += "-"
		(( i++ ))                             #         i += 1
	done
	echo "$string"                            #     return string
}

function ispisi()                             # def ispisi(arg1, arg2):
{
	local -n niz="$1"                         #     niz = arg1
	indeks="$2"                               #     indeks = arg2
	echo "${niz[$indeks]}"                    #     print(niz[indeks])
}

function primer1()                            # def primer1():
{
	return 0                                  #     return 0
}

function primer2()                            # def primer2():
{
	return 1                                  #     return 1
}

funk1                                         # funk1()
funk2                                         # funk2()
funk3 10 3                                    # funk3()
echo "$(ulepsaj_ispis)"                       # print(ulepsaj_ispis())

predmeti=("UPR" "OOP" "ADM")                  # predmeti = ("UPR", "OOP", "ADM")
ispisi predmeti 2                             # ispisi(predmeti, 2)

if primer1; then                              # if (primer1 == 0):
	echo "U redu."                            #     print("U redu.")
else                                          # else:
	echo "Greska!"                            #     print("Greska!")
fi

if primer2; then                              # if (primer2 == 0):
	echo "U redu."                            #     print("U redu.")
else                                          # else:
	echo "Greska!"                            #     print("Greska!")
fi

# ----------------------------------------------------------------------------------------------------
