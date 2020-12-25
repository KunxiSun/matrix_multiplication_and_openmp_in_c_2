#Output Settings
set terminal png size 800,300
set output 'q4-v0.7.png'

# Labels, Title and Data
#set key inside bottom right
set xlabel 'Thread number'
set ylabel 'Time (s)'
set title 'Version 7: bijk applied on matrix multiplication'
plot "./plot/data/q4-v0.7data.txt" using 1:2 title '' with linespoints