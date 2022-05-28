#!/bin/sh
python2 runtime/decompile.py "$@"

#Source Code Setup
wine ./runtime/bin/7za a -m0=Copy src.7z src/
xdelta3 -d -s "src.7z" "jars/NFC v3.4.1_01 SRC Patch.xdelta" "src_nfc.7z"
mv src src_old
7za x src_nfc.7z src

#Jar Setup
cd ./jars/bin/
cp minecraft.jar minecraft_old.jar
7za a -tzip minecraft.jar ./jarfiles/*
7za d minecraft.jar -r META-INF/
cd ../../

#Cleanup
rm src.7z
rm src_nfc.7z
