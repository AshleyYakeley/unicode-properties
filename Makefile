default: build

build:
	cd unicode-properties && make
	cd unicode-names && make
	stack build
