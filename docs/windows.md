
# Windows usage

Windows-specific tips go here.

* [Why I use Windows instead of Mac](#Why-I-use-Windows-instead-of-Mac)
* [Generic Windows tweaks and programs I use](#Generic-Windows-tweaks-and-programs-I-use)
* [How to use QQTabBar with multiple tabs, folder bookmarks and program launchers](#How-to-use-QQTabBar-with-multiple-tabs-folder-bookmarks-and-program-launchers)
* [How to add WSL scripts to QQTabBar](#How-to-add-WSL-scripts-to-QQTabBar)


## Why I use Windows instead of Mac
    
Apple and MacOS is in general a better choice to do audio work (both DJing and Production). 

The operating system is stronger because it was built on Unix. The hardware and software are better 
integrated as they are built by the same company. 
And there is generally less bugs across the board as the hardware are standardized (ie, all macs are the same inside the same model).

Nevertheless its definitely not perfect; while I've seen more issues in Windows, I've also seen issues in Macs. 
In particular, as of Nov 2019 this got a lot worse with MacOS Catalina, namely as it migrated to 64-bit only drivers and the removal of itunes/music App. 

So if I say the mac is still overall a better choice for Music, so why I'm using a Dell XPS 15 windows? 
Main reasons are:
* **a) Folder Tree:** I use File explorer with the [full tree visible all the time](#why-i-manage-music-using-os-folders-only). I've tried Finder several times but did not enjoyed their paradigms. 
Also tried to use a windows file explorer clone for mac, it was completely abandoned by the author.
* **b) No flexibility:** AKA the "one apple way". I've never got used to their GUI, their keyboard shortcuts, 
and the keyboard itself. 
In particular there is the extremely annoying decision of having to use 2 hands for the
 [forward delete key](https://forums.macrumors.com/threads/why-no-delete-key.1360799/). 
Same story for the Maximize feature. Same story for lack of USB-A ports, SD cards and dongles. 
Ditto for no headphone jack in recent iphones.
In all cases the answer is  "get used to it". Well, I didn't.\
See also [my Windows tweaks](#Generic-Windows-tweaks-and-programs-I-use)
* **c) Software library:** Very limited choice on software and freeware, as compared to Windows
* **d) Expensive:** Underpowered machines, when compared to their direct windows counterparts [in the same price range](https://musiccritic.com/equipment/disk-jockey/best-laptops-for-djing/)
* **e) Command Line:** I use the command heavily to automate tasks in bash, git updates, and python programming.

See also these comments on [switching from OSX to Windows](https://www.meldaproduction.com/text-tutorials/switching-from-osx-to-windows)
from a Music company.

Update: more articles on mac to windows, and latest windows 10 features:
* mac to windows rant: https://www.wired.com/story/rant-switching-from-mac-to-windows/)
* windows 10 20H2 review: [link](https://www.pcmag.com/reviews/microsoft-windows-10)


## WSL Linux shell on Windows

I use the command heavily to automate tasks in bash, git updates, and python programming.

For years I've used a linux VM inside windows, but now I only use WSL. 

* Installation guide: https://adamtheautomator.com/windows-subsystem-for-linux/
* Integration with python: https://towardsdatascience.com/setting-up-a-data-science-environment-using-windows-subsystem-for-linux-wsl-c4b390803dd
* Integration with visual studio: https://devblogs.microsoft.com/commandline/an-in-depth-tutorial-on-linux-development-on-windows-with-wsl-and-visual-studio-code/

See also [mixxx compilation topics on windows]().

## Generic Windows tweaks and programs I use 

I love [customization](https://www.neogaf.com/threads/some-of-my-cant-live-without-progams-what-are-yours.1482889/), so I have installed several tweaker apps. These are all GUIS to edit the refgistry and change / unlock / customize windows features. Below the reviews:
* [Activaid](https://www.ghacks.net/2014/09/24/activaid-is-a-useful-autohotkey-script-collection/)
* [Winareo tweraker](https://winaero.com/comment.php?comment.news.1836)
* [Ultimate windows tweaker](https://www.thewindowsclub.com/ultimate-windows-tweaker-4-windows-10)
* [NirSoft utils](https://www.nirsoft.net/utils/)
* [Win 10 annoyances](https://www.pcmag.com/how-to/how-to-fix-the-most-annoying-things-in-windows-10)

Plus some specific programs:
* [QQTabbar](https://www.techsupportalert.com/content/qttabbar.htm): Adds tabs to File Explorer, folder bookmarks and program shortcuts. Please see below pictures.
* [Link Clump](https://chrome.google.com/webstore/detail/linkclump/lfpjkncokllnfokkgpkobnkbkmelfefj?hl=en): Make a rectangle around hyperlinks; open all in new tabs.
* [WinDirStat](https://windirstat.net/): find missing disk space hogs
* [Resilio sync](https://www.techadvisor.co.uk/download/backup-recovery/resilio-sync-263-3331463/): automatic folder synchronization
* [Allway Sync](https://www.tomsguide.com/us/file-sync-backup,review-1060-4.html): manual folder synchronization

## How to use QQTabBar with multiple tabs, folder bookmarks and program launchers

QQTabbar ([link to a review](https://www.techsupportalert.com/content/qttabbar.htm)) is 
an amazing file explorer add-on. It supports multiple tabs, folder bookmarks and program launchers.\
I use this every day to open WSL linux terminals in the current folder, and to open audio files programs directly.

Usage:
![qqtabbar_usage](pics/qqtabbar_usage.jpg?raw=true)

Configuring Launchers:
![qqtabbar_launchers](pics/qqtabbar_launchers.jpg?raw=true)

update March 2021:

This [link](https://www.makeuseof.com/tag/best-windows-file-explorer-replacements ) has a list of 
the best file explorer alternatives:
  
1. XYplorer
2. Directory Opus
3. fman
4. Free Commander
5. Explorer++
6. Altap Salamander
  

## How to add WSL scripts to QQTabBar

Combining QQTabBar and WSL bash scripts is a powerful way to manipulate files in Explorer.

Example programs from [here](https://github.com/pestrela/music/tree/master/wsl_tools/):
* windows_launch_spek.sh: calls the spek frequency analyzer for several files
* windows_group_files_in_folder.sh: create a sub-folder and move selected files into it
* windows_create_txt.sh: creates a txt file with the same name as the given file
* a simple WSL shell launch on that folder

Most important tricks are:
* debug your script in a WSL prompt. 
  * If there is a syntax error the window disappears immediately in qqtabbar
* launch bash as 'wsl.exe --cd %cd% -- /home/user/bin/your_script.sh %f%'
  * Path: %windir%\system32\wsl.exe
  * Arguments: --cd %cd% -- '/home/user/bin/your_script.sh' -f %f%
    * '--cd %cd% --' changes the working folder to that location
    * -- seperates wsl arguments from your script
    * give the full path to your script
    * -f is to give files and folders to your script
    * if there is no parameters, this opens an interactive shell instead
    
* process the files with "wslpath $file" to convert them to linux format
  * unless you are launching windows programs; in that case, use the arguments "as-is"  
* add an icon from: 
  * C:\Windows\System32\imageres.dll
  * %SystemRoot%\system32\SHELL32.dll
* your script
  * add an "read" to both the start and the end
  * otherwise you see no output at all
  * same for "exit"
  
![qqtabbar_wsl_scripts](pics/qqtabbar_wsl_scripts_.jpg?raw=true)


## Contributed QQTAbBar WSL scripts

[Here](https://github.com/pestrela/music/tree/master/wsl_tools) I have several WSL scripts, plus their QQTabbar shortcuts. 

You just select files and folders, click an explorer icon, and a shell script runs on them.

* group folder
  * asks for a folder name, and moves all files into that subfolder
* Create txt
  * for every file, creates a "sidecar" text file with the same filename
* ffmpeg
  * ffmpeg wrapper, converts audio files to mp3 320kbps
* WSL
  * opens a wsl shell on this folder
* Spek
  * opens spek for each file
  
## How to organize files in folders easily

My tagging method revolves about [folders](../os_folders/#how-large-is-your-collection-how-broad-is-your-collection).

I have a single icon in explorer that does this:
 
* asks for a folder name
* creates that sub-folder in the current location
* moves all selected files there
  
Alternative are tools to change the filenames themselves:

* blog post: https://karl-voit.at/managing-digital-photographs/
* demo and scripts: https://karl-voit.at/demo-appendfilename/

Lastly I recommend this reddit group about [data curation](https://www.reddit.com/r/datacurator/comments/kpfxw7/file_naming_conventions_for_a_startup/ghxrq87/)
