INC_DIR = include
SRC_DIR = src
OBJ_DIR = build
LIB_DIR = lib

CC = g++
CFLAGS = -Wall -pedantic -std=c++11 -ansi -I. -I$(INC_DIR)
AR = ar

linux: mathbasic.a mathbasic.so

#LINUX

mathbasic.a:$(SRC_DIR)/mathbasic.cpp $(INC_DIR)/mathbasic.h
	$(CC) $(CFLAGS) -c $(SRC_DIR)/mathbasic.cpp -o $(OBJ_DIR)/mathbasic.o
	$(AR) rcs $(LIB_DIR)/$@  $(OBJ_DIR)/mathbasic.o
	@echo "+++[Biblioteca estatica criada em $(LIB_DIR)/$@]+++"

mathbasic.so: $(SRC_DIR)/mathbasic.cpp $(INC_DIR)/mathbasic.h
	$(CC) $(CFLAGS) -fPIC -c $(SRC_DIR)/mathbasic.cpp -o $(OBJ_DIR)/mathbasic.o
	$(CC) -shared -fPIC	-o $(LIB_DIR)/$@ $(OBJ_DIR)/mathbasic.o
	@echo "+++[Biblioteca dinamica criada em $(LIB_DIR)/$@]+++"

