reset
# set terminal png
# set output "LPF_chebyshev.png"

set format x "%4.0e"
set xrange [100:1000000]
set yrange [-160:20]
set ytics 20
set xtics

set logscale x
set mxtics 10

set grid mxtics ytics xtics 

set title "Frequency response of Chebyshev LPF"
set xlabel "frequency [Hz]"
set ylabel "gain [dB]"
plot "LPF_chebyshev_2gp.txt" u 1:2 w l axis x1y1 title ""

# set term qt
# set output
# rep
