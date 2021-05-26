# Scale font and line width (dpi) by changing the size! It will always display stretched.
set terminal png size 2000,700
set output 'data.png'
set datafile separator ","
set timefmt "%s"
set format x "%d/%m/%Y %H:%M:%S"
set xdata time
set xtics rotate by 315

# Key means label...
set key inside bottom right
set xlabel 'Time (minutes)'
set ylabel 'Request time (seconds)'
set title 'Telegram Status'
plot  "data.log" using 1:2 title 'Name lookup' with lines, "data.log" using 1:3 title 'Connect' with lines, "data.log" using 1:4 title 'App Connect' with lines, "data.log" using 1:5 title 'Pretransfer' with lines, "data.log" using 1:6 title 'Redirect' with lines, "data.log" using 1:7 title 'Start transfer' with lines

