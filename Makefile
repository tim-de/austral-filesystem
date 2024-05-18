
AC = austral compile

# Path to standard libs
SPath = $(HOME)/src/austral/standard/src/

# List of standard libs used
Standard = Buffer

# List of source names (stripped of extension)
Sources = fs file system

# List of actual sources. Any files that do not have the same name for aui/aum
# can be added at the end
SourceList = $(foreach lib, $(Standard), $(SPath)$(lib).aui,$(SPath)$(lib).aum)\
			 $(foreach src, $(Sources), $(src).aui,$(src).aum)\

Outname = file

TestEntryPoint = Test:main

EntryPoint = IO.File:main

all: test

run_test: test
	./test

test:
	$(AC) $(SourceList) test.aum --entrypoint=$(TestEntryPoint) --output=test

.PHONY: clean
clean:
	rm -f error.html calltree.html $(Outname) test
