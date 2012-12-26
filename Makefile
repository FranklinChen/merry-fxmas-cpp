# test uses Google Test, which we build locally

GTEST_DIR = gtest-1.6.0

CPPFLAGS = -I$(GTEST_DIR)/include -I$(GTEST_DIR)
CXXFLAGS = -Wall -std=c++11

all:	test

test:	merry_test
	./merry_test

merry_test:	merry_test.o libgtest.a
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) $^ -o $@

main:	main.o
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) $^ -o $@

run:	main
	./main

clean:
	@rm -f merry_test main *.o

libgtest.a:	$(GTEST_DIR)/src/gtest-all.cc
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c $<
	ar -rv $@ gtest-all.o

merry_test.o:	merry.h
main.o:	merry.h

.PHONY:	all merry_test run clean
