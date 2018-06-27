default: build

URLGET	= curl -o

UVERSION = 5.1.0

data/UCD.zip:
	mkdir -p data
	$(URLGET) $@ http://www.unicode.org/Public/zipped/$(UVERSION)/UCD.zip

data/ucd.all.flat.zip:
	mkdir -p data
	$(URLGET) $@ http://www.unicode.org/Public/$(UVERSION)/ucdxml/ucd.all.flat.zip

data/ucd.all.flat.xml: data/ucd.all.flat.zip
	unzip $< -d data
	touch $@

data/UCD: data/UCD.zip
	rm -rf $@
	mkdir $@
	unzip $< -d $@

data/UCD/UnicodeData.txt: data/UCD

data/UCD/PropList.txt: data/UCD

data/UCD/SpecialCasing.txt: data/UCD

data/UnicodeData.m4: data/UCD/UnicodeData.txt
	tr -d \\r < $< | sed -e 's/;/}},{{/g; s/^/uchar({{/; s/$$/}})dnl/' > $@

data/UnicodePropList.m4: data/UCD/PropList.txt
	tr -d \\r < $< | sed -e 's/#.*$$//;s/^ *\([.0-9A-F]*\) *; *\([0-9A-Za-z_]*\)/charprop(\2,\1)/;s/\.\./,/;/^$$/ d' > $@

data/SpecialCasing.m4: data/UCD/SpecialCasing.txt
	tr -d \\r < $< | sed -e 's/#.*$$//; s/; $$//; s/; */}},{{/g; /^$$/ d; s/^/uchar({{/; s/$$/}})dnl/' > $@

datafiles: data/UnicodeData.m4 data/UnicodePropList.m4 data/SpecialCasing.m4 data/ucd.all.flat.xml

build: datafiles
	cd unicode-properties && make
	cd unicode-names && make
	stack build

# switch off intermediate file deletion
.SECONDARY:

.PHONY: default build datafiles
