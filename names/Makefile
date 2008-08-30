default: build

HIER	= Data/Char/Properties

$(HIER)/%Data.hs: $(HIER)/%Data.hs.m4 ../$(HIER)/UnicodeData.m4 ../$(HIER)/UnicodePropList.m4
	m4 -DDATAFILE="../$(HIER)/UnicodeData.m4" -DPROPFILE="../$(HIER)/UnicodePropList.m4" $< > $@

SOURCES = \
	$(HIER)/NamesData.hs

sources: $(SOURCES)

# Building

clean:
	cabal clean
	rm -f $(HIER)/*Data.hs

reallyclean: clean
	rm -f $(HIER)/*.data

configure: sources
	cabal configure --enable-library-profiling

build: configure
	cabal build --ghc-options="-Wall -Werror"

haddock: configure
	cabal haddock

install: build haddock
	cabal install --user

sdist: configure
	cabal sdist

# switch off intermediate file deletion
.SECONDARY:

.PHONY: default sources configure build haddock install clean reallyclean
