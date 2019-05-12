#!/usr/bin/env bash

cp -R ../../c++/ workdir
mkdir -p ../../../../target/classes/linux64/
cd workdir
autoreconf -f -i
./configure \
--prefix=$PWD/release \
--disable-cpplibs \
--disable-doxygen-docs \
--enable-local-xmms-plugin \
--disable-ogg \
--disable-thorough-tests

make install
r1=$?
cp -R release/lib ../../../../../target/classes/linux64
cp -R release/include ../../../../../target/classes/linux64
cd ..
rm -R workdir

exit ${r1}
