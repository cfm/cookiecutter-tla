DOT=$(wildcard *.dot)
PNG=$(DOT:.dot=.dot.png)

.PHONY: all

all: {{ cookiecutter.project_slug }}.png

%.dot: %.tla %.cfg Makefile TLA_BIN
	$(TLA_BIN) $< \
		-tool \
		-modelcheck \
		-coverage 1 \
		-config $(<:.tla=.cfg) \
		-dump dot,actionable,colorize \
		$@

%.png: %.dot Makefile
	dot -Tpng $< > $@

TLA_BIN:
ifndef TLA_BIN
	$(error Missing $$TLA_BIN. Download "tla2tools.jar" from <https://github.com/tlaplus/tlaplus/releases> and set $$TLA_BIN to that path)
endif