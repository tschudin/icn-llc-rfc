#!/bin/bash
name=$1
prefix=${name%.*}
echo "Converting ${prefix}.mkd to XML"
kramdown-rfc2629 $1 > $prefix.xml
echo "Converting ${prefix}.xml to RFC text"
xml2rfc --text $prefix.xml
xml2rfc --html $prefix.xml
rm $prefix.xml
 