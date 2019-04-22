reset
set terminal pngcairo size 960,720 enhanced font 'Verdana,10'
set output "BPF_butterworth_and_chebyshev.png"

set format x "%4.0e"
set xrange [100:1000000]
set yrange [-160:20]
set ytics 20
set xtics

set logscale x
set mxtics 10

set grid mxtics ytics xtics

set arrow 1 from 1.5e3,-160 to 1.5e3,20 nohead linecolor rgb "red"
set label "1.5kHz" at 0.8e3,-155 textcolor rgb "red"
set arrow 2 from 2.5e3,-160 to 2.5e3,20 nohead linecolor rgb "red"
set label "2.5kHz" at 2.6e3,-155 textcolor rgb "red"

set title "Frequency response of 3rd-order Butterworth and Chebyshev BPF"
set xlabel "frequency [Hz]"
set ylabel "gain [dB]"
plot "BPF_butter_2gp.txt" u 1:2 w l axis x1y1 title "3rd-Butterworth BPF", "BPF_chebyshev_2gp.txt" u 1:2 w l axis x1y1 title "3rd-Chebyshev BPF"



set term qt
set output
rep