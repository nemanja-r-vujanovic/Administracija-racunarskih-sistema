#!/bin/bash

# ----------------------------------------------------------------------------------------------------
# Bash                        # Python

# ----------------------------------------------------------------------------------------------------
# Bash opcije

# Otkriva skrivene greske:
# set -o pipefail

# Otkriva nedefinisane promenljive:
# set -o nounset

# Sprecava prepisivanje postojecih fajlova:
# echo "primer" > "fajl.txt"
# set -o noclobber

# Prekida lanac izvrsavanja pri gresci:
# set -o errexit

# ----------------------------------------------------------------------------------------------------
# Provera ukljucenih Bash opcija

if [[ -o pipefail ]]; then
	echo "pipefail je ukljucen."
fi

if [[ -o nounset ]]; then
	echo "nounset je ukljucen."
fi

if [[ -o noclobber ]]; then
	echo "noclobber je ukljucen."
fi

if [[ -o errexit ]]; then
	echo "errexit je ukljucen."
fi

# ----------------------------------------------------------------------------------------------------
# Preusmeravanje

echo "Zdravo!" > "fajl.txt"   # stdout (1) u fajl.txt, write (overwrite)
echo "Zdravo!" >> "fajl.txt"  # stdout (1) u fajl.txt, append
ech "Zdravo!" 2> "fajl.txt"   # stderr (2) u fajl.txt, write (overwrite)
ech "Zdravo!" 2>> "fajl.txt"  # stderr (2) u fajl.txt, append
ech "Zdravo!" 2>&1            # stderr (2) na stdout (1)
ech "Zdravo!" 2>/dev/null     # stderr (2) odbaci u /dev/null ("crnu rupu")
echo "Zdravo!" &>/dev/null    # stdout (1) i stderr (2) odbaci u /dev/null ("crnu rupu")
echo < "fajl.txt"             # stdin (0) za echo

# ----------------------------------------------------------------------------------------------------
# Nasumican broj

broj=$(( "SRANDOM" % 5 ))     # broj = random.randrange(0, 5) # 0 <= X < 5
echo "$broj"                  # print(broj)

# ----------------------------------------------------------------------------------------------------
# Regeks

tekst="abc123"

if [[ "$tekst" =~ ([a-z]+)([0-9]+) ]]; then
	echo "${BASH_REMATCH[0]}" # abc123
	echo "${BASH_REMATCH[1]}" # abc
	echo "${BASH_REMATCH[2]}" # 123
fi

# ----------------------------------------------------------------------------------------------------
# Citanje linija

i=1
while IFS= read -r linija; do
	echo "$i: $linija"
	(( i++ ))
done < "fajl.txt"

# ----------------------------------------------------------------------------------------------------
