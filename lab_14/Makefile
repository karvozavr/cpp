CC=g++
out=main
list=bin/main.o bin/matrix.o
CXXFLAGS=-std=c++11 -pedantic -Wall -Wextra -Wshadow -Iinclude
SRCPATH=src
INCPATH=include
BINPATH=bin

all: $(out)

$(out): bin $(list)
		$(CC) $(CXXFLAGS) $(list) -o $(out)

bin:
		mkdir bin

bin/main.o: $(SRCPATH)/main.cpp
		$(CC) $(CXXFLAGS) $(CXXFLAGS_compile) -c $(SRCPATH)/main.cpp -o $(BINPATH)/main.o
bin/matrix.o: $(SRCPATH)/matrix.cpp $(INCPATH)/matrix.h
		$(CC) $(CXXFLAGS) $(CXXFLAGS_compile) -c $(SRCPATH)/matrix.cpp -o $(BINPATH)/matrix.o
			
		
clean:
		rm -rf bin $(out)
.PHONY: clean

