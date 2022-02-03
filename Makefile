# Makefile for countSort examples
#

CC=gcc -std=gnu99
OMP=-fopenmp

all: getopt countSort_seq #countSort_omp

countSort_seq: countSort_seq.c seq_time.h
	${CC} -o countSort_seq countSort_seq.c

countSort_omp: countSort_omp.c
	${CC} ${OMP} -o countSort_omp countSort_omp.c

getopt: getopt.c
	${CC} -o getopt getopt.c 

clean:
	rm -f countSort_seq countSort_omp getopt
	