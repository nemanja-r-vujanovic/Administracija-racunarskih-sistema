import sys

if (len(sys.argv) != 2):
	print("Prosledite tacno jedan argument!")
else:
	arg = int(sys.argv[1])
	for i in range(arg, -1, -1):
		print(i)