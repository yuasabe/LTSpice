# LTSpice
Files and scripts for analyzing circuit simulation data on LTSpice

## Using LTS2gp.py

- input.txt : exported data file from LTSpice wave viewer
- output.txt : file to plot with gnuplot
'''
python LTS2gp.py input.txt > output.txt
'''
- plot the output.txt in gnuplot
'''
gnuplot -p LPF_butter.p
'''
