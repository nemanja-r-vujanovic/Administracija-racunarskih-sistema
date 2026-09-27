import subprocess

def pokreni_komandu(komanda):
	rezultat = subprocess.run(komanda, shell=True, capture_output=True, text=True)
	return rezultat.stdout

rezultat = pokreni_komandu("ls -l")
print(rezultat)