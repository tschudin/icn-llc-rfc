# Makefile

FN=draft-tschudin-icnrg-llc-00

all: ${FN}.txt ${FN}.html

${FN}.xml: ${FN}.mkd
	kramdown-rfc2629 $< >$@

${FN}.html: ${FN}.xml
	xml2rfc --html $<

${FN}.txt: ${FN}.xml
	xml2rfc $<

clean:
	rm -f ${FN}.xml *~
