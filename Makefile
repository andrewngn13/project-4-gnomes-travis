
GXX49_VERSION := $(shell g++-4.9 --version 2>/dev/null)

ifdef GXX49_VERSION
	CXX_COMMAND := g++-4.9
else
	CXX_COMMAND := g++
endif

CXX = ${CXX_COMMAND} -std=c++11 -Wall

run_test: gnomes_test
	./gnomes_test

headers: rubrictest.hpp gnomes_alg.hpp

gnomes_test: headers gnomes_test.cpp
	${CXX} gnomes_test.cpp -o gnomes_test

clean:
	rm -f gnomes_test
