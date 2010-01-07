#make clean
#make -C .. clean
make -C .. CFLAGS="-O1 -g" 
make CFLAGS="-O1 -g" LDFLAGS="-L../src" load_dwg
./load_dwg
