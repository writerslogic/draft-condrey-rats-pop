DRAFTS := draft-condrey-rats-pop-protocol.xml draft-condrey-rats-pop-appraisal.xml
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
