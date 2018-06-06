
system ("patc -p dollars.pat TagalogTexts-1.0.tei tgt-1.0.tei");

system ("perl -S tei2html.pl -h -r -v -e tgt-1.0.tei");
system ("patc -p linenums.pat tgt-1.0.tei tgt2-1.0.tei");
system ("perl -S tei2html.pl -x -t tgt2-1.0.tei");

system ("rm TagalogTexts.html TagalogTexts.txt TagalogTexts.epub TagalogTexts.xml");
system ("mv tgt.html TagalogTexts.html");
system ("mv tgt.xml TagalogTexts.xml");
system ("mv tgt2.txt TagalogTexts.txt");
system ("mv tgt.epub TagalogTexts.epub");
