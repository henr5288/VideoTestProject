#############################################################################
# File name:	Makefile
# Author:		chadd williams	
# Date:			08/12/2019
# Class:		CS 300
# Assignment:	Example C Code
# Purpose:		Demonstrate a Makefile		    
#############################################################################


CC=gcc
CFLAGS=-g -Wall

# -g  include debug symbols in the executable so that the code can be
# 		run through the debugger effectively
#
# -Wall	show all warnings from gcc


.PHONY: clean all

TARGETS=bin/videoTestCode

all: bin ${TARGETS}

bin:
	mkdir -p bin
	
bin/videoTestCode: bin/videoTestCode.o
	gcc -g -o bin/videoTestCode bin/videoTestCode.o
	
bin/videoTestCode.o: src/videoTestCode.c
	gcc -g -c -o bin/videoTestCode.o src/videoTestCode.c
	
clean:
	rm -rf ${TARGETS} bin/*.o
