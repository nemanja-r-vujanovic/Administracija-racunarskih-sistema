## Instalacija:
* sudo apt update
* sudo apt install ufw -y
* sudo systemctl enable --now ufw.service
* sudo systemctl status ufw.service

## Komande:
* sudo ufw default deny incoming  # blokiranje dolaznih konekcija
* sudo ufw default allow outgoing # dozvoljavanje odlaznih konekcija
* sudo ufw allow ssh              # dozvoljavanje SSH konekcije
* sudo ufw enable                 # uključivanje zaštitnog zida
* sudo ufw status verbose         # prikaz statusa i pravila zaštitnog zida