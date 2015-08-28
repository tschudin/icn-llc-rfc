# Makefile

FN=draft-tschudin-icnrg-llc-00

all: ${FN}.txt

${FN}.txt: ${FN}.xml
	xml2rfc $<

${FN}.xml: ${FN}.mkd
	kramdown-rfc2629 $< >$@

clean:
	rm -f ${FN}.xml *~
