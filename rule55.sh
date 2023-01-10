create_jail(){

mkdir newJail
cd newJail

mkdir -p bin lib64/x86_64-linux-gnu lib/x86_64-linux-gnu

cp $(which ls) ./bin/
cp $(which bash) ./bin/

ldd $(which bash)

cp /lib/x86_64-linux-gnu/libtinfo.so.5 lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libdl.so.2 lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libc.so.6 lib/x86_64-linux-gnu/
cp /lib64/ld-linux-x86-64.so.2 lib64/

ldd $(which ls)

cp /lib/x86_64-linux-gnu/libselinux.so.1 lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libc.so.6 lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libpcre.so.3 lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libdl.so.2 lib/x86_64-linux-gnu/
cp /lib64/ld-linux-x86-64.so.2  lib64/
cp /lib/x86_64-linux-gnu/libpthread.so.0 lib/x86_64-linux-gnu/

cd ..
sudo chroot jailed /bin/bash

exit
}

if = [ create_jail ]
then
  echo OK
else
  echo KO
fi
