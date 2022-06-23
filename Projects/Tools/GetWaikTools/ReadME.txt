GetWaikTools is an App to fast download the often needed deployment tools.
Included are the Wim driver to mount Wim files, imagex, wimgapi,
the BCD store tools, OSCDIMG to create ISO files and the DISM utility.

Commandline support:

-vista            windows Vista WAIK Tools
-win7             windows 7 WAIK Tools
-win8.1           windows 8.1 ADK Tools
-win10            windows 10 ADK Tools

-win7dism         windows 7 WAIK Dism Tools
-win8.1dism       windows 8.1 ADK Dism Tools
-win10dism        windows 10 ADK Dism Tools

-all              all the above WAIK / ADK tools

-allextras        all the below other tools

-devcon           windows 8.1 devcon Tools

-windiff          WinDiff tool from Win7 SDK

-xpramboot        files required to boot PE1.x into RAM
-xpwimboot        files required for PE1.x WimBoot
-xpwinload        Vista RTM winload.exe, able to boot WinXP

-w2k3disk         Windows 2003 SP2 disk.sys

-xpcards          Windows 2003 SP2 cards.dll
-xpdiskcopy       Windows 2003 SP2 diskcopy.dll
-xppowercalc      PowerCalculator from XP Power Tools



-silent           suppress success or error messages
-folder:{dir}     location to download to

-range:n1-n2     Uses range download
-link:{url}            set URL without server for range download
-out:{filename}  output filename for range download
-title:{title}         set title for range download

ex. GWT -range:3464189952-3465373535 -out:"N:\bootx64.efi" -title:"Downloading bootx64.efi" -link:/download/1/B/F/1BFE5194-5951-452C-B62C-B2F667F9B86D/14393.0.160715-1616.RS1_RELEASE_CLIENTENTERPRISE_S_EVAL_X64FRE_EN-US.ISO


-Get-Range      get file ranges from ISOFile
ISOFile              Path to an *.ISO file
[file.ext]            file pattern 
[-UDF:0]           don't try to open as UDF

ex. GWT -Get-Range N:\Win10.iso bootmgr;boot*.efi;*\boot.sdi


-ontop            set the ontop flag for the window
-build:xxxx     set build number for Windows 10 ADK (ex. 1507 or 26624)
-builddir:{name}        change name of ADK6 folder 

ex. GWT -win10 -build:1507 -silent -folder:X:\ADK -builddir:ADK_6_1507

Following files are from older ADK version, cause Microsoft is linking them wrong
so they can't work on all supported Windows version.

ADK6\amd64\DISM\wofadk.sys
ADK6\x86\DISM\wofadk.sys