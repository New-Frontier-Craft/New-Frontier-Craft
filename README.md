# New-Frontier-Craft #
_Note, this documentation has been written for use with Windows. Later documentation will be added for using an NFC workspace on non-Windows operating systems._

## Setup Part 1 - MCP Setup ##
- MCP Download: http://www.mediafire.com/file/03d94f13c9ulj5a/mcp43.zip/file
- Eclipse 2020-06: https://www.eclipse.org/downloads/packages/release/2020-06/r
- Java Development Kit 8: https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u292-b10/OpenJDK8U-jdk_x64_windows_hotspot_8u292b10.msi

_JDK 8u51 recommended, however any variant of JDK 8 will function_

### Part 1.1 - The bin folder ###
_Step 1.1 can be ignored if the user already has a functional bin folder from an old Minecraft installation_
- Create folder called `bin` in jars folder
- Download [lwjgl 2.9.3](https://sourceforge.net/projects/java-game-lib/files/Official%20Releases/LWJGL%202.9.3/lwjgl-2.9.3.zip/download)
- Extract the downloaded lwjgl zip
- Copy `lwjgl.jar` and `lwjgl_util.jar` from the jar folder of the extracted folder to the `bin` folder of MCP
- Create a folder called `natives` in your MCP `bin` folder
- Go to the `native/windows` folder of the extracted LWJGL zip, and copy the contents to the `natives` folder of MCP
- Download [jinput 2.0.9](https://repo1.maven.org/maven2/net/java/jinput/jinput/2.0.9/jinput-2.0.9.jar)
- Rename the downloaded jar to jinput, removing the `-2.0.9` from the title
- Copy it into the MCP `bin` folder 
- Download the jar for [Minecraft Beta 1.7.3](https://launcher.mojang.com/v1/objects/43db9b498cb67058d2e12d394e6507722e71bb45/client.jar)
- Rename the jar to `minecraft.jar`
- Copy the `minecraft.jar` file into the bin folder

### Part 1.2 - commands.py patch ###
- Go to the `runtime` folder
- Open commands.py in your text editor of choice
- Find `def checkupdates` at line 484
- Replace the text underneath it with the word `pass`

![Patch commands.py](https://cdn.discordapp.com/attachments/459889822291591179/682445814341304341/Capture.PNG)

### Part 1.3 - lib folder ###
- Download the NFC libs from [here](https://www.mediafire.com/file/kkc1ugzuoyx6zim/lib.zip/file)
- Download [authlib](https://libraries.minecraft.net/com/mojang/authlib/1.5.25/authlib-1.5.25.jar)
- Add all these files to the `lib` folder in MCP

## Setup Part 2 - NFC Installation ##
- Download the NFC code by clicking the `Code` button on the top of the page, and click `Download ZIP`
- Copy all the files from the zip into your MCP base directory, so that the `setup_NFC.bat` file is alongside the other MCP bat scripts
- Run `setup_NFC.bat`

## Setup Part 3 - Eclipse ##
- Open Eclipse 2020-06 (Or any earlier version with JDK 8 support)
- Copy the path to the Eclipse folder in your MCP directory to the "Workspace" text box in the middle of the window, or click the `Browse...` button and navigate to the said folder. The end of the text in the Workspace text box should read `mcp43\eclipse`
