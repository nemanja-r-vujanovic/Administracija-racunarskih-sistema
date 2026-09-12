#!/bin/bash

# ----------------------------------------------------------------------------------------------------
# Bash                            # Python

# ----------------------------------------------------------------------------------------------------
# Promenljive

x=1                               # x = True
i=0                               # i = 0

# ----------------------------------------------------------------------------------------------------
# Funkcije

function funk1()                  # def funk1():
{
	while (( "$x" )); do          # while (x):
		if (( 13 != "$i" )); then #     if (13 != i):
			echo "$i"             #         print(f"{i}")
		else                      #     else:
			break                 #         break
		fi
		(( i++ ))                 #     i += 1
	done
}

function funk2()                  # def funk2():
{
	# Celi brojevi:
	zbir=$(( "$1" + "$2" ))       # zbir = arg1 + arg2
	razlika=$(( "$1" - "$2" ))    # razlika = arg1 - arg2
	proizvod=$(( "$1" * "$2" ))   # proizvod = arg1 * arg2
	kolicnik=$(( "$1" / "$2" ))   # kolicnik = arg1 / arg2
	ostatak=$(( "$1" % "$2" ))    # ostatak = arg1 % arg2

	echo "$1 + $2 = $zbir"        # print(f"{arg1} + {arg2} = {zbir}")
	echo "$1 - $2 = $razlika"     # print(f"{arg1} - {arg2} = {razlika}")
	echo "$1 * $2 = $proizvod"    # print(f"{arg1} * {arg2} = {proizvod}")
	echo "$1 / $2 = $kolicnik"    # print(f"{arg1} / {arg2} = {kolicnik}")
	echo "$1 % $2 = $ostatak"     # print(f"{arg1} % {arg2} = {ostatak}")

	# Realni brojevi:
	zbir=$(awk "BEGIN { print $1 + $2 }")
	razlika=$(awk "BEGIN { print $1 - $2 }")
	proizvod=$(awk "BEGIN { print $1 * $2 }")
	kolicnik=$(awk "BEGIN { print $1 / $2 }")

	printf "%.2f + %.2f = %.2f\n" "$1" "$2" "$zbir"
	printf "%.2f + %.2f = %.2f\n" "$1" "$2" "$razlika"
	printf "%.2f + %.2f = %.2f\n" "$1" "$2" "$proizvod"
	printf "%.2f + %.2f = %.2f\n" "$1" "$2" "$kolicnik"
}

funk1                             # funk1()
funk2 10 3                        # funk2()

# ----------------------------------------------------------------------------------------------------
