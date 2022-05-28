@echo off
runtime\bin\python\python_mcp runtime\decompile.py %*

:: Source Code Setup
runtime\bin\7za a -m0=Copy src.7z src\
runtime\bin\xdelta3 -d -s "src.7z" "jars\NFC v3.4.2 SRC Patch.xdelta" "src_nfc.7z"
ren src src_old
runtime\bin\7za x src_nfc.7z src

::Jar Setup
cd jars\bin\
xcopy /v minecraft.jar minecraft_old.jar
..\..\runtime\bin\7za a -tzip minecraft.jar .\jarfiles\*
..\..\runtime\bin\7za d minecraft.jar -r META-INF\
cd ..\..\

::Cleanup
del src.7z
del src_nfc.7z

pause