default: sources

HIER	= Data/Char/Properties

$(HIER)/%Data.hs: $(HIER)/%Data.hs.m4 ../unicode-properties/$(HIER)/UnicodeData.m4 ../unicode-properties/$(HIER)/UnicodePropList.m4
	m4 -DDATAFILE="../unicode-properties/$(HIER)/UnicodeData.m4" -DPROPFILE="../unicode-properties/$(HIER)/UnicodePropList.m4" $< > $@

SOURCES = \
	$(HIER)/NamesData.hs

sources: $(SOURCES)

# switch off intermediate file deletion
.SECONDARY:

.PHONY: default sources
