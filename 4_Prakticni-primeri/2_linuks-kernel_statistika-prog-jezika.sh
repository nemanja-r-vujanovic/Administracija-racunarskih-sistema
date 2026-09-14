#!/bin/bash

function preuzmi_linuks_kernel()
{
	arhiva="linuks-kernel_prva-verzija.tar.gz"
	adresa="https://www.kernel.org/pub/linux/kernel/Historic/linux-0.01.tar.gz"
	curl -L -o "$arhiva" "$adresa"
	echo -e "Preuzeto: '$arhiva'\n"
	prebroj_prog_jezike "$arhiva"

	arhiva="linuks-kernel_poslednja-verzija.zip"
	adresa="https://github.com/torvalds/linux/archive/refs/heads/master.zip"
	curl -L -o "$arhiva" "$adresa"
	echo -e "Preuzeto: '$arhiva'\n"
	prebroj_prog_jezike "$arhiva"
}

function prebroj_prog_jezike()
{
	argument1="$1"

	if [[ "linuks-kernel_prva-verzija.tar.gz" == "$argument1" ]]; then
		prog_jezici="linuks-kernel_prva-verzija_prog-jezici.txt"
		tar -tzf "$argument1" | grep -v '/$' | grep -E '\.[^.\/]+$' | sed 's|.*/||' | sed -E 's|^.*(\.[^.]+)$|\1|' | sort | uniq -c | awk '{print $2 " = " $1}' > "$prog_jezici"

	elif [[ "linuks-kernel_poslednja-verzija.zip" == "$argument1" ]]; then
		prog_jezici="linuks-kernel_poslednja-verzija_prog-jezici.txt"
		unzip -Z1 "$argument1" | grep -v '/$' | grep -E '\.[^.\/]+$' | sed 's|.*/||' | sed -E 's|^.*(\.[^.]+)$|\1|' | sort | uniq -c | awk '{print $2 " = " $1}' > "$prog_jezici"
	fi

	izdvoj_bitne_prog_jezike "$argument1" "$prog_jezici"
}

function izdvoj_bitne_prog_jezike()
{
	argument1="$1"
	argument2="$2"

	if [[ "linuks-kernel_prva-verzija.tar.gz" == "$argument1" ]]; then
		krajnji_fajl="3_linuks-kernel_prva-verzija_statistika.txt"

	elif [[ "linuks-kernel_poslednja-verzija.zip" == "$argument1" ]]; then
		krajnji_fajl="3_linuks-kernel_poslednja-verzija_statistika.txt"
	fi

	c_jezik=$(grep -oP '(?<=^\.c = )\d+' "$argument2" || echo "0")
	cpp_jezik=$(grep -oP '(?<=^\.cpp = )\d+' "$argument2" || echo "0")
	cs_jezik=$(grep -oP '(?<=^\.cs = )\d+' "$argument2" || echo "0")
	java_jezik=$(grep -oP '(?<=^\.java = )\d+' "$argument2" || echo "0")
	py_jezik=$(grep -oP '(?<=^\.py = )\d+' "$argument2" || echo "0")
	rs_jezik=$(grep -oP '(?<=^\.rs = )\d+' "$argument2" || echo "0")
	s_jezik=$(grep -oP '(?<=^\.s = )\d+' "$argument2" || echo "0")
	S_jezik=$(grep -oP '(?<=^\.S = )\d+' "$argument2" || echo "0")
	sh_jezik=$(grep -oP '(?<=^\.sh = )\d+' "$argument2" || echo "0")

	asm_zbir=$(( "$s_jezik" + "$S_jezik" ))

	echo "C: '$c_jezik' fajlova" >> "$krajnji_fajl"
	echo "C++: '$cpp_jezik' fajlova" >> "$krajnji_fajl"
	echo "C#: '$cs_jezik' fajlova" >> "$krajnji_fajl"
	echo "Java: '$java_jezik' fajlova" >> "$krajnji_fajl"
	echo "Pajton: '$py_jezik' fajlova" >> "$krajnji_fajl"
	echo "Rust: '$rs_jezik' fajlova" >> "$krajnji_fajl"
	echo "Asembler [s ($s_jezik) + S ($S_jezik)]: '$asm_zbir' fajlova" >> "$krajnji_fajl"
	echo "Bash: '$sh_jezik' fajlova" >> "$krajnji_fajl"

	obrisi_fajlove "$argument1" "$argument2"
}

function obrisi_fajlove()
{
	argument1="$1"
	argument2="$2"

	gio trash "$argument1" "$argument2"
}

preuzmi_linuks_kernel
