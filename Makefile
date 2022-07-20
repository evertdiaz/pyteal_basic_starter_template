.PHONY: all compile clean

PYTHON=python3
APPROVAL_PROGRAM=approval
CLEAR_PROGRAM=clear

all: compile

compile:
	rm -rf build/
	mkdir build
	$(PYTHON) ./src/$(APPROVAL_PROGRAM).py > ./build/$(APPROVAL_PROGRAM).teal
	$(PYTHON) ./src/$(CLEAR_PROGRAM).py > ./build/$(CLEAR_PROGRAM).teal

clean:
	rm ./build/$(APPROVAL_PROGRAM).teal
	rm ./build/$(CLEAR_PROGRAM).teal