default: sources

HIER	= lib/Data/Char/Properties

$(HIER)/%Data.hs: $(HIER)/%Data.hs.m4 ../data/UnicodeData.m4 ../data/UnicodePropList.m4 PropList.m4
	m4 -DDATAFILE="../data/UnicodeData.m4" -DPROPFILE="../data/UnicodePropList.m4" -DMISCDOCFILE="PropList.m4" $< > $@

$(HIER)/Derivation.hs: $(HIER)/Derivation.hs.m4 DerivationData.m4
	m4 -DDATAFILE="DerivationData.m4" $< > $@

SOURCES = \
	$(HIER)/PrivateData.hs \
	$(HIER)/GeneralCategoryData.hs \
	$(HIER)/BidiCategoryData.hs \
	$(HIER)/DecompositionData.hs \
	$(HIER)/MiscData.hs \
	$(HIER)/Derivation.hs \
	$(HIER)/CaseData.hs

sources: $(SOURCES)

clean:
	rm -rf $(SOURCES)

# switch off intermediate file deletion
.SECONDARY:

.PHONY: default sources clean
