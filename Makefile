ifndef VERBOSE
.SILENT:
endif

MACROS_DIR := macros
FENNEL_OPTS := --correlate --use-bit-lib --add-macro-path $(MACROS_DIR)
SRC_FILES := $(wildcard fnl/*.fnl fnl/**/*.fnl)
OUT_FILES := $(patsubst fnl/%.fnl,lua/%.lua,$(SRC_FILES))

default: clean $(OUT_FILES)
	echo "Generated: $(OUT_FILES)"

clean:
	rm -rf lua/*

lua/%.lua: fnl/%.fnl
	mkdir -p "$$(dirname $@)"
	fennel $(FENNEL_OPTS) -c $< > $@

.PHONY: default clean
