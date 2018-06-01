SOURCES := $(wildcard ./*.cpp)
OBJECTS := $(patsubst ./%.cpp, ./%.o, $(SOURCES))

./program : $(OBJECTS)
	@g++ $^ -o $@ 

obj/%.o : src/%.cpp
	@g++ -c $< -o $@

