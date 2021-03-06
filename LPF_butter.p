reset
set terminal pngcairo size 960,720 enhanced font 'Verdana,10'
set output "LPF_butter_4d.png"

set format x "%4.0e"
set xrange [100:1000000]
set yrange [-160:20]
set ytics 20
set xtics

set logscale x
set mxtics 10

set grid mxtics ytics xtics 

set title "Frequency response of Butterworth LPF"
set xlabel "frequency [Hz]"
set ylabel "gain [dB]"
plot "LPF_butter_2gp.txt" u 1:2 w l axis x1y1 title "3D-Butterworth LPF", "LPF_butterworth_4d_2gp.txt" u 1:2 w l axis x1y1 title "4D-Butterworth LPF"

set term qt
set output
rep
