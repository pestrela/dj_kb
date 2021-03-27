

# OS-Folders

## How large is your collection? How broad is your collection?

I have a large collection with thousands of files. It is also quite broad, featuring hundreds of playlists, and dozens of genres / sub-genres / decades combinations.

My numbers are:

* **Tracks**: 8000
* **Playlists**: 300
* **Sub-genres:** 50 
* **Major-genres:** 10
* **Decades:** 5
* **DJs**: 2

To manage this complexity I've build my own set of personal tags that I fully trust.
As such, the first action on new files is to tag them into my structure. This ignores any previous tags made by someone else.

Below an example how my structure looks like; the full tree is far larger.
![DJ Genres](pics/folder_organization_dj_genres.png?raw=true)

See also [Why I manage music using OS-folders only](#why-i-manage-music-using-os-folders-only).
  

## Why I manage music using OS-folders only

Above, I've explained [the size and complexity of my collection](#How-large-is-your-collection-How-broad-is-your-collection).\
This is nothing new; I know many DJs with [the same "problem"](https://code.google.com/archive/p/serato-itch-sync/). The difference is on the *how*; In my case I manage the collection only in OS-folders, instead of DJ-playlists.

Main reasons are:

* **#1: Multiple Windows:** File explorer opens instantaneously with Win+E, and allows any number of windows, monitors and [tabs](http://qttabbar.wikidot.com/). 
* **#2: Tree Tagging:** More crucially, all windows have the whole tree visible. This is essential to quickly tag my files by just moving them to the correct correct folder. Similarly, the structure grows just by creating new sub-folders as needed.
* **#3: Simpler Folders**: OS-Folders contain either files, sub-folders, or both. [This 2-step organization](https://en.wikipedia.org/wiki/Path_(computing)#History) is simpler is than the iTunes 3-step model of "folders -> playlists -> files" (later copied by almost all DJ softwares).
* **#4: Local Searches:** By far my most common task is to check if I already have a particular track, and where is it tagged. File explorer allows local searches on a folder and its sub-folders only. This enables me to quickly find things by just typing a few letters of the filename. AFAIK only Serato has this feature (called ["include subcrates"](https://support.serato.com/hc/en-us/articles/227626268-Subcrates))
* **#5: Tags Cleanup:** Before tagging the file, I rename the filenames to correct its artist / title. [MP3tag](https://www.mp3tag.de/en/) helps a lot to clean up the formatting, using [my own scripts](https://github.com/pestrela/music/blob/master/traktor/tools_traktor/Mp3tagSettings.zip) to automatically capitalize the names as “ARTIST1 ft. ARTIST2 - Capitalized Title - Remix”, and to update the internal mp3 tags. 
* **#6: Software Independence:** Using OS-folders you are independent of any possible DJ software and itunes. It also trivial to [sync between laptops](#how-i-synchronize-and-backup-my-whole-traktor-music-and-configuration-across-laptops-and-a-nas) and make perfect backups [to my NAS](https://www.synology.com/en-global/products/DS718+). It is also trivial to load a whole genres to USB sticks to listen in cars.

See also [this blog post for more details on my workflow between DJ softwares ](#how-to-manage-your-collection-using-operating-systems-folders-and-without-dj-playlists-ie-using-only-finder-windows-explorer-etc).

See also [this reddit post for a realy good organiztion using a databse](https://www.reddit.com/r/DJs/comments/c3o2jk/my_ultimate_track_tagging_system_the_little_data/?utm_medium=android_app&utm_source=share)

  

## How to manage your collection using operating systems folders and without DJ playlists (ie, using only Finder, Windows Explorer, etc) 

Above I've described [Why I manage music using OS-folders only](#why-i-manage-music-using-os-folders-only). In this post I will describe *how* I manged to **fully automate** my workflow between DJ softwares.

* **#0: File operations:** [As explained above](#why-i-manage-music-using-os-folders-only) I continuously search files, change the filenames and move the files around left and right.
* **#1: Traktor Repair:** When I first open Traktor, it automatically [repairs its own database](#why-is-traktor-my-software-of-choice-a-database-repair-mass-relocate). For this I just run a mass-relocate on my whole music root folder, which refinds all moved and renames files in a single go.
* **#2: Update collection:** The second step is just to import the whole music root folder into Traktor. As this skips previous files, in practice it only imports the New files. The last step is to delete the remaining missing files (that are really deleted - otherwise they would been found on step #1) 
* **#3: Duplicate Cues**: For the rare cases that a file is in multiple sub-genres, I just copy them physically in different folders. I have 10% of duplicated files. Then I run a [python script](#about-traktor_clone_cuespy) to automatically duplicate the CUEs for these files. This tool is similar to [the traktor Librarian](http://www.flowrl.com/librarian).
* **#4: Dj Converter:** I use the [DJ Data Converter](#which-dj-converters-avoid-the-26ms-shift-issue) to generate the rekordbox.xml file without the [26ms shift problem](#what-is-the-26ms-shift-issue-when-converting-cuesloops-between-softwares).
* **#5: Rekordbox Import:** On rekordox first I delete all missing files, then import the whole collection "as-is", and then update the collection with the XML file that came from the (repaired) Traktor collection. These steps are fully automatic and it ensures the Rekordbox collection matches the Traktor collection.
* **#6: Rekordbox Search:** I only use rekordbox for video gigs. There I use the explorer node to see my files, and search for files in the whole collection. For the rare case I need to search inside a "playlist", I use a real File Explorer window in parallel when needed (because rekordbox [still lacks a search box in OS-folders](#why-is-traktor-my-software-of-choice-b-os-search-no-playlists))
* **#7: CDJ export:** I only really need playlists for CDJs. There are scripts to mass-convert all folders to DJ playlists. Then I do the usual rekordbox step to prepare USBs pens.
    * Windows version is http://samsoft.org.uk/iTunes/ImportFolderStructure.vbs; 
    * Mac version is https://dougscripts.com/itunes/scripts/ss.php?sp=droptoaddnmake; 
    * A Serato-specific version is in https://code.google.com/archive/p/serato-itch-sync/
  
See also the [DJCU workflow from ATGR](https://www.youtube.com/watch?v=d4QO6xxGovQ).
 
## Do you use mp3 file metadata?

I do not use metadata, not even the "genre" field. This is because my collection is [too broad](#How-large-is-your-collection-How-broad-is-your-collection) for me to depend on it.

Instead, I generate the fields automatically from the filename + folder. That is my granularity - which is also independent of any DJ software. In this process I ensure that all filenames are normalized to a clean format (ARTIST - TITLE - REMIX), and store them in [hierarchical folders](#why-i-manage-music-using-os-folders-only)

Then I run two automated tools:
* [mp3tag scripts](https://github.com/pestrela/music/blob/master/traktor/tools_traktor/Mp3tagSettings.zip) that clean-up the filename and generate metadata
* [python script](https://github.com/pestrela/music/blob/master/traktor/tools_traktor/traktor_clone_cues.py) that duplicate the cues of the duplicated files 

## About traktor_clone_cues.py

This script automatically syncs the cues/loops between duplicated files. 
This is the basis of my organization method that [uses OS folders only](#os-folders). No DJ playlists at all.

Download: [traktor_clone_cues.py](https://github.com/pestrela/music/blob/master/traktor/tools_traktor/traktor_clone_cues.py)

This tool was inspired by these two tools by [Kalo](https://www.native-instruments.com/forum/members/kalo.266077/)

* [TraCoMerger](https://www.native-instruments.com/forum/threads/tracomerger-combine-traktor-collections-transfer-metadata-between-tdj-and-traktor-pro.258738/) 
    * Combine Traktor collections, Transfer metadata between TDJ and Traktor Pro
* [TraCoConverter](https://www.native-instruments.com/forum/threads/tracoconverter-convert-traktor-metadata-cues-grid-into-txt-csv-xls-dj-player-pro.259384/)
    * Convert Traktor metadata (cue's, grid..) into TXT, CSV, XLS, DJ Player Pro



## How do you achieve independence from DJ software

Independence from DJ software is something that I value. This is in stark contrast with, say, the RB6 encrypted database.

I achieve this as follows:
* DJ Playlists: my OS folders are my playlists. This is trivial to backup and its the most durable method I ever seen.
* CUEs/LOOPs: I have my cues stored in traktor, which writes this info to the files themselves. This is very durable and really convenient. 
The database is also very open and very simple to process - its an XML text file.
* Star rating: I do not use this feature

See the above blog posts for more details on these organization methods.


