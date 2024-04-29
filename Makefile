# Define compiler and flags
CC = clang
CFLAGS = -framework Cocoa

# Define source files
SOURCES = main.m ./helpers/*.m

# Define output executable
OUTPUT = app

# Default target
all: $(OUTPUT)

# Compile and link the application
$(OUTPUT): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $^
	cp $(OUTPUT) ./test.app/Contents/MacOS/

# Clean target
clean:
	rm -f $(OUTPUT)

# Phony targets
.PHONY: all clean