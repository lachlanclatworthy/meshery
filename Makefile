PROJECT=meshery
BUILD_DIR=build
BIN=./$(BUILD_DIR)/$(PROJECT)

all: $(BUILD_DIR) $(BIN) 

$(BIN): src/*.cpp src/*.h
	g++ -o $(BIN) src/*.cpp

run: all
	$(BIN)	

src/*.cpp src/*.h:

$(BUILD_DIR):
	mkdir -p ./build

clean:
	rm $(BIN)
