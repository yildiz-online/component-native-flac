cp -R ../../c++/ workdir
mkdir -p ../../../../target/classes/win64/
cd workdir
autoreconf -f -i
./configure \
--prefix=$PWD/release \
--disable-cpplibs \
--disable-doxygen-docs \
--enable-local-xmms-plugin \
--disable-ogg \
--disable-thorough-tests \
--host=x86_64-w64-mingw32

make install
r1=$?
cp -R release/lib ../../../../../target/classes/win64
cp -R release/include ../../../../../target/classes/win64
cp -R release/bin ../../../../../target/classes/win64
cd ..
rm -R workdir

return $r1
