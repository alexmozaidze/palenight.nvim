ifndef VERBOSE
.SILENT:
endif

FENNEL_OPTS := --correlate --add-macro-path 'macros/?.fnl'
SRC_FILES := $(wildcard fnl/*.fnl fnl/**/*.fnl)
OUT_FILES := $(patsubst fnl/%.fnl,lua/%.lua,$(SRC_FILES))

default: clean build

build: $(OUT_FILES)
	echo "Generated: $(OUT_FILES)"

lua/%.lua: fnl/%.fnl
	mkdir -p "$$(dirname $@)"
	fennel $(FENNEL_OPTS) -c $< > $@

clean:
	rm -rf lua/*

commit:
	git add lua
	git commit -m 'chore: generated lua'

.PHONY: default clean build commit
