SHELL 	   := $(shell which bash)

ROOT_DIR   := $(shell git rev-parse --show-toplevel)
BUILD_DIR  := $(ROOT_DIR)/build
BUILD_OPT  := 
SRC_DIR    := $(ROOT_DIR)/src


.PHONY: all
all: build

.PHONY: build
build: $(BUILD_DIR)
	@echo -e "==> $@"
	ulimit -S -n 2048
	cd $(SRC_DIR) && \
	opa build . --bundle --output $(BUILD_DIR)/bundle.tar.gz $(BUILD_OPT) && \
	cd $(ROOT_DIR)

$(BUILD_DIR):
	@echo -e "==> create BUILD_DIR $(BUILD_DIR)"
	@mkdir -p $(BUILD_DIR)