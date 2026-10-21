# Tema 2: O Linuxu

## 1. Prelazak iz grafičkog korisničkog interfejsa u interfejs virtuelne konzole. (dodato)
* Ctrl + Alt + F4

## 2. Povratak u grafički korisnički interfejs iz interfejsa virtuelne konzole. (dodato)
* Ctrl + Alt + F7

## 3. Prečica za otvaranje novog prozora terminala. (dodato)
* Ctrl + Alt + T

## 4. Dopisuje tekst "Administracija racunarskih sistema" u fajl. (dodato)
```bash
echo "Administracija racunarskih sistema" >> "fajl1.txt"
```

## 5. Dopisuje tekst "Linuks" u fajl. (dodato)
```bash
echo "Linuks" >> "fajl2.txt"
```

## 6. Broji linije u fajlu. (str. 6)
```bash
wc -l "fajl1.txt"
```

## 7. Broji linije i reči pomoću odvojenih opcija. (str. 6)
```bash
wc -l -w "fajl1.txt"
```

## 8. Broji linije i reči pomoću spojenih opcija. (str. 6)
```bash
wc -lw "fajl1.txt"
```

## 9. Broji linije u dva tekstualna fajla. (str. 7)
```bash
wc -l "fajl1.txt" "fajl2.txt"
```

## 10. Pokušava da prebroji linije zaštićenog fajla bez potrebnih ovlašćenja. (str. 9)
```bash
wc -l "/etc/shadow"
```

## 11. Broji linije zaštićenog fajla sa superkorisničkim ovlašćenjima. (str. 9)
```bash
sudo wc -l "/etc/shadow"
```

## 12. Ispisuje zadati tekst. (str. 10)
```bash
echo "Zdravo svete!"
```

## 13. Ispisuje tekst i vrednost promenljive USER. (str. 10)
```bash
echo "Korisnicko ime: $USER"
```

## 14. Ispisuje tekst komandom nastavljenom u sledećem redu. (str. 11)
```bash
echo "Akademija strukovnih studija Sumadija \
Odsek Arandjelovac"
```

## 15. Otvara uputstvo za komandu wc. (str. 11)
```bash
man "wc"
```

## 16. Pretražuje opise uputstava po ključnoj reči i prikazuje rezultate ekran po ekran. (str. 11)
```bash
man -k "python" | less
```

## 17. Prikazuje kratko uputstvo za komandu. (str. 12)
```bash
wc --help
```