echo 'run.sh'

echo -e '\nmake'
make clean
make all

echo -e '\nrun bin'
qemu-arm-static -B 0x10000000 -L /usr/arm-linux-gnueabi ./bin