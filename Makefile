CC=g++
INCLUDEPATHS = -I/usr/local/include/ -I/opt/libjpeg-turbo/include/

CFLAGS=$(INCLUDEPATHS)
SRC=$(wildcard src/*.cpp)
OBJ=$(SRC:.cpp=.o)

LDFLAGS = -L/opt/vc/lib -L/opt/libjpeg-turbo/lib32 -lm -lpthread -lraspicam -lmmal -lmmal_core -lmmal_util -lturbojpeg

lighthouse: $(OBJ)
	mkdir -p build
	$(CC) -o build/$@ $^ $(LDFLAGS)
	rm -f *.o

%.o: %.cpp
	mkdir -p build/src
	$(CC) -o build/$@ -c $^ $(CFLAGS) 

.PHONY: clean
clean:
	rm -rf build
