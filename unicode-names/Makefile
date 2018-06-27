default: sources

HIER	= lib/Data/Char/Properties

$(HIER)/%Data.hs: $(HIER)/%Data.hs.m4 ../data/UnicodeData.m4 ../data/UnicodePropList.m4
	m4 -DDATAFILE="../data/UnicodeData.m4" -DPROPFILE="../data/UnicodePropList.m4" $< > $@

SOURCES = \
	$(HIER)/NamesData.hs

sources: $(SOURCES)

clean:
	rm -rf $(SOURCES)

# switch off intermediate file deletion
.SECONDARY:

.PHONY: default sources clean
