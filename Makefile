ifndef VERBOSE
.SILENT:
endif

FENNEL := ./deps/fennel-1.3.1
FENNEL_OPTS := --add-macro-path 'macros/?.fnl' --indent '	'
SRC_FILES := $(shell find fnl -name '*.fnl')
OUT_FILES := $(patsubst fnl/%.fnl,lua/%.lua,$(SRC_FILES))
OLD_OUT_FILES := $(filter-out $(OUT_FILES),$(shell find lua -name '*.lua'))

default: clean build update-readme

build: $(OUT_FILES)

lua/%.lua: fnl/%.fnl
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

.PHONY: default clean build commit update-readme
