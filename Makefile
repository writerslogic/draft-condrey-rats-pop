DRAFTS := $(wildcard draft-*.xml)
TXTS := $(DRAFTS:.xml=.txt)
HTMLS := $(DRAFTS:.xml=.html)

.PHONY: all clean lint idnits

all: $(TXTS) $(HTMLS)

%.txt: %.xml
	xml2rfc --text $<

%.html: %.xml
	xml2rfc --html $<

lint:
	@for f in $(DRAFTS); do \
		echo "Validating $$f..."; \
		xmllint --noout --dtdvalid http://xml.resource.org/authoring/rfc2629.dtd $$f 2>/dev/null || \
		xmllint --noout $$f || \
		echo "WARN: $$f has validation issues"; \
	done
	@echo "Lint complete."

idnits: $(TXTS)
	@for f in $(TXTS); do \
		echo "Checking $$f..."; \
		idnits $$f || true; \
	done

clean:
	rm -f $(TXTS) $(HTMLS) *.pdf
