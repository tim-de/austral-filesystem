
AC = austral compile

SPath = $(HOME)/src/austral/standard/src/

Standard = Buffer

Sources = fs file system

SourceList = $(foreach lib, $(Standard), $(SPath)$(lib).aui,$(SPath)$(lib).aum)\
			 $(foreach src, $(Sources), $(src).aui,$(src).aum)\

Outname = file

TestEntryPoint = Test:main

EntryPoint = IO.File:main

all: test

test:
	$(AC) $(SourceList) test.aum --entrypoint=$(TestEntryPoint) --output=test

.PHONY: clean
clean:
	rm -f error.html calltree.html $(Outname) test
