#Output Settings
set terminal png size 800,300
set output 'q2-1.png'

# Labels, Title and Data
#set key inside bottom right
set xlabel 'thread number'
set ylabel 'Time (s)'
set title 'Q2-1: Openmp optimize matrix multiplication: outer for loop'
plot "./plot/data/q2-1bestdata.txt" using 1:2 title 'default' with linespoints, \
    "./plot/data/q2-1bestdata.txt" using 1:3 title 'static' with linespoints, \
    "./plot/data/q2-1bestdata.txt" using 1:4 title 'dynamic' with linespoints, \
