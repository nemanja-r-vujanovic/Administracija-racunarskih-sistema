# Tema 6: Rad sa fajlovima

## 2. Prikazuje sadržaj tri navedena direktorijuma. (str. 55)
```bash
ls "/" "/usr/share/" "$HOME/"
```

## 3. Prikazuje tri navedena fajla. (str. 56)
```bash
ls "$HOME/.bash_history" "/etc/resolv.conf" "/etc/fstab"
```

## 4. Prikazuje sadržaj radnog direktorijuma bez skrivenih fajlova. (str. 56)
```bash
ls
```

## 5. Prikazuje sadržaj radnog direktorijuma sa skrivenim fajlovima. (str. 56)
```bash
ls -a
```

## 6. Detaljno prikazuje atribute fajla. (str. 56)
```bash
ls -l "$HOME/.bash_history"
```

## 7. Detaljno prikazuje sam direktorijum, umesto njegovog sadržaja. (str. 57)
```bash
ls -l -d "$HOME/"
```

## 8. Pravi kopiju fajla pod drugim imenom. (str. 58)
```bash
cp "$HOME/.bash_history" "$HOME/sacuvana-istorija.txt"
```

## 9. Kopira fajl u odredišni direktorijum. (str. 58)
```bash
cp "$HOME/.bash_history" "$HOME/Desktop/"
```

## 10. Preimenuje fajl. (str. 58)
```bash
mv "$HOME/sacuvana-istorija.txt" "$HOME/istorija.txt"
```

## 11. Premešta fajl u odredišni direktorijum. (str. 58)
```bash
mv "$HOME/istorija.txt" "$HOME/Desktop/"
```

## 12. Briše dva navedena fajla. (str. 59)
```bash
rm "$HOME/.bash_history" "$HOME/istorija.txt"
```

## 13. Rekurzivno briše direktorijum sa sadržajem. (str. 59)
```bash
rm -r "$HOME/Downloads/"
```

## 14. Pravi hard link ka fajlu. (str. 59)
```bash
ln "moj_fajl.txt" "moj_hard_link.txt"
```

## 15. Kreira fajl. (str. 60)
```bash
touch "naziv_A"
```

## 16. Pravi drugi naziv za isti fajl. (str. 60)
```bash
ln "naziv_A" "naziv_B"
```

## 17. Ispisuje sadržaj originalnog fajla. (str. 60)
```bash
cat "moj_fajl.txt"
```

## 18. Ispisuje isti sadržaj preko hard linka. (str. 60)
```bash
cat "moj_hard_link.txt"
```

## 19. Detaljno prikazuje navedeni link. (str. 61)
```bash
ls -l "moj_hard_link.txt"
```
