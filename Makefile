.PHONY: all clean dev prod build.dir

# CONFIG
SHELL    := /bin/bash

# DIRECTORIES
SRC.DIR     := src
BUILD.DIR   := build
SUPPORT.DIR := support
CPP.DIR     := $(SRC.DIR)/cpp


# FILES
ARBORIST.SRC := arborist.cpp

# PATHS
ARBORIST.PATH := $(CPP.DIR)/$(ARBORIST.SRC)

# COMMANDS
GPP.CMD       = $(CXX) $(G++.FLAGS) -o
GPP.FLAGS    := 

ARBORIST.CMD := $(GPP.CMD) $(BUILD.DIR)/$(patsubst %.cpp,%,$(ARBORIST.SRC)) $(ARBORIST.PATH)
             
CLEAN.CMD     = rm $(CLEAN.FLAGS)
CLEAN.FLAGS  := -rf
             
MKDIRS.CMD    = mkdir $(MKDIRS.FLAGS)
MKDIRS.FLAGS := -p


all: prod

dev: $(ARBORIST.PATH)
	@$(MKDIRS.CMD) $(BUILD.DIR)
	watch -n 5 $(ARBORIST.CMD)

prod: $(ARBORIST.PATH)
	@echo -e '\033[33mBuilding Arborist...\033[0m'
	@$(MKDIRS.CMD) $(BUILD.DIR)
	@$(ARBORIST.CMD)
	@echo -e '\033[32mBuild Complete!\033[0m'

clean:
	@echo -e '\033[33mCleaning Project...\033[0m'
	@$(CLEAN.CMD)\
		$(BUILD.DIR)
	@echo -e '\033[32mProject Clean!\033[0m'
