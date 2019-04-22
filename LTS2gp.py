import math
import sys

if len(sys.argv) == 1:
	print("Usage: LTS2gp.py input.txt output.txt")
else:
	f = open(sys.argv[1], "r")
	first_line = f.readline()
	f1 = f.readlines()
	for line in f1:
		ele = line.split("\t")
		vect = ele[1].split(",")
		re = float(vect[0])
		im = float(vect[1])
		gain = math.sqrt(re*re + im*im)
		phase = math.atan(im/re) * 180 / math.pi

		dBGain = 20 * math.log10(gain)

		print(float(ele[0]), dBGain, phase, sep="\t")
	f.close()
