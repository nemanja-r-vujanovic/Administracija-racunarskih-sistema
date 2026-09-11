#!/bin/bash

# --------------------------------------------------
# Bash                            # Python

# --------------------------------------------------
# Promenljive

x=1                               # x = True
i=0                               # i = 0

# --------------------------------------------------
# Funkcije

function funk1()                  # def funk1():
{
	while (( "$x" )); do          # while (x):
		if (( 13 != "$i" )); then #     if (13 != i):
			echo "$i"             #         print(f"{i}")
		else                      #     else:
			break                 #         break
		fi
		((i++))                   #     i += 1
	done
}

function funk2()                  # def funk2():
{
	zbir=$(( "$1" + "$2" ))       # zbir = arg1 + arg2
	echo "Zbir: $1 + $2 = $zbir"  # print(f"Zbir: {arg1} + {arg2} = {zbir}")
}

funk1                             # funk1()
funk2 10 20                       # funk2()

# --------------------------------------------------