#!/bin/bash

mkdir /usr/lib/mkpkg
cp build/mkpkg.jar /usr/lib/mkpkg/.
cp src/mkpkg /usr/bin/.
chmod a+x /usr/bin/mkpkg
