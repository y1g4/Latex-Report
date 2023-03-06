Thesis Template
===============

This is the template for my PhD thesis. I commented the latex prologue and tried to keep it as simple as possible, so it can be easily understood and extended. The template holds dummy text with examples for creating tables, figures, index and glossary.


There is a makefile that creates three files:

- thesis.dvi for fast previewing with hyperlinks in b/w.

- thesis.ps for printing in b/w (without any hyperlinks).

- thesis.pdf for online viewing with hyperlinks in color.


Organization of the template

- Makefile governs the compiliation; target: dvi, ps and pdf

- thesis.tex holds everything together and includes

  - titlepage.tex

  - abstract.tex
 
  - acknowledge.tex

  - body.tex

- thesis-man.ist for custom formatting of Index (letter heading, dots)

- references.bib bibtex bibliography


Features

The pdf file is fully hyperlinked
 - table of contents to chapters in the text
 - list of figures to figures in the text
 - list of tables to tables in the text
 - text to floats (figures and tables)
 - text to bibliograpy
 - bibliograpy to page in the text
 - index to page in the text
 - glossary to page in the text

acrobat general information
 - thesis title
 - thesis subject
 - thesis author
 - thesis keyword


acrobat reader features
 - preview images are included
 - bookmarks:  the bookmark includes not only links to numbered chapters, but also to unnumbered chapters (title, table of contents, list of figures, list of tables, acknowledgement, abstract, bibliograpy, index and glossary).

small pdf file size


Anti-Features

I changed (but not necessarily improved) the standard latex layout by using bars over chapter titles etc.. This can be easily undone by deleting thesis.cls and changing in thesis.tex style thesis to style report,

Required software

- a flavor of unix for the makefile may be helpful

- latex and pdflatex

- non-standard packages: glossary.sty may need to be installed on teTeX, but comes with TexLive.

- make

- ghostscript (thumbpdf)

- optional: zip and ps2ascii


Bugs

- 2, 3 mm less top-margin on the index page (I recommend not creating an index page, anway. That is too much work)

- before compiling dvi, ps or pdf, sometimes a make clean may be necessary
