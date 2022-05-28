# New Frontier Craft #
_A New Adventure In Old Minecraft - Official Source Code_

---

## Setup Part 1 - Development Software Setup ##
- If on Linux install Wine, `python2`, `p7zip-full`, and `xdelta3`.
- MCP Download: http://www.mediafire.com/file/03d94f13c9ulj5a/mcp43.zip/file
- Eclipse 2020-06: https://www.eclipse.org/downloads/packages/release/2020-06/r (Recommended)
- Java Development Kit 8: https://github.com/AdoptOpenJDK/openjdk8-binaries/releases

## Setup Part 2 - The bin folder ##
_Part 2 can be ignored if the user already has a functional bin folder from an old Minecraft installation_
- Create folder called `bin` in jars folder
- Download [lwjgl 2.9.3](https://sourceforge.net/projects/java-game-lib/files/Official%20Releases/LWJGL%202.9.3/lwjgl-2.9.3.zip/download)
- Extract the downloaded lwjgl zip
- Copy `lwjgl.jar` and `lwjgl_util.jar` from the jar folder of the extracted folder to the `jars/bin` folder of MCP
- Create a folder called `natives` in your MCP `jars/bin` folder
- Go to the `native/[os-name]` folder of the extracted LWJGL zip, and copy the contents to the `natives` folder of MCP
- Download [jinput 2.0.9](https://repo1.maven.org/maven2/net/java/jinput/jinput/2.0.9/jinput-2.0.9.jar)
- Rename the downloaded jar to jinput, removing the `-2.0.9` from the title
- Copy it into the MCP `jars/bin` folder 
- Download the jar for [Minecraft Beta 1.7.3](https://launcher.mojang.com/v1/objects/43db9b498cb67058d2e12d394e6507722e71bb45/client.jar)
- Rename the jar to `minecraft.jar`
- Copy the `minecraft.jar` file into the bin folder

## Setup Part 3 - NFC Installation ##
- Download the NFC code by clicking the `Code` button on the top of the page and clicking `Download ZIP`
- Copy all the files from the zip into your MCP base directory, so that the `setup_NFC` files are alongside the other MCP scripts
- Run `setup_NFC.bat` if on Windows, or `setup_NFC.sh` if on Linux.

## Setup Part 4 - Eclipse ##
- Open Eclipse 2020-06 (Or any other version with JDK 8 support)
- Copy the path to the Eclipse folder in your MCP directory to the "Workspace" text box in the middle of the window, or click the `Browse...` button and navigate to the Eclipse folder. The end of the text in the Workspace text box should read `mcp43\eclipse`, assuming you didn't rename the MCP folder
- Launch into Eclipse, and from there everything should work. If you encounter any issues, contact us on our [Discord](https://discord.gg/jnzgdTV)

---

#### Legacy Workspaces ####
- NFC v3.4.0: https://github.com/LO6AN/New-Frontier-Craft/tree/22896a388056fcdaac47e36ef27887f25f166a49
- NFC 1.8.6_02: https://github.com/Zowja/New-Frontier-Craft
- NFC 1.8.5_01: https://github.com/Zowja/New-Frontier-Craft/tree/f942ea5a57ab28f846f66098baf6d6d5293bb9fc
