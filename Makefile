SOURCE_FILE_NAME = *.rst
BOOK_FILE_NAME = index

PDF_BUILDER = pandoc
PDF_BUILDER_FLAGS = \
	--latex-engine xelatex \
	--template ../common/pdf-template.tex \
	--listings

EPUB_BUILDER = pandoc
EPUB_BUILDER_FLAGS = \
	--epub-cover-image

src/$(BOOK_FILE_NAME).pdf:
	cd src && $(PDF_BUILDER) $(PDF_BUILDER_FLAGS) $(SOURCE_FILE_NAME) -o $(BOOK_FILE_NAME).pdf

src/$(BOOK_FILE_NAME).epub: src/title.png src/title.txt src/$(SOURCE_FILE_NAME)
	$(EPUB_BUILDER) $(EPUB_BUILDER_FLAGS) $^ -o $@

clean:
	rm -f */$(BOOK_FILE_NAME).pdf
	rm -f */$(BOOK_FILE_NAME).epub
