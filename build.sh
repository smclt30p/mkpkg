#!/bin/bash

mkdir build
mkdir build/META-INF

cp src/Mkpkg.java build/Mkpkg.java
cp src/META-INF/MANIFEST.MF build/META-INF/MANIFEST.MF

javac build/Mkpkg.java

rm build/Mkpkg.java
cd build
jar -cfm mkpkg.jar META-INF/MANIFEST.MF Mkpkg.class

rm META-INF/MANIFEST.MF
rm Mkpkg.class
rmdir META-INF
echo "Now run install.sh"
