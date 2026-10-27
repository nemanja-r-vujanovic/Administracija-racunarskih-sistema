# Tema 5: Šel

## 1. Prikazuje prijavljene korisničke sesije. (str. 27)
```bash
who
```

## 2. Broji sesije prikazane komandom who. (str. 27)
```bash
who | wc -l
```

## 3. Ispisuje vrednost promenljive SHELL. (str. 28)
```bash
echo "$SHELL"
```

## 4. Pokreće šel bash. (str. 28)
```bash
bash
```

## 5. Završava pokrenuti šel i vraća se u prethodni. (str. 28)
```bash
exit
```

## 6. Prikazuje kako šel pronalazi komandu. (str. 29)
```bash
type "who"
```

## 7. Prikazuje stavke čija imena počinju slovom b. (str. 30)
```bash
ls "/b"*
```

## 8. Ispisuje tri varijante teksta pomoću vitičastih zagrada. (str. 32)
```bash
echo "send"{X,YY,ZZZ}"vic"
```

## 9. Dodeljuje broj 3 korisničkoj promenljivoj. (str. 32)
```bash
MOJA_PROMENLJIVA=3
```

## 10. Ispisuje vrednost korisničke promenljive. (str. 32)
```bash
echo "$MOJA_PROMENLJIVA"
```

## 11. Ispisuje promenljive okruženja. (str. 34)
```bash
printenv
```

## 12. Ispisuje direktorijume u putanji pretrage programa. (str. 34)
```bash
echo "$PATH"
```

## 13. Definiše alias ll za prikaz fajlova sa zadatim opcijama. (str. 35)
```bash
alias ll='ls -l -G'
```

## 14. Prikazuje definisane aliase. (str. 35)
```bash
alias
```

## 15. Sortira linije pročitane iz ulaznog fajla. (str. 36)
```bash
sort < "spisak_fajlova.txt"
```

## 16. Upisuje spisak stavki radnog direktorijuma u fajl. (str. 36)
```bash
ls > "spisak_fajlova.txt"
```

## 17. Sortira ulazni fajl i upisuje rezultat u drugi fajl. (str. 36)
```bash
sort < "spisak_fajlova.txt" > "sortiran_spisak_fajlova.txt"
```

## 18. Sortira prikaz korisničkih sesija. (str. 37)
```bash
who | sort
```

## 19. Sortira sesije, izdvaja korisnička imena i prikazuje ih ekran po ekran. (str. 37)
```bash
who | sort | awk '{print $1}' | less
```

## 20. Ispisuje trenutnu godinu. (str. 38)
```bash
date "+%Y"
```

## 21. Umeće rezultat komande za godinu u tekst. (str. 38)
```bash
echo "Ova godina je $(date +%Y)"
```

## 22. Umeće godinu u tekst pomoću kosih polunavodnika. (str. 38)
```bash
echo "Ova godina je `date +%Y`"
```

## 23. Čuva broj korisničkih sesija u promenljivoj. (str. 39)
```bash
BROJ_KORISNIKA="$(who | wc -l)"
```

## 24. Ispisuje tekst sa sačuvanim brojem sesija. (str. 39)
```bash
echo "Trenutno ima $BROJ_KORISNIKA korisnika"
```

## 25. Prikazuje istoriju komandi. (str. 43)
```bash
history
```

## 26. Ponovo izvršava prethodnu komandu. (str. 43)
```bash
!!
```

## 27. Briše stavke koristeći poslednji argument prethodne komande. (str. 43)
```bash
rm !$
```

## 28. Prikazuje tri navedena fajla. (str. 43)
```bash
ls "moj_fajl.txt" "prazan_fajl.txt" "ogroman_fajl.txt"
```

## 29. Broji linije, reči i bajtove koristeći sve argumente prethodne komande. (str. 43)
```bash
wc !*
```

## 30. Postavlja /usr/bin za radni direktorijum. (str. 44)
```bash
cd "/usr/bin/"
```

## 31. Sabira dva cela broja. (str. 44)
```bash
expr 7 \+ 3
```

## 32. Izračunava izraz sa eskejpovanim zagradama i znakom množenja. (str. 44)
```bash
expr \( 7 \+ 3 \) \* 10
```

## 33. Proverava da li je 15 veće od 16. (str. 45)
```bash
expr 15 \> 16
```

## 34. Preuzima PDF sa zadate adrese i čuva ga u lokalnom fajlu. (str. 47)
```bash
curl "https://linuxpocketguide.com/sample.pdf" -o "$HOME/primer.pdf"
```

## 35. Pokreće ispis velikog fajla koji se u primeru prekida pritiskom na Ctrl+C. (str. 48)
```bash
cat "ogroman_fajl.txt"
```

## 36. Pokreće čekanje od 100 sekundi u pozadini. (str. 50)
```bash
sleep 100 &
```

## 37. Pokreće prvi pozadinski posao iz novog primera. (str. 50)
```bash
sleep 100 &
```

## 38. Pokreće drugi pozadinski posao, koji čeka 200 sekundi. (str. 50)
```bash
sleep 200 &
```

## 39. Prikazuje pokrenute poslove šela. (str. 50)
```bash
jobs
```

## 40. Pokreće posao u pozadini pre njegovog prebacivanja u prvi plan. (str. 51)
```bash
sleep 100 &
```

## 41. Prebacuje posao broj 1 u prvi plan. (str. 51)
```bash
fg %1
```

## 42. Pokreće čekanje u prvom planu, koje se u primeru zaustavlja pomoću Ctrl+Z. (str. 52)
```bash
sleep 100
```

## 43. Nastavlja zaustavljeni posao broj 1 u pozadini. (str. 52)
```bash
bg %1
```

## 44. Završava rad trenutnog šela. (str. 52)
```bash
exit
```
