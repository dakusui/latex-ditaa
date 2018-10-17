#!/bin/bash -eu

mkdir -p ditaa

cp README.adoc ditaa.tex ditaa.sty examples/example.tex ditaa
cd ditaa
mkdir -p resources/ditaa

mv README.adoc README
pdflatex --shell-escape ditaa
pdflatex --shell-escape ditaa
rm ditaa.aux ditaa.log
cd ..
zip -r ditaa-$(date +%Y%m%d).zip ditaa
