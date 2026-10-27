# Tema 7: Rad sa direktorijumima

## 1. Postavlja "/usr/games/" za radni direktorijum. (str. 62)
```bash
cd "/usr/games/"
```

## 2. Prelazi u korisnikov direktorijum. (str. 62)
```bash
cd "$HOME"
# cd ~
# cd
```

## 3. Ispisuje apsolutnu putanju radnog direktorijuma. (str. 62)
```bash
pwd
```

## 4. Izdvaja ime fajla iz zadate putanje. (str. 62)
```bash
basename "$HOME/finansije/novac.txt"
```

## 5. Izdvaja poslednji naziv direktorijuma iz putanje. (str. 62)
```bash
basename "$HOME/finansije/"
```

## 6. Izdvaja ime fajla bez navedenog sufiksa. (str. 63)
```bash
basename "$HOME/finansije/novac.txt" ."txt"
```

## 7. Izdvaja putanju bez njene poslednje stavke. (str. 63)
```bash
dirname "$HOME/finansije/"
```

## 8. Kreira tri direktorijuma. (str. 63)
```bash
mkdir "direktorijum1/" "direktorijum2/" "direktorijum3/"
```

## 9. Kreira zadatu hijerarhiju, uključujući potrebne naddirektorijume. (str. 63)
```bash
mkdir -p "jedan/dva/tri/"
```

## 10. Kreira direktorijum. (str. 63)
```bash
mkdir "$HOME/otpad/"
```

## 11. Briše prethodno kreirani prazan direktorijum. (str. 63)
```bash
rmdir "$HOME/otpad/"
```

## 12. Briše zadati direktorijum i prazne naddirektorijume iz putanje. (str. 64)
```bash
rmdir -p "jedan/dva/tri/"
```

## 13. Rekurzivno briše direktorijum i njegov sadržaj. (str. 64)
```bash
rm -r "direktorijum/"
```
