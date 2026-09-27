# Tema 4

## 1. Postavlja "/usr/share/" za radni direktorijum, korišćenjem apsolutne putanje. (str. 19)
```bash
cd "/usr/share/"
```

## 2. Prelazi u poddirektorijum "applications/" trenutnog radnog direktorijuma. (str. 19)
```bash
cd "applications/"
```

## 3. Prelazi u direktorijum "../fonts/" koji se nalazi u naddirektorijumu trenutnog radnog direktorijuma. (str. 19)
```bash
cd "../fonts/"
```

## 4. Postavlja korisnikov home direktorijum za radni direktorijum. (str. 20)
```bash
cd
```

## 5. Ispisuje putanju korisnikovog home direktorijuma, sadržanu u promenljivoj HOME. (str. 20)
```bash
echo "$HOME"
```

## 6. Ispisuje putanju korisnikovog home direktorijuma korišćenjem oznake ~. (str. 20)
```bash
echo ~
```

## 7. Prikazuje podatke o procesoru. (str. 25)
```bash
cat "/proc/cpuinfo"
```

## 8. Prikazuje podatke o sistemu. (str. 25)
```bash
uname -a
```

## 9. Prikazuje koliko dugo sistem radi od poslednjeg pokretanja. (str. 25)
```bash
uptime
```