University of Lethbridge Calculus Texts

These texts are a fork of the APEX Calculus textbooks. The main texts are the Math 1560 (Calculus I), Math 2560 (Calculus II), and Math 2570 (Calculus III) files, which come in both e-book (in colour) and print (in black and white) versions. The Math 1560 and Math 2560 textbooks cover the updated curriculum as of September 2015. The Math 2570 text still covers the 'old' curriculum, due to be updated for September 2016. The Math 2570 textbook will be updated accordingly this summer.

For best results, the books should be compiled using XeLaTeX on a computer with the Calibri font installed. (This is a Windows font, so this option unfortunately isn't available on most Linux machines, unless Calibri has been separately purchased and installed.) If PDFLaTeX is run instead, the Carlito font will be used. This is a Google font meant to be metric compatible with Calibri. This is almost -- but not quite -- the case. If you compile with Carlito the page breaks will be different in places, and you'll have to check for overlapping margin graphics and notes, and make adjustments as needed.

I'd like to thank the people involved with the APEX Calculus project for making these texts possible. The README from their GitHub repository follows below. I'd also like to thank Jiri Lebl for the use of his "Notes on Diffy Qs" textbook, the first chapter of which I've ported over to the APEX format for the Math 2560 textbook.

Sean Fitzpatrick, Lethbridge, AB, December, 2015.

APEXCalculus_Source
===================

Source files for the APEX Calculus text, Version 3.0.

The main file is Calculus.tex, intended to be run with XeLaTeX with the Calibri font. 
It will run without Calibri and with pdflatex, but the spacing will be different than intended. One can try using the Carlito font, which is an open font with (supposedly) the same font metrics as Calibri. I have not yet tried it personally.

CalculusI, CalculusII and CalculusIII each typeset a portion of the text. This is done mainly to get a different
TOC and exercise sets at the end. 

See "Version_3_errata.txt" for a list of known errors in the text. This will be updated continuously. As of this writing, the document does not exist as no errors are known.

This work is covered with a Creative Commons 3.0 By-NC copyright.

Enjoy.
