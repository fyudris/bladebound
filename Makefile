SRC_DIR = src
BUILD_DIR = build/debug
CC = cc
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_NAME = bladebound
INCLUDE_PATHS = -I include/SDL2 -I include/SDL2_image
LIBRARY_PATHS = -L lib/SDL2 -L lib/SDL2_image
COMPILER_FLAGS = -Wall -Wextra -Werror

# Link to SDL lib
LINKER_FLAGS = -lsdl2

all:
	$(CC) $(COMPILER_FLAGS) $(LINKER_FLAGS) $(LIBRARY_PATHS) $(SRC_FILES) -o $(BUILD_DIR)/$(OBJ_NAME)