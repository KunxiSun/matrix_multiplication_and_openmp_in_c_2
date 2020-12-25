SHELL := /bin/bash
CC=gcc
CFLAGS= -O0 -g -std=c11 -fopenmp 
.PHONY: all test clean

q1: ./src/q1.c
	$(CC) $(CFLAGS) $^ -o $@ -fsanitize=address
	./$@

q1-avg:	./src/q1-avg.c
	$(CC) $(CFLAGS) $^ -o $@ -fsanitize=address
	./$@

q2:	./src/q2.c
	$(CC) $(CFLAGS) $^ -o $@ -fsanitize=address
	./$@

q4:	./src/q4.c
	$(CC) $(CFLAGS) $^ -o $@ -fsanitize=address
	./$@

draw:
	gnuplot ./plot/setting/q1-plot-setting.p 
	gnuplot ./plot/setting/q2-1plot-setting.p 
	gnuplot ./plot/setting/q2-2plot-setting.p 
	gnuplot ./plot/setting/q4-v0.7plot-setting.p 

clean:
	rm -f q1
	rm -f q1-avg
	rm -f q2
	rm -f q4
	rm -f q1.png
	rm -f q2-1.png
	rm -f q2-2.png
	rm -f q4-v0.7.png
