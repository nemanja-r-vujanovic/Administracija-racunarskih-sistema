.intel_syntax noprefix               # Intel sintaksa umesto AT&T

.data                                # Sekcija za inicijalizovane varijable
	poruka: .asciz "Zdravo svete!\n" # char poruka[] = "Zdravo svete!\n";
	poruka_len = . - poruka - 1      # int poruka_len = sizeof(poruka) - 1;

.text
.global _start                       # int main()
_start:                              # {
	# Ispiši "Zdravo svete!\n"
	mov rax, 1                       #     write()    # 1 = write()
	mov rdi, 1                       #     1          # 1 = stdout (standard output)
	lea rsi, poruka                  #     poruka
	mov rdx, poruka_len              #     poruka_len
	syscall                          #     write(1, poruka, poruka_len);

	# Prekini program
	mov rax, 60                      #     exit()     # 60 = exit()
	mov rdi, 0                       #     0          # 0 = success exit status
	syscall                          #     exit(0);
	                                 # }
