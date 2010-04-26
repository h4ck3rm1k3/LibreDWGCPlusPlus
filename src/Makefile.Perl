all : test.txt

dwg_wrap.o :
	g++ -c -I . -fpic -DPIC *.c  -lperl -I/usr/lib/perl/5.10.0/CORE/

LibreDwg.so: dwg_wrap.o
	gcc -shared -lstdc++ decode.o dwg.o common.o bits.o dwg_wrap.o missing.o encode.o print.o -o LibreDwg.so

test.txt : LibreDwg.so  test.pl 
	perl test.pl ../examples/example.dwg  > test.txt

