# Variables
CC = gcc
CFLAGS = -Wall
LIBS = -lncurses
TARGET = game
SRC = game.c

# Phony Targets
.PHONY: all clean

# Default Target
all: $(TARGET)

# Link Target
$(TARGET): $(SRC)
	$(CC) -o $(TARGET) $(SRC) $(CFLAGS) $(LIBS)

# Clean Target
clean:
	rm -f $(TARGET)
