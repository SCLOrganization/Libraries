#!/bin/bash
cd sqlite
./configure
./lemon parse.y
make sqlite3.c
gcc -static -s -c -m64 -fpic \
-DSQLITE_OMIT_DEPRECATED \
sqlite3.c -o ../libsqlite3.o