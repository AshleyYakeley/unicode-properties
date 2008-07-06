default: build

URLGET	= curl -o
HIER	= Data/Char/Properties

$(HIER)/%Data.hs: $(HIER)/%Data.hs.m4 $(HIER)/UnicodeData.m4 $(HIER)/UnicodePropList.m4
	m4 -DDATAFILE="$(HIER)/UnicodeData.m4" -DPROPFILE="$(HIER)/UnicodePropList.m4" $< > $@

$(HIER)/UnicodeData.m4: $(HIER)/UnicodeData.data
	sed -e 's/;/}},{{/g; s/^/uchar({{/; s/$$/}})dnl/' $< > $@

$(HIER)/UnicodePropList.m4: $(HIER)/PropList.data
	sed -e 's/#.*$$//;s/^ *\([.0-9A-F]*\) *; *\([0-9A-Za-z_]*\)/charprop(\2,\1)/;s/\.\./,/;/^$$/ d' $<	> $@

$(HIER)/%.data:
	rm -f $@
	$(URLGET) $@ http://www.unicode.org/Public/3.2-Update/$*-3.2.0.txt

SOURCES = \
	$(HIER)/PrivateData.hs \
	$(HIER)/GeneralCategoryData.hs \
	$(HIER)/NamesData.hs \
	$(HIER)/BidiCategoryData.hs \
	$(HIER)/DecompositionData.hs \
	$(HIER)/MiscData.hs \
	$(HIER)/CaseData.hs

sources: $(SOURCES)

configure: sources
	runhaskell Setup.hs configure --enable-library-profiling

build: configure
	runhaskell Setup.hs build

haddock: configure
	runhaskell Setup.hs haddock

install: build haddock
	sudo runhaskell Setup.hs install

clean:
	runhaskell Setup.hs clean
	rm -f $(HIER)/*Data.hs $(HIER)/UnicodeData.m4 $(HIER)/UnicodePropList.m4

reallyclean: clean
	rm -f $(HIER)/*.data

# switch off intermediate file deletion
.SECONDARY:

.PHONY: default sources configure build haddock install clean reallyclean
