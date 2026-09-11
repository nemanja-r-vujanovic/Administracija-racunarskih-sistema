# 2. Program

import sys

if (len(sys.argv) < 2):
	print("Argument nije prosledjen!")
else:
	print(f"Argument je prosledjen: '{sys.argv[1]}'.")
