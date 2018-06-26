default: sources

URLGET	= curl -o
HIER	= Data/Char/Properties

$(HIER)/%Data.hs: $(HIER)/%Data.hs.m4 $(HIER)/UnicodeData.m4 $(HIER)/UnicodePropList.m4 PropList.m4
	m4 -DDATAFILE="$(HIER)/UnicodeData.m4" -DPROPFILE="$(HIER)/UnicodePropList.m4" -DMISCDOCFILE="PropList.m4" $< > $@

$(HIER)/Derivation.hs: $(HIER)/Derivation.hs.m4 DerivationData.m4
	m4 -DDATAFILE="DerivationData.m4" $< > $@

$(HIER)/UnicodeData.m4: UCD/UnicodeData.txt
	tr -d \\r < $< | sed -e 's/;/}},{{/g; s/^/uchar({{/; s/$$/}})dnl/' > $@

$(HIER)/UnicodePropList.m4: UCD/PropList.txt
	tr -d \\r < $< | sed -e 's/#.*$$//;s/^ *\([.0-9A-F]*\) *; *\([0-9A-Za-z_]*\)/charprop(\2,\1)/;s/\.\./,/;/^$$/ d' > $@

$(HIER)/SpecialCasing.m4: UCD/SpecialCasing.txt
	tr -d \\r < $< | sed -e 's/#.*$$//; s/; $$//; s/; */}},{{/g; /^$$/ d; s/^/uchar({{/; s/$$/}})dnl/' > $@

UCD.zip:
	$(URLGET) $@ http://www.unicode.org/Public/zipped/5.1.0/UCD.zip

UCD: UCD.zip
	rm -rf $@
	mkdir $@
	unzip $< -d $@

UCD/%: UCD

SOURCES = \
	$(HIER)/PrivateData.hs \
	$(HIER)/GeneralCategoryData.hs \
	$(HIER)/BidiCategoryData.hs \
	$(HIER)/DecompositionData.hs \
	$(HIER)/MiscData.hs \
	$(HIER)/Derivation.hs \
	$(HIER)/CaseData.hs

sources: $(SOURCES)

# switch off intermediate file deletion
.SECONDARY:

.PHONY: default sources
