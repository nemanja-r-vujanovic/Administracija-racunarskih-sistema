# Tema 2

## 1. Prečica za otvaranje novog prozora terminala. (dodato)
* Ctrl + Alt + T

## 2. Prelazak iz grafičkog korisničkog interfejsa u interfejs virtuelne konzole. (dodato)
* Ctrl + Alt + F4

## 3. Podešavanje većeg fonta u interfejsu virtuelne konzole. (dodato)
```bash
* sudo dpkg-reconfigure console-setup
```

## 4. Povratak u grafički korisnički interfejs iz interfejsa virtuelne konzole. (dodato)
* Ctrl + Alt + F7

## 5. Dopisuje tekst "Administracija racunarskih sistema" u fajl "fajl1.txt". (dodato)
```bash
* echo "Administracija racunarskih sistema" >> "fajl1.txt"
```

## 6. Dopisuje tekst "Linuks" u fajl "fajl2.txt". (dodato)
```bash
* echo "Linuks" >> "fajl2.txt"
```

## 7. Broji linije u fajlu "fajl1.txt". (str. 6)
```bash
* wc -l "fajl1.txt"
```

## 8. Broji linije i reči u fajlu "fajl1.txt", sa odvojenim opcijama. (str. 6)
```bash
* wc -l -w "fajl1.txt"
```

## 9. Broji linije i reči u fajlu "fajl1.txt", sa spojenim opcijama. (str. 6)
```bash
* wc -lw "fajl1.txt"
```

## 10. Broji linije u fajlovima "fajl1.txt" i "fajl2.txt". (str. 7)
```bash
* wc -l "fajl1.txt" "fajl2.txt"
```

## 11. Pokušava da izbroji linije u zaštićenom fajlu "/etc/shadow"; pristup je odbijen. (str. 9)
```bash
* wc -l "/etc/shadow"
```

## 12. Broji linije u zaštićenom fajlu "/etc/shadow" uz ovlašćenja superkorisnika. (str. 9)
```bash
* sudo wc -l "/etc/shadow"
```

## 13. Ispisuje tekst "Zdravo svete!" na ekranu. (str. 10)
```bash
* echo "Zdravo svete!"
```

## 14. Ispisuje tekst sa korisničkim imenom iz promenljive USER. (str. 10)
```bash
* echo "Korisnicko ime: $USER"
```

## 15. Pisanje dugačke komande u dva reda pomoću znaka \\. (str. 11)
```bash
* echo "Akademija strukovnih studija Sumadija \\
Odsek Arandjelovac"
```

## 16. Prikazuje stranicu priručnika za komandu wc. (str. 11)
```bash
* man wc
```

## 17. Pretražuje stranice priručnika po ključnoj reči "python" i pomoću komande less prikazuje rezultate ekran po ekran. (str. 11)
```bash
* man -k "python" | less
```

## 18. Prikazuje kratko uputstvo za komandu wc. (str. 12)
```bash
* wc --help
```
