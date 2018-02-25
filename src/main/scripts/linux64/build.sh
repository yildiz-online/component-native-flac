cp -R ../../c++/ workdir
mkdir -p ../../../../target/classes/linux64/
cd workdir
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

return $r1
