create_jail(){

mkdir newJail
cd newJail

mkdir -p bin lib64/x86_64-linux-gnu lib/x86_64-linux-gnu

cp $(which ls) ./bin/
cp $(which bash) ./bin/

ldd $(which bash)
    linux-vdso.so.1 =>  (0x00007ffc75dd4000)
    libtinfo.so.5 => /lib/x86_64-linux-gnu/libtinfo.so.5 (0x00007f6577768000)
    libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f6577564000)
    libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f657719a000)
    /lib64/ld-linux-x86-64.so.2 (0x000055979f3fd000)

cp /lib/x86_64-linux-gnu/libtinfo.so.5 lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libdl.so.2 lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libc.so.6 lib/x86_64-linux-gnu/
cp /lib64/ld-linux-x86-64.so.2 lib64/

ldd $(which ls)
  linux-vdso.so.1 =>  (0x00007fff4f05d000)
  libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007f9a2fd07000)
  libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f9a2f93e000)
  libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007f9a2f6cd000)
  libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f9a2f4c9000)
  /lib64/ld-linux-x86-64.so.2 (0x000055e836c69000)
  libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f9a2f2ac000)

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

if = [ $create_jail ]
then
  echo OK
else
  echo KO
fi
