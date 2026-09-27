## Instalacija na serveru:
* sudo apt update
* sudo apt install openssh-server -y
* sudo systemctl enable --now ssh.service
* sudo systemctl status ssh.service

## Instalacija na klijentu:
* sudo apt update
* sudo apt install openssh-client -y

## Komande:
* sftp korisnik@adresa     # povezivanje na udaljeni računar
* pwd                      # prikaz radnog direktorijuma na udaljenom računaru
* lpwd                     # prikaz radnog direktorijuma na lokalnom računaru
* ls                       # prikaz sadržaja radnog direktorijuma na udaljenom računaru
* lls                      # prikaz sadržaja radnog direktorijuma na lokalnom računaru
* mkdir direktorijum/      # kreiranje direktorijuma na udaljenom računaru
* lmkdir direktorijum/     # kreiranje direktorijuma na lokalnom računaru
* cd direktorijum/         # promena direktorijuma na udaljenom računaru
* lcd direktorijum/        # promena direktorijuma na lokalnom računaru
* cd ../                   # povratak u naddirektorijum na udaljenom računaru
* lcd ../                  # povratak u naddirektorijum na lokalnom računaru
* rmdir direktorijum/      # brisanje praznog direktorijuma na udaljenom računaru
* rm fajl                  # brisanje fajla na udaljenom računaru
* get fajl                 # kopiranje/preuzimanje fajla sa udaljenog računara
* mget fajl1 fajl2         # kopiranje/preuzimanje fajlova sa udaljenog računara
* put fajl                 # kopiranje/slanje fajla na udaljeni računar
* mput fajl1 fajl2         # kopiranje/slanje fajlova na udaljeni računar
* !komanda                 # izvršavanje komande na lokalnom računaru
* help ili ?               # prikaz pomoći/spiska SFTP komandi
* exit                     # prekid SFTP konekcije
