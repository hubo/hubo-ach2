default: all

CFLAGS := -I./include -g --std=gnu99
CXXFLAGS := -I./include -g

CC := gcc
CXX := g++

BINARIES := hubo-ach2
all : $(BINARIES)

LIBS := -lach -lrt -lm -lc

hubo-ach2: src/hubo-ach2.c
	$(CC) $(CFLAGS) -o $@ $< $(LIBS)


clean:
	rm -f $(BINARIES) src/*.o
