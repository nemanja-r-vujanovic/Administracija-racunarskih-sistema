# Tema 12: Rad sa tekstom u fajlovima

## 1. Prikazuje linije tekstualnog fajla koje sadrže zadati niz znakova. (str. 102)
```bash
grep "cokolada" "nasumicne_linije.txt"
```

## 2. Traži niz od četiri znaka: "k", dva proizvoljna znaka i "a". (str. 104)
```bash
grep 'k..a' "fajl.txt"
```

## 3. Prikazuje linije koje sadrže niz "kola" ili "kosa". (str. 105)
```bash
grep 'ko[ls]a' "fajl.txt"
```

## 4. Ispisuje sadržaj CSV fajla. (str. 106)
```bash
cat "podaci.csv"
```

## 5. Izdvaja peto polje svake linije, koristeći zarez kao separator. (str. 106)
```bash
cut -f5 -d, "podaci.csv"
```

## 6. Izdvaja 19. znak iz svake linije fajla. (str. 107)
```bash
cut -c19 "moj_fajl.txt"
```

## 7. Izdvaja korisnička imena iz prve kolone fajla čija su polja odvojena dvotačkom. (str. 108)
```bash
cut -d: -f1 "/etc/passwd"
```

## 8. Izdvaja drugu reč iz rečenice čija su polja odvojena razmakom. (str. 108)
```bash
echo "Ovo je primer kratke recenice" | cut -d ' ' -f 2
```

## 9. Ispisuje fajl sa slovima. (str. 108)
```bash
cat "slova.txt"
```

## 10. Ispisuje fajl sa brojevima. (str. 108)
```bash
cat "brojevi.txt"
```

## 11. Kombinuje brojeve i slova u dve kolone. (str. 109)
```bash
paste "brojevi.txt" "slova.txt"
```

## 12. Spaja linije svakog od dva fajla u zaseban red. (str. 109)
```bash
paste -s "slova.txt" "brojevi.txt"
```

## 13. Menja slova "e", "l" i "a" redom ciframa "1", "2" i "5". (str. 110)
```bash
echo 'lepeza' | tr 'ela' '125'
```

## 14. Menja tri slova koristeći dve cifre; poslednju cifru koristi za poslednja dva slova iz skupa. (str. 110)
```bash
echo 'lepeza' | tr 'ela' '12'
```

## 15. Menja slova "e" i "l" ciframa "1" i "2", a višak u drugom skupu zanemaruje. (str. 110)
```bash
echo 'lepeza' | tr 'el' '125'
```

## 16. Pretvara mala slova iz opsega "a-z" u velika. (str. 110)
```bash
echo 'lepeza' | tr 'a-z' 'A-Z'
```

## 17. Uklanja samoglasnike iz zadatog teksta. (str. 110)
```bash
echo 'lepeza' | tr -d 'aeiouAEIOU'
```

## 18. Uklanja znakove novog reda iz prvog fajla i upisuje rezultat u drugi. (str. 111)
```bash
tr -d '\n' < "fajl1.txt" > "fajl2.txt"
```

## 19. Svaki niz uzastopnih istih samoglasnika svodi na jedan znak. (str. 111)
```bash
tr -s "aeiouAEIOU"
```

## 20. Prikazuje nesortiran spisak voća. (str. 112)
```bash
cat "voce.txt"
```

## 21. Sortira linije spiska voća i prikazuje rezultat. (str. 112)
```bash
sort "voce.txt"
```

## 22. Ispisuje nesortirane podatke o osobama. (str. 113)
```bash
cat "osobe.csv"
```

## 23. Sortira podatke po trećem polju, uz zarez kao separator. (str. 113)
```bash
sort -k3 -t, "osobe.csv"
```

## 24. Ispisuje fajl sa ponovljenim slovima. (str. 114)
```bash
cat "slova2.txt"
```

## 25. Uzastopne iste linije prikazuje samo jednom. (str. 114)
```bash
uniq "slova2.txt"
```

## 26. Najpre sortira linije, pa uklanja ponavljanja u izlazu. (str. 114)
```bash
sort "slova2.txt" | uniq
```

## 27. Sortira linije i ispisuje koliko se puta svaka pojavljuje. (str. 115)
```bash
sort "slova2.txt" | uniq -c
```

## 28. Čuva izvorni spisak sesija u fajlu i prikazuje sortirani spisak. (str. 116)
```bash
who | tee "nesortirane_sesije.txt" | sort
```

## 29. Prikazuje sačuvani nesortirani spisak sesija. (str. 116)
```bash
cat "nesortirane_sesije.txt"
```