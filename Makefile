STRICTA ?= ../stricta/stricta
STRLIB  ?= ../strlib

.PHONY: test clean

test:
	@set -e; \
	for f in tests/test_*.str; do \
		name=$$(basename "$$f" .str); \
		$(STRICTA) -I . -I $(STRLIB) "$$f" -o "/tmp/ninja_$$name"; \
		"/tmp/ninja_$$name"; \
		rm -f "/tmp/ninja_$$name"; \
	done; \
	echo "ALL NINJA TESTS PASSED"

clean:
	rm -f *.ll *.o
