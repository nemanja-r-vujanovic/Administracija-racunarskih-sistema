#!/bin/bash

chmod +x *".sh"
for (( i = 2; i <= 8; i++ )); do
	echo "Primer broj $i:"
	if (( i != 8 )); then
		./"$i_*.sh"
	else
		./"$i_*.sh" "tekst1" "tekst2"
	fi
	echo
done