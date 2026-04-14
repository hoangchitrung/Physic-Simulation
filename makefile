HEADERS := $(wildcard src/headers/*.hpp) # nothing

# WINDOWS
compile:
	@g++ -c main.cpp

link:
	@g++ main.o -o sfml-app -lsfml-graphics -lsfml-window -lsfml-system

execute:
	@./sfml-app

remove:
	@rm -f sfml-app main.o

build: compile link execute remove