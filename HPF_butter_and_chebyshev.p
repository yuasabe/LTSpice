reset
set terminal pngcairo size 960,720 enhanced font 'Verdana,10'
set output "HPF_butter_and_chebyshev.png"

set format x "%4.0e"
set xrange [10:1000000]
set yrange [-160:20]
set ytics 20
set xtics

set logscale x
set mxtics 10

set grid mxtics ytics xtics 

set title "Frequency response of 3rd-order Butterworth and Chebyshev HPF"
set xlabel "frequency [Hz]"
set ylabel "gain [dB]"
plot "HPF_chebyshev_2gp.txt" u 1:2 w l axis x1y1 title "3D-Chebyshev HPF", "HPF_butter_2gp.txt" u 1:2 w l axis x1y1 title "3D-Butterworth HPF"

set term qt
set output
rep
