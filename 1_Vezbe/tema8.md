# Tema 8: Pregled fajlova

## 1. Ispisuje ceo sadržaj tekstualnog fajla. (str. 67)
```bash
cat "moj_fajl.txt"
```

## 2. Prosleđuje sadržaj fajla komandi za brojanje linija, reči i bajtova. (str. 67)
```bash
cat "moj_fajl.txt" | wc
```

## 3. Spaja sadržaj dva tekstualna fajla i upisuje ga u treći. (str. 67)
```bash
cat "proba1.txt" "proba2.txt" > "proba3.txt"
```

## 4. Prikazuje fajl ekran po ekran. (str. 68)
```bash
less "moj_fajl.txt"
```

## 5. Pokreće pregled navedenog ZIP fajla. (str. 69)
```bash
less "moj_fajl.zip"
```

## 6. Ispisuje tekst fajla sa brojevima linija. (str. 70)
```bash
nl "pesma.txt"
```

## 7. Ispisuje prvih deset linija fajla. (str. 71)
```bash
head "moj_fajl.txt"
```

## 8. Prikazuje početke fajlova ekran po ekran. (str. 71)
```bash
head * | less
```

## 9. Prikazuje početak detaljnog spiska stavki sortiranih po vremenu izmene. (str. 71)
```bash
ls -l -t -a | head
```

## 10. Ispisuje poslednjih deset linija fajla. (str. 71)
```bash
tail "moj_fajl.txt"
```

## 11. Ispisuje završetak fajla sa brojevima linija. (str. 71)
```bash
nl "moj_fajl.txt" | tail
```

## 12. Prati nove linije koje se dodaju u sistemski dnevnik. (str. 72)
```bash
tail -f "/var/log/syslog"
```

## 13. Izdvaja čitljive nizove iz binarnog fajla. (str. 73)
```bash
strings "/usr/bin/who"
```

## 14. Izdvaja čitljive nizove od najmanje deset znakova koji sadrže @. (str. 73)
```bash
strings -n 10 "/usr/bin/who" | grep "@"
```
