
     

    


# Other topics
* [How to enable day skin in any software](#How-to-enable-day-skin-in-any-software)
* [How I recorded my old radio show recordings and found the IDs](#How-I-recorded-my-old-radio-show-recordings-and-found-the-IDs)
* [How I edited my videos showing the Traktor screen](#How-I-edited-my-videos-showing-the-Traktor-screen)
* [How I synchronize and backup my whole Traktor structure across laptops and a NAS](#how-i-synchronize-and-backup-my-whole-traktor-music-and-configuration-across-laptops-and-a-nas)
* [How to replace the DDJ-1000 filter knobs with Silver knobs](#How-to-replace-the-DDJ-1000-filter-knobs-with-Silver-knobs)
* [DJ Census over time results](#DJ-Census-over-time-results)
* [Some metrics of my free contributions](#Some-metrics-of-my-free-contributions)

* [People that I learned a lot from the Global DJ community](#Some-people-from-which-Ive-learned-a-lot-from-the-Global-DJ-community)

  
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



## How to fix DDJ-1000 loose jogs

this reserach was done by Jason Louis in the DDJ-1000 Users Facebook group.

video: https://www.youtube.com/watch?v=LnvZR3Kiuxs


LOOSE JOG WHEEL DISCOVERY 
READ BELOW....

It seems the part that is responsible for keeping the jog wheel in place is not the rollers at all. 

It’s a bracket that has two stationary barrels attached to it. The one in the back is for right to left movement and the one in the front is for front to back movement. 

If you have a jog wheel that is loose this is the part that has failed or has come defective from manufacturing. 

These barrels sit inside of a channel on the under side of the jog wheel top plate ( where your hand makes contact to scratch )

The way the barrels are held onto the bracket is they are pressed into the bracket and center-punched to mushroom the metal to lock it in place on the bottom. 

* When a jog wheel develops front to back movement the front barrel will be found to be loose and exhibit a wobble on the bracket. 

* When a jog wheel develops side to side movement the rear barrel will be found to be loose and exhibit a wobble on the bracket. 

If you are able to carefully center punch the shaft from the bottom of the bracket it is possible to re-secure the barrel.
Once the barrel is secured properly to the bracket your movement in your jog wheel will be eliminated. 

I’m trying to get a part number(s) in case anyone is tired of sending in their unit and it coming back not fixed. 

Honestly this is something that pioneer should have done a recall on as I’ve seen so many posts about it here and on forums and have spoke to SAM ASH and Guitar Center with both retailers aware and complaining about the issue. 

Pioneers stance is to keep quiet when all they had to do is replace this bracket that probably cost them 5.00 to have made. 

The labor for the repair is most likely why they are keeping quiet. It’s just unacceptable.

---------

This is the part that is causing all the problems.
I think it’s expensive for what it is but at least we have all the information we need.
Please share this entire post if this can help someone.

https://www.instrumentalparts.com/stay-assy-jog/

-------

Once you remove the back cover you will see many ribbon cables going to a main PCB. Once you remove all of those cables you will start to unscrew the Main PCB and lift out. After that you will need to take out the track load PCB the pad assy pcb and the loop pcb. once you remove those you can access the jog wheel screws. Note you will have to remove the track select knob , the tension adjust knob and the pitch slider cap to remove above boards before getting to the jog assy. unscrew 5 or 6 screw and remove jog assy and then you will see 2 tabs that can be pulled back gently and the jog wheel lifts up and off the unit. that's the easy part. keeping all the screws in order and where they go is something you should draw out somewhere or take pictures for the first time. ALSO make sure all the plastic buttons are seated properly when you put all the PCBs back so you don't have to reopen the device after you fully assemble it. Hope that helps

Understand how to remove the different ribbons cables, also there's a few wires that need to be placed back a certain way, if you keep good notes and have opened and worked around electronics before you can probably do it, but as I stated before... Unless you know what your doing and have some experience in working on electronics or computers I would have someone else do it.


----

it’s not easy and I would only recommend you attempt if your good with working on electronics.
You have to disassemble a lot of the controller just to get the jog wheel out.
Lots of ribbon cables and removing main and Aux PCB boards


![loose 1](https://raw.githubusercontent.com/pestrela/music/master/pic_sets/ddj_1000_loose_jogs/ddj-1000_loose_1.jpg?raw=true)!
![loose 1](https://raw.githubusercontent.com/pestrela/music/master/pic_sets/ddj_1000_loose_jogs/ddj-1000_loose_2.jpg?raw=true)!
![loose 1](https://raw.githubusercontent.com/pestrela/music/master/pic_sets/ddj_1000_loose_jogs/ddj-1000_loose_3.jpg?raw=true)!
![loose 1](https://raw.githubusercontent.com/pestrela/music/master/pic_sets/ddj_1000_loose_jogs/ddj-1000_loose_4.jpg?raw=true)!
![loose 1](https://raw.githubusercontent.com/pestrela/music/master/pic_sets/ddj_1000_loose_jogs/ddj-1000_loose_5.jpg?raw=true)!


  
## How to replace the DDJ-1000 filter knobs with Silver knobs

Both 1000 and 1000SRT have extremely [dull filter knobs](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs/DDJ-1000RB.jpg). Which is a pity.\
For now the best fit is [DAA1309](https://www.pacparts.com/part.cfm?part_no=DAA1309&mfg=Pioneer) from the DDJ-SZ or DJM-900. This is an almost perfect fit.

Folder with pictures of the knobs: [here](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs)

* [DAA1309](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs/DAA1309.png):
  * This has the best fit overall. The knob is slightly higher than desired.
  * [Part list](https://www.pacparts.com/part.cfm?part_no=DAA1309&mfg=Pioneer): \
    DJM-900NX2/2000NX1/750\
    DDJ-SZ/ DDJ-RZ/ DDJ-RZX
  
* [DAA1320/DAA1350](https://github.com/pestrela/music/tree/master//pic_sets/silver_knobs/DAA1320.jpg):
  * this was confirmed NOT to work
  * [parts list]((https://www.pacparts.com/part.cfm?part_no=DAA1320&mfg=Pioneer)): DJM-S9 / DJM-900SRT / XDJ-RX / XDJ-RX2

* [100-SX3-3009](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs/100-SX3-3009.jpg):
  * not tested
  * [part list](https://www.pacparts.com/part.cfm?part_no=100-SX3-3009&mfg=Pioneer): DDJ-RX
  
* [DAA1373](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs/DAA1373.jpg):
  * not tested
  * [parts list](https://www.pacparts.com/part.cfm?part_no=DAA1373&mfg=Pioneer): DJM750 MK2 / 250MK2 / 450 / S3
  
* [Rane 2015](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs/rane%202015%20filters.jpg):
  * this was confirmed to work [by another user](https://www.facebook.com/photo.php?fbid=3050933838255437&set=gm.672781936578130&type=3&theater&ifg=1)

  
## DJ Census over time results

Digital DJ Tips and DJ Tech Tools collect yearly data on the most popular software and controllers. 
Every year I update this page with the new data points over time. Source files are [here](https://github.com/pestrela/music/tree/master/census_graphs)

See also the [most popular DJ softwares census](https://github.com/pestrela/music/tree/master/census_graphs).\
See also the graph showing the [most popular DJ softwares over time](https://github.com/pestrela/music/tree/master/census_graphs).

![dj software over time](
https://raw.githubusercontent.com/pestrela/music/master/census_graphs/dj_software_over_time.jpg?raw=true
)
![dj controllers over time](https://raw.githubusercontent.com/pestrela/music/master/census_graphs/dj_controllers_over_time.jpg?raw=true)
![dj platforms over time](https://raw.githubusercontent.com/pestrela/music/master/census_graphs/dj_platform_over_time.jpg?raw=true)

## About Dj-Skins.com

I recommend you to change the look of your device and protect it against fingerprints by using a Skin from <http://dj-skins.com>.

It looks gorgeous!

Please see the full gallery [here](https://github.com/pestrela/music/blob/master/pic_sets/dj-skins.com).

Example:
![ ](https://github.com/pestrela/music/raw/master/pic_sets/dj-skins.com/1%20-%20dj-skins.com%20-%20ddj_1000%20and%20Akai%20AMX.jpg?raw=true)



## 21st century software issues

The 21th century has very clear trends where software cost go down every year.
The main factor of this is simplification and lower quality / minimum viable product, many times at the user burden. Some examples follow.

**Required Updates:**

To reduce cost, both [backwards and forward compatibility](https://www.rainforestqa.com/blog/2017-05-11-common-pitfalls-of-continuous-delivery-deployment-raciness) 
are dropped. Its far far simpler to the developer to just force the user to upgrade **all** components if just **one** them gets upgraded. 
Instead of checking what actually changed, and if the old/unchanged functions would just work fine with the previous version.\  
Typically the server gets updated first, then the client App needs to follow.

Some years ago changes and all protocols had compatibility in mind, so that the user could continue 
using the previous version as long as possible (except urgent security updates).


**Poor Documentation:**

Today apps are far far simpler to use for the **simple tasks**. That is great.

However, the **complex tasks** are being dumbed down by force, and worse, they are no longer documented structurally anymore.

The existing documentation all moved online and is searchable. That is reasonable, but typically there is no longer structured manuals that would explain the features of eg your new mobile phone, 
and every single configuration option.

Other examples are the dumbing down of laptops to approach tablets by force (Windows 8 comes to mind). A Tablet is great for content **consuming**, but a laptop is irreplaceable for content **producing**.\  
Specific examples are Function and insert keys being secondary, the loss of physical buttons like ESC in mac, short keyboards without insert/delete section like it was present on the [standard 102 keyboard](https://en.wikipedia.org/wiki/Model_M_keyboard)


**Subscriptions / Ownership:**

Every year there is fewer laptop users. The "buy once, use forever" model is no longer profitable to small and medium businesses that make unique software. 
The only solution was to ask money for [newer major versions](https://djtechtools.com/2018/10/18/traktor-pro-3-out-now-heres-whats-new/) of the software. Every year this gets more and more difficult.

The alternative is subscriptions that stop working if you stop paying.
Another worrying trend is companies lawyers that removed the notion of ownership, giving you an 
[authorization instead](https://www.wired.com/2015/04/dmca-ownership-john-deere/). 

Yet another worrying trend is hardware features that are [unlocked by software](https://electrek.co/2016/11/08/tesla-in-car-purchase-software-locked-features/). 
Back in the days, the price segmentation was clearly made because of hardware limitations: it was physically impossible to send more data / driver faster / etc.
Today, the hardware has gained massive leaps in specifications, but then they come lobotomized by default, and sold as a software upgrade.

## Knowledge base organization

I'm looking for a solution to organize [this knowledge base](https://github.com/pestrela/dj_kb/blob/main/README.md#table-of-contents-detailed) :)

Any help is welcome.

Requirements:
* Have everything in a single markdown page
* TOC 
  * Left sidebar always visible
  * auto generated
  * Expandable sections 
* All headers with link anchors  
* "git push" triggers pipeline 

Non-requirements:
* chronological blog posts
* separate files
* categories
* multiple users
* user comments

Candidates:
* readthedocs site itself
* [readthedocs template](https://www.mkdocs.org/user-guide/styling-your-docs/#readthedocs) for jekyll 
* [mkdocs](https://www.mkdocs.org/user-guide/styling-your-docs/#mkdocs), [runthedocs](https://rundocs.io/installing/gem-based.html), [justthedocs](https://pmarsceill.github.io/just-the-docs/docs/ui-components/buttons/)
* github wiki
* guthub pages (default template)
* minimal mistakes jekyll template
* mediawiki

   
   
  
## Some metrics of my free contributions

These are my biggest crontibutions.\
What did you enjoyed the most? please tell me to pedro.estrela@gmail.com

* Knowledge Base: 16K words 
  * <https://github.com/pestrela/dj_kb>
* DDJ-1000 mapping: 4.6K downloads
  * <https://maps.djtechtools.com/mappings/9279>
* DDJ-SX2/SZ/SRT mapping: 3.5K downloads 
  * <https://maps.djtechtools.com/mappings/9222>
* CMDR Changelog: 80 lines
  * <https://github.com/cmdr-editor/cmdr#2020-improvements>
  
 
 
 
## Open questions for 2021

Question #1:\  
What is the future of controleirism in 2021? 
Why do the new generation of DJs seem apparently satisfied with the current capabilities of Serato and Rekordbox "as-is"?

Question #2:\  
How could happen that Traktor/NI dropped the jogwheel in 2014 with the S8/remix decks, but in 2021 is still the ONLY major sofwtare without flexible beatgrids?

question #3:\  
What is your opinion of realtime STEMS seperaation of VDJ 2021 and Djay AI?


 
## Some people from which I've learned a lot from the Global DJ community

"AKA my DJ hall of fame".
![Hall Of Fame](pics/hall_of_fame.jpg)

When I started DJing in 2000 I've learned a lot from local DJs in Lisbon that I've meet regularly.\
The ones I worked the most were Rui Remix, Bruno Espadinha, Joao Vaz, Jaylion, Miguel Assumpcao and DJ Ice.

20 years later the Internet changed this locality a lot.

You can now learn anything from youtube tutorials, reading articles and have insightful conversations with people that you may never meet.

Below some of the people that I've learned the most. Apologies if I forget anyone.\
All of them made significant contributions either in articles, software or video tutorials. 
In the vast majority this is applicable to any DJ software.

Most of them I've either meet them in person, or I had numerous conversations with them over chat.

* **Ean Golden:**
  * Inventor of Controlerism, Founder of DJtechtools, Hundreds of articles, Workshops
  * <https://djtechtools.com/author/Admin/>
  * <https://djtechtools.com/2015/05/17/the-history-of-dj-techtools/>
  * [reddit answer](https://www.reddit.com/r/DJs/comments/j725jj/whatever_happened_to_ean_golden/g85gbne/?utm_source=reddit&utm_medium=web2x&context=3)
* **Phill Morse:**
  * Founder of DigitalDJTips (biggest online DJ school), Hundreds of articles
  * <https://www.digitaldjtips.com/category/news/>
* **Stevan Djumic:**
  * Dozens of very high quality Traktor mappings. Reverse engineering his mappings was a major turning point for me.
  * <https://my.djtechtools.com/users/3776>
* **Jeroen Groenendijk:**
  * Multiple workshops and generic techtalks
  * <https://www.facebook.com/pg/DJResource/videos/>
* **Mix Master G:**
  * Author of the DJCU converter. Dozens of videos about conversion and DJ collection management
  * <https://www.youtube.com/channel/UCMXHg5Oi8vlfKyEvsgrMRuQ/videos>
* **Christiaan Maaks:**
  * Author of the rekordcloud online converter. Lots of generic info applicable to all converters  
  * <https://rekord.cloud/wiki/>
* **Alex Coyle:**
  * Author of the open-source DJ converter. I worked with him over months to research the [26ms shift problem](#what-is-the-26ms-shift-issue-when-converting-cuesloops-between-softwares)
  * <https://github.com/digital-dj-tools/dj-data-converter/issues/3
* **DJ TLM:**
  * Dozens of tutorials on Scratching>
  * <https://www.youtube.com/user/djTLMtv/videos?view=0&sort=dd&flow=grid
* **Teo Tormo:**
  * Dozens of articles on advanced midi mapping and DJ hacking.
  * <https://djtechtools.com/author/teotormo/>
  
  
**Honorable mentions:**\
These individuals also made contributions that benefit a lot of users.\
Biggest difference to the group above is that I had much less interactions with them.

[Damien Sirkis](https://forums.next.audio/c/rekord-buddy/faq) (RekordBuddy), 
[Florian Bomers](https://www.bome.com/contributor/florian) (BOME), 
[Steven Caldwell](https://www.bome.com/contributor/steve1) (BOME),
[Michael Rahier](https://github.com/TakTraum/cmdr) (CMDR),
[Klaus Mogensen](https://www.youtube.com/channel/UCEphlcllAEbUwiuLqHMux9g/videos?view=0&sort=dd&flow=grid) (VirtualDJ),
[DJ Rachel](https://www.youtube.com/user/Serwrenity123/videos?view=0&sort=dd&flow=grid) (VirtualDJ),
[Carlo Atendido](https://www.youtube.com/user/djcarloatendido/videos?view=0&sort=dd&flow=grid) (Tutorials),
[Pulse](https://www.youtube.com/user/DeejayPulse/videos?view=0&sort=dd&flow=grid) (Rekordbox),
[DJ Keo](https://www.youtube.com/channel/UCtj1Z5UtHJtKX1c7zGWd18A/videos?view=0&sort=dd&flow=grid) (Industry Commentary),
[Mojaxx](https://www.youtube.com/user/MojaxxVDJ/videos) (Serato),
[Gábor Szántó](https://app.slack.com/client/T0ECEN4CW/C0ECETDEK) (DJ Player Pro),
[Friedemann Becker](https://github.com/pestrela/music/blob/master/pic_sets/traktor_interview/Interview%20with%20the%20lead%20Traktor%20programmer.pdf) (Traktor),
[Mike Henderson](https://online.berklee.edu/courses/learn-to-dj-with-traktor) (DJ Endo),
[Stephane Clavel](https://www.digitaldjtips.com/2018/08/interview-stephane-clavel-virtual-dj-founder-talks-innovation-the-future-of-djing/) (VirtualDJ),
[Jamie Hartley](https://wearecrossfader.co.uk/online-dj-courses/) (WeAreCrossfader),
[madZach](https://djtechtools.com/author/madzach/) (Production and DJing),
[DAVE](https://www.youtube.com/channel/UCe2doOsbbp-B2dN3jbJ4Uzg/playlists) (Tutorials),
[Sara Simms](https://ask.audio/author/sara-simms) (Reviews, Tutorials),
[Joe Easton](https://www.facebook.com/pages/category/Entrepreneur/Traktor-S4MK3-Screen-Mods-by-Joe-Easton-440250006776588/) (S4 MK3 Screen),
[Aleix Jiménez](https://www.native-instruments.com/forum/threads/supreme-edition-mod-traktor-s5-s8-d2-screen-mapping-mod.348539/) (S5/S8/D2 Screen + Mapping mod),
[Erik Minekus](https://github.com/ErikMinekus/traktor-kontrol-screens) (S5/S8/D2 Screen modifications),
[Kokernutz](https://github.com/kokernutz/traktor-kontrol-screens/) (S5/S8/D2 and S4 Mk3 Screen modifications), 
[Mark Settle](https://djworx.com/author/thatguy/) (DJ Worx founder),
[Ray Arkaei](https://djworx.com/the-xmg-dj-15-one-laptop-to-rule-them-all/) (XMG tuned DJ laptop),

