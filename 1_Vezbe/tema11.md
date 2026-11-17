# Tema 11: Pronalaženje fajlova

## 1. Traži običan fajl zadatog imena, počev od radnog direktorijuma. (str. 93)
```bash
find "./" -type f -name "moj_fajl.txt" -print
```

## 2. Traži obične fajlove čija imena počinju zadatim tekstom. Obrnuta kosa crta prepušta tumačenje zvezdice komandi find. (str. 93)
```bash
find "./" -type f -name "moj_fajl"\* -print
```

## 3. Ispisuje radni direktorijum kao "." i putanje do njegovih poddirektorijuma. (str. 94)
```bash
find "." -type d -print
```

## 4. Pronalazi obične fajlove koji ne pripadaju navedenom korisniku i poslednji put su izmenjeni pre više od 30 dana. (str. 96)
```bash
find "./" -type f \( ! -user "ppetrovic" -mtime +30 \) -print
```

## 5. Ispisuje fajl sa spiskom putanja. (str. 97)
```bash
cat "vazno.txt"
```

## 6. Prosleđuje putanje iz spiska komandi za detaljan prikaz fajlova. (str. 97)
```bash
cat "vazno.txt" | xargs ls -l
```

## 7. Otvara fajlove navedene u spisku radi pregleda. (str. 97)
```bash
cat "vazno.txt" | xargs less
```

## 8. Briše fajlove navedene u spisku, bez traženja potvrde. (str. 97)
```bash
cat "vazno.txt" | xargs rm -f
```

## 9. Ispisuje imena pronađenih fajlova čiji sadržaj uključuje zadati tekst. (str. 98)
```bash
find "./" -type f -print | xargs grep -l "jabuka"
```

## 10. Ispisuje sadržaj prvog pronađenog fajla. (str. 98)
```bash
cat "pronadjeni_fajl.txt"
```

## 11. Pronalazi putanju do izvršnog fajla who. (str. 100)
```bash
which "who"
```

## 12. Pokazuje kako šel pronalazi komande. (str. 100)
```bash
type "grep" "who" "which" "type" "rm" "if"
```

## 13. Traži izvršni fajl i druge dostupne fajlove. (str. 101)
```bash
whereis "nano"
```