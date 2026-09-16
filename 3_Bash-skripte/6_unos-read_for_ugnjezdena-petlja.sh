#!/bin/bash

# ----------------------------------------------------------------------------------------------------
# Bash                              # Python

# ----------------------------------------------------------------------------------------------------
# Unosi

echo -n "Unesite A: "               # print("Unesite A: ", end="")
read a                              # a = input()
echo -n "Unesite B: "               # print("Unesite B: ", end="")
read b                              # b = input()

echo -n -e "Unos 1 karaktera: "     # print("Unos 1 karaktera: ", end="")
read -n 1 unos                      # samo jedan karakter

echo -n -e "\nUnos 2 karaktera: "   # print("\nUnos 2 karaktera: ", end="")
read -n 2 unos                      # samo dva karaktera

# ----------------------------------------------------------------------------------------------------
# for

for (( i = 0; i < 10; i++ )); do    # for i in range(0, 10, 1):
	echo "$i"                       #     print(i)
done

# ----------------------------------------------------------------------------------------------------
# Ugnjezdena petlja

for (( i = 0; i < 5; i++ )); do     # for i in range(0, 5, 1):
	for (( j = 0; j < 5; j++ )); do #     for j in range(0, 5, 1):
		printf "0 "                 #         print("0 ", end="")
	done
		printf "\n"                 #     print()
done

# ----------------------------------------------------------------------------------------------------
