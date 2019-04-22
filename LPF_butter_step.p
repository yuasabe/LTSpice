reset
# set terminal png
# set output "LPF_butter_step.png"

set format x "%4.0e"
set xrange [0:0.005]
set yrange [0:2.0]
set ytics 0.1
set xtics

# set logscale x
# set mxtics 10

set grid mxtics ytics xtics 

set title "Step response of Butterworth LPF"
set xlabel "time [Hz]"
set ylabel "gain [dB]"
plot "LPF_butter_step.txt" u 1:2 w l axis x1y1 title "", "LPF_chebyshev_step.txt" u 1:2 w l axis x1y1 title ""

# set term qt
# set output
# rep
