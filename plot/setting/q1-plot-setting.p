#Output Settings
set terminal png size 800,300
set output 'q1.png'

# Labels, Title and Data
#set key inside bottom right
set xlabel 'thread number'
set ylabel 'Time (s)'
set title 'Q1: Openmp optimize matrix multiplication'
plot "./plot/data/q1-avgdata.txt" using 1:2 title 'outer for loop' with linespoints, \
    "./plot/data/q1-avgdata.txt" using 1:3 title 'middle for loop' with linespoints
