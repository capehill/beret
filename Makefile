CC= ppc-amigaos-gcc
CFLAGS= -Wall -O2 -g -I/SDK/local/common/include/SDL
LFLAGS= -lSDL_image -ltiff -ljpeg -lwebp -lpng -lz -lSDL_ttf -lfreetype -lSDL_mixer -lSMPEG -lFLAC -lvorbisfile -lvorbis -logg -lmikmod -lmodplug -lpthread -lSDL -static -lunix

default: beret

clean:
	rm beret *.o

beret: game.o thing.o physics.o
	ppc-amigaos-g++ -o $@ game.o thing.o physics.o $(LFLAGS)

%.o: %.c %.h
