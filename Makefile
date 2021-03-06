CC=g++
CFLAGS=-std=gnu++11 -Wall -Werror -o test
MAC_SOURCES=src/*.cpp tst/test_hashmap.cpp
LINUX_SOURCES=src/*.cpp tst/monitor.cpp tst/test.cpp

all:
	$(CC) $(CFLAGS) $(LINUX_SOURCES) -fopenmp -O3

debug:
	$(CC) $(CFLAGS) $(LINUX_SOURCES) -fopenmp -gdwarf-2

mac:
	$(CC) $(CFLAGS) -O3 $(MAC_SOURCES) -framework CoreFoundation -framework IOKit

clean:
	rm -rf test *.0 *~ *.*~
