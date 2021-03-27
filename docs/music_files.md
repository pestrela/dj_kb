



## How to listen to MixCloud sets without going nuts

Mixcloud is the biggest online free site to listen sets as it is [100% legal](https://www.digitaldjtips.com/2020/04/how-to-stream-your-dj-sets-100-legally-on-mixcloud-live/)

However it is also the most annoying way to listen:
* no rewind
* forward movement is exponential
* cant see the tracklist in advance
* cant close the playing window at will

Solutions:
* Install the "mixcloud with tracklist" chrome extension [link](https://chrome.google.com/webstore/detail/mixcloud-with-tracklist/jgghogcekaldifaiifpnbfnpmmpiengb)
  * make sure you are logged-in
  * The tracklist lets you rewind
  * The small icon copies the tracklist to the clipboard
* Install a programabble chrome extension, drop in a 10-line script, limit it to the site 
  * [tamper monkey](https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo) plugin
  * [popup block script](https://greasyfork.org/en/scripts/25650-disable-confirmation-dialog-when-leaving-a-web-page/code)
  * replace [@match](https://stackoverflow.com/a/6387417) with: // @match   *://*.mixcloud.com/*
* Regain your sanity

  
  
## How I recorded my old radio show recordings and found the IDs

I had old K7s mixtapes from around 1996 from local radio shows that I really liked. 
These shows have significantly shaped my electronic music tastes. 
Recently I've took the time to preserve these relics, and find the IDs for the tracks that I've been looking for 22 years. 

The steps were:
* I've first recorded all my 15 cassettes in a single go. 
* Then added the cues in adobe audition. 
* Then split it by mix sessions. Sometimes it were just isolated tracks, sometimes it was a sequence of 10 tracks. 
* Then I've combined these into packs of 2 hours each. The first pack is now online: https://www.mixcloud.com/Dj_Estrela_House/radio-cidade-superpista-1997-recordings/ 
* Them made the known tracklist and exact timestamps using a CUE file

Regrading the IDs:
* I've first extracted JUST the IDs into yet another pack. 
* This was uploaded to mixcloud:   https://www.mixcloud.com/Dj_Estrela_House/superpista-ids-1997-recordings-full-versions/
* Benefits:
  * its much easier to show to knowledgeable DJs in a single go
  * mixcloud is able to identify some tracks for you
 
 
see also this forum post on [reducing the hiss of K7](http://www.oldskoolanthemz.com/forum/showthread.php?t=68960).
 
## How I edited my videos showing the Traktor screen 

On my latest demo videos I show both the controller and the traktor screen simultaneously. It looks pretty cool.
To get the basic idea, see this DJ tech tools article: https://djtechtools.com/2012/06/24/how-to-make-a-great-dj-video/
This is another one: https://www.digitaldjtips.com/2019/02/how-to-film-your-dj-mixes-using-your-phone/
This specifically covers [smartphone placement](https://www.digitaldjtips.com/2020/05/overhead-camera-for-djs/)

Concrete steps:

* Equipment
  * Smartphone
  * As much illumination as possible
  * Buy a microphone stand with a strong hold: [example](https://www.amazon.com/Adjustable-Microphone-Suspension-Broadcasting-Voice-Over/dp/B00DY1F2CS/)
  * Buy a smartphone flexible tripod:  [example](https://www.amazon.com/Universal-Octopus-Adjustable-Cellphone-Smartphone/dp/B06XRFC75Y/)

* Recording  
  * Put the smartphone as high as possible, and with the most illumination possible
  * Grab the stand to a Tall chair, or to another fixed desk
     * The crucial idea is that your scratching will not vibrate the smartphone
  * Record the controller image in 16:9 format
  * Record the laptop screen using [this free tool](https://www.freescreenrecording.com/)
  * If its a tutorial spoken video, record the audio from the smartphone. If its pure DJing record the audio in a third channel from the Traktor or the mixer output
    * Important: record all inputs **with sound**, even if only the Traktor recording will be the final. 
    * This will grealty simplify the tricky syncronization step
    
* Editing part 1: merge everything to a single video
  * Download the latest version of [openshot](https://www.openshot.org/download/). 
  Read this [tutorial for basics](https://www.howtoforge.com/tutorial/an-introduction-to-video-editing-in-openshot-2-0/). 
  [this is another tutorial](https://gist.github.com/peanutbutterandcrackers/f0f666243133e0ed25abbc12a4ba23d7) 
  * Use only 4:3 profiles so that you can fit the controller, the GUI, and a black banner at the very for your logo + Captions.
  * To significantly speedup processing, use lower resolution profiles:
    * Quickest editing: "QVGA 29.7 fps 320x240"
    * Quick editing: "768x568 4:3 PAL"
    * Export quality: "1024x768, 4:3 30fps"  
      * Create a new profile in your documents / .openshot / profiles folder, based on another 16:9 HQ profile)
  * Add the Controller video on Track 1. Zoom out (ctrl+Scroll). Click in the very first frame. 
  Use properties / Rotate to fix any rotation issues.
  On properties, set "crop X", "crop Y", "crop Height" and "Crop Width" to crop the controller to size.
  Use right click / transform to center and scale it to the half bottom of the screen.
  Use effects/Brightness to raise the light a bit. You can never get enough lighting.
  * If the controller moves around when playing, you did NOT clicked in the very first frame
    * another sign is that there is very small green dots in the timeline. These are called "keyframes" 
    * to fix this, RMB the changed properties, "remove keyframe", potentilly several times
    * then edit the properties ONLY on the first frame
  * Move the video to the middle of the timeline. Lock track 1 so that it no longer moves (track 1 / RMB / lock)
  * Add the Screen video to Track 2. Do the same steps as before to crop and scale / center the video on the top part of the screen
  * In VLC, sync the two videos by finding something unique (eg pressing play). Zoom in a lot. Get the HH:MM:SS values, and calculate the offset in seconds
  * In Openshot, manually align the videos using this info. Disable snap for precise alignment. Turn on volume in all tracks for this operation only. Confirm that the alignment is good in the end of the video as well
  * In the black bar above the GUI, add your logo and the title
    * add this to another track (shift+t)
  * In Powerpoint: Create some very big arrows in all 4 directions, set transparent color, generate individual PNGs from it
  * Move the arrows around to identify particular things in the GUI and the controller (other than your mouse)
  * Render the final video in high quality MP4
 
* Editing part 2: captions, cuts, effects, transitions, etc
  * Get windows essentials 2012 [archive link](https://www.tenforums.com/software-apps/104887-can-i-get-movie-maker-win10-again.html#post1304260); install only windows movie maker 2012.
  * To create separators: home / add / title; Then animations / wipe right / normal
  * To create captions: home / add / caption; then set length
  * to add additional arrows: add a caption with windings 3 font
  * change project to 4:3 format 
  * export again in high quality
 
 
 
Customized openshot shortcuts:
* ctrl+m: marker
* crtrl+up: center playhead
* J,L = fast forward
* -/= = zoom in/out
* ctrl+left/right: marker
* left/right = frame by frame
* shift+rleft/right: nudge
* space, up, down: pause


 
## How I synchronize and backup my whole Traktor music and configuration across laptops and a NAS

I have **all** my Traktor files synchronized between laptops. This includes [100Gb of music](#why-i-manage-music-using-os-folders-only)
 and all Traktor files.
 
I can use any laptop at any time, one at the time, and my whole collection is there fully analyzed. As my NAS is just another client, I get automatic RAID-0 backups as well.\
In a nutshell this is like having everything inside your own private google drive, without size limits.

My folder structure is:
* C:\Main - Contains all my private files
  * \Traktor - Whole folder synchronized by resilio sync
    * \.sync - Resilio private folder
    * \Generated
      * \Samples  - All samples go here
      * \Remix_sets - all remix sets go here
      * \Recordings - all recordings go here
    * \Root_dir  - All settings, stripes, etc go here
      * \Logs
      * \Stripes
      * etc
    * \Music  - all my music goes here. Organization is [by genres](#why-i-manage-music-using-os-folders-only)
      * \Genre_1
      * \Genre_2
      * etc
      
      
Steps on Laptop A:
* Install [resilio sync](https://www.resilio.com/individuals/)
* Create "C:\Main\Traktor\" folder
* Share the currently empty folder in resilio sync "C:\Main\Traktor" 
* Add the exceptions to the end of the ignore file: "C:\Main\Traktor\.sync\IgnoreList"
	* Traktor Settings.tsi - very important to have different controllers, audio devices etc
	* collection.nml  - optional, if want separate collections and write traktor data to mp3 files themselves
* Restart resilio sync - DO NOT SKIP THIS STEP
* Point your traktor root folder to "C:\Main\Traktor\Root_dir" (Settings / File / Directories / Root_dir)
* Restart traktor - DO NOT SKIP THIS STEP
* Do the same for samples, remix sets and recordings (Settings / File / Directories / Samples | Remix_sets)
* Move your files to "C:\Main\Traktor\Music"
* Do a Mass-relocate inside traktor for the new location ("consistency check")
* 

Steps on Laptop B:
* Install [resilio sync](https://www.resilio.com/individuals/)
* Create "C:\Main\Traktor\" folder
* Share that folder using the RW-key from laptop A
* Wait for sync
* Point your traktor root folder to "C:\Main\Traktor\Root_dir" (Settings / File / Directories / Root_dir)
* Restart traktor - DO NOT SKIP THIS STEP


**Warning:** do a manual backup first before changing your traktor files and music collection!
    
[more info #1](https://www.resilio.com/blog/sync-hacks-how-to-use-bittorrent-sync-for-djs-and-producers) / [more info #2](https://www.native-instruments.com/forum/threads/resilio-sync-synchronizing-traktor-libraries-across-computers.355599) / [more info #3](https://www.native-instruments.com/forum/threads/syncing-traktor-across-multiple-computers-with-resilio-sync.348405)
  
See also the [DJ Freshfluke’s Traktor tutorial](https://www.native-instruments.com/forum/attachments/tsp2_tutorial-01_sidebysideinstalls_ver1-0_web-pdf.46430)

  
## How to choose fast USB pens for CDJ use

Article:
<https://www.facebook.com/groups/822722507863937/permalink/1472101869592661/>

![ ](https://www.facebook.com/photo/?fbid=2209394642416610&set=pcb.1472101869592661)
![ ](https://www.facebook.com/photo/?fbid=2209394639083277&set=pcb.1472101869592661)
![ ](https://www.facebook.com/photo/?fbid=2209394652416609&set=pcb.1472101869592661)
![ ](https://www.facebook.com/photo/?fbid=2209394719083269&set=pcb.1472101869592661)



## Music files quality

TBD.
(spek, faking the funk, youtube-dl 251)




