NAME := "nya"
SRCS := lib.rs
DIRC := src/
LSTC := $(patsubst %,$(DIRC)%,$(SRCS))

.SILENT: all
#.PHONY: default all

default: all

all:
	mkdir -p  $(SOURCE)/lib
	rustc src/lib.rs --crate-name $(NAME) --crate-type dylib --out-dir $(SOURCE)/lib --emit=link