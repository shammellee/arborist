.PHONY: all clean

# CONFIG
SHELL    := /bin/bash

# DIRECTORIES
SRC.DIR            := src
BUILD.DIR          := build
SUPPORT.DIR        := support

CPP.DIR            := $(SRC.DIR)/cpp

# COMMANDS
CLEAN.CMD        = rm $(CLEAN.FLAGS)
CLEAN.FLAGS     := -rf

MKDIRS.CMD       = mkdir $(MKDIRS.FLAGS)
MKDIRS.FLAGS    := -p


all: prune

prune: $(CPP.DIR)/prune.cpp
	@$(MKDIRS.CMD) $(BUILD.DIR)
	$(CXX) -o $(BUILD.DIR)/$@ $<

clean:
	@echo -e '\033[33mCleaning Project...\033[0m'
	@$(CLEAN.CMD)\
		$(BUILD.DIR)
	@echo -e '\033[32mProject Clean!\033[0m'
