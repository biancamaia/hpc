CC = gcc
CFLAGS = -lm -O2 -fopenmp
OBJ = pprg.o

ODIR = obj

prg: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o
