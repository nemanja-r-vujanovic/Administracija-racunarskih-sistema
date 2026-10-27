# Tema 10: Svojstva fajlova

## 1. Prikazuje detaljne atribute fajla. (str. 82)
```bash
stat "moj_fajl.txt"
```

## 2. Prikazuje atribute fajla u sažetom obliku. (str. 83)
```bash
stat -t "moj_fajl.txt"
```

## 3. Broji linije, reči i bajtove u fajlu. (str. 84)
```bash
wc "moj_fajl.txt"
```

## 4. Prikazuje zauzeće diska za direktorijume i ukupan zbir. (str. 85)
```bash
du
```

## 5. Prikazuje zauzeće diska za tri navedena fajla. (str. 85)
```bash
du "moj_fajl.txt" "prazan_fajl.txt" "ogroman_fajl.txt"
```

## 6. Prikazuje zauzeće diska u čitljivim jedinicama. (str. 85)
```bash
du -h
```

## 7. Prepoznaje tipove tri navedena fajla. (str. 86)
```bash
file "/etc/hosts" "/usr/bin/who" "moj_fajl.txt"
```

## 8. Postavlja vreme pristupa i izmene na trenutno vreme. (str. 86)
```bash
touch "moj_fajl.txt"
```

## 9. Postavlja vreme pristupa i izmene na 18. novembar 1975. (str. 87)
```bash
touch -d "November 18 1975" "moj_fajl.txt"
```

## 10. Menja korisnika vlasnika dva fajla i direktorijuma. (str. 87)
```bash
sudo chown "$USER" "moj_fajl.txt" "moj_fajl2.txt" "moj_direktorijum/"
```

## 11. Postavlja navedenog korisnika za vlasnika fajla. (str. 87)
```bash
chown "$USER" "moj_fajl.txt"
```

## 12. Postavlja korisnika i grupu za vlasnike fajla. (str. 87)
```bash
chown "$USER":"korisnici" "moj_fajl.txt"
```

## 13. Menja grupu vlasnika fajla. (str. 87)
```bash
chown :"korisnici" "moj_fajl.txt"
```

## 14. Menja grupu vlasnika dva fajla i direktorijuma. (str. 88)
```bash
chgrp "prijatelji" "moj_fajl.txt" "moj_fajl2.txt" "moj_direktorijum/"
```

## 15. Postavlja pune dozvole vlasniku, čitanje grupi i ukida dozvole ostalima. (str. 89)
```bash
chmod u=rwx,g=r,o= "novi_fajl.txt"
```

## 16. Dodaje svim korisnicima dozvolu izvršavanja skripte. (str. 89)
```bash
chmod a+x "nova_skripta.sh"
```

## 17. Postavlja dodatne atribute `u` i `i`, uključujući nepromenljivost fajla. (str. 90)
```bash
chattr +ui "moj_fajl.txt"
```

## 18. Rekurzivno postavlja atribut nepromenljivosti u direktorijumu. (str. 91)
```bash
chattr -R +i ./"probni-direktorijum/"
```

## 19. Prikazuje dodatne atribute fajla. (str. 91)
```bash
lsattr "moj_fajl.txt"
```
