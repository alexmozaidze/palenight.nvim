ifndef VERBOSE
.SILENT:
endif

FENNEL := ./deps/fennel-1.3.1
FENNEL_OPTS := --add-macro-path 'macros/?.fnl' --indent '	'
SRC_FILES := $(shell find fnl -name '*.fnl')
OUT_FILES := $(patsubst fnl/%.fnl,lua/%.lua,$(SRC_FILES))
OLD_OUT_FILES := $(filter-out $(OUT_FILES),$(shell find lua -name '*.lua'))
MACRO_FILES := $(shell find macros -name '*.fnl')

default: clean build update-readme update-contributing

build: $(OUT_FILES)

lua/%.lua: fnl/%.fnl $(MACRO_FILES)
	- mkdir -p "$$(dirname $@)"
	$(FENNEL) $(FENNEL_OPTS) -c $< > $@
	echo 'Generated $@'

clean:
	./scripts/clean $(OLD_OUT_FILES)

commit:
	git add lua
	git commit -m 'chore: generated lua'

update-readme:
	./scripts/update-readme

update-contributing:
	./scripts/update-contributing

.PHONY: default clean build commit update-readme update-contributing
