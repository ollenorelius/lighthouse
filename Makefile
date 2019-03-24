CC=g++
CFLAGS=-I

SRC=$(wildcard *.cpp)
OBJ=$(SRC:.cpp=.o)

LDFLAGS = -lm

lighthouse: $(OBJ)
	mkdir -p build
	$(CC) -o build/$@ $^ $(LDFLAGS)
	rm -f *.o

.PHONY: clean
clean:
	rm -rf build
