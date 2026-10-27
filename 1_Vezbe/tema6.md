# Tema 6: Rad sa fajlovima

## 1. Prikazuje sadržaj tri navedena direktorijuma. (str. 55)
```bash
ls "/" "/usr/share/" "$HOME/"
```

## 2. Prikazuje tri navedena fajla. (str. 56)
```bash
ls "$HOME/.bash_history" "/etc/resolv.conf" "/etc/fstab"
```

## 3. Prikazuje sadržaj radnog direktorijuma bez skrivenih fajlova. (str. 56)
```bash
ls
```

## 4. Prikazuje sadržaj radnog direktorijuma sa skrivenim fajlovima. (str. 56)
```bash
ls -a
```

## 5. Detaljno prikazuje atribute fajla. (str. 56)
```bash
ls -l "$HOME/.bash_history"
```

## 6. Detaljno prikazuje sam direktorijum, umesto njegovog sadržaja. (str. 57)
```bash
ls -l -d "$HOME/"
```

## 7. Pravi kopiju fajla pod drugim imenom. (str. 58)
```bash
cp "$HOME/.bash_history" "$HOME/sacuvana-istorija.txt"
```

## 8. Kopira fajl u odredišni direktorijum. (str. 58)
```bash
cp "$HOME/.bash_history" "$HOME/Desktop/"
```

## 9. Preimenuje fajl. (str. 58)
```bash
mv "$HOME/sacuvana-istorija.txt" "$HOME/istorija.txt"
```

## 10. Premešta fajl u odredišni direktorijum. (str. 58)
```bash
mv "$HOME/istorija.txt" "$HOME/Desktop/"
```

## 11. Briše dva navedena fajla. (str. 59)
```bash
rm "$HOME/.bash_history" "$HOME/istorija.txt"
```

## 12. Rekurzivno briše direktorijum sa sadržajem. (str. 59)
```bash
rm -r "$HOME/Downloads/"
```

## 13. Pravi hard link ka fajlu. (str. 59)
```bash
ln "moj_fajl.txt" "moj_hard_link.txt"
```

## 14. Kreira fajl. (str. 60)
```bash
touch "naziv_A"
```

## 15. Pravi drugi naziv za isti fajl. (str. 60)
```bash
ln "naziv_A" "naziv_B"
```

## 16. Ispisuje sadržaj originalnog fajla. (str. 60)
```bash
cat "moj_fajl.txt"
```

## 17. Ispisuje isti sadržaj preko hard linka. (str. 60)
```bash
cat "moj_hard_link.txt"
```

## 18. Detaljno prikazuje navedeni link. (str. 61)
```bash
ls -l "moj_hard_link.txt"
```
