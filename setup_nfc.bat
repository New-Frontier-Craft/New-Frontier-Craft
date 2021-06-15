@echo off
runtime\bin\python\python_mcp runtime\decompile.py %*
runtime\bin\7za a -m0=Copy src.7z src\
runtime\bin\xdelta3 -d -s "src.7z" "NFC v3.4.0 SRC Patch.xdelta" "src_nfc.7z"
ren src src_old
runtime\bin\7za x src_nfc.7z src
runtime\bin\xdelta3 -d -f -s "jars\bin\minecraft.jar" "NFC v3.4.0 JAR Patch.xdelta" "jars\bin\minecraft_new.jar"
ren jars\bin\minecraft.jar minecraft_old.jar
ren jars\bin\minecraft_new.jar minecraft.jar
pause