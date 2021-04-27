


  
# DJ Software optimization

This section covers DJ software optimization.

* [Optimization Quick fixes](#How-to-optimize-a-laptop-for-DJ-Software---Summary)
* [Optimization Complex case](#How-to-optimize-a-laptop-for-DJ-Software---Complex-case)
* [Audio Performance guides](#List-of-performance-guides-specific-to-audio)
* [DDJ-1000 and turbo boost](#how-to-avoid-crackle--glitches--noise-on-windows-by-disabling-intel-turbo-boost)
* [USB thin cables](#Read-this-if-you-have-erratic-USB-cable-problems)
* [SMI hidden interrupts](#How-to-count-SMI-hidden-interrupts-in-Windows)
* [Dell pre-installed services issues](#dell-laptop-pre-installed-services-latency-issues)
* [Deep trace analysis](#How-to-make-a-deep-trace-of-everything-that-runs-in-your-laptop)
* [Every possible optimization](#list-of-every-possible-performance-audio-optimization)
* [Traktor verbose log](#How-to-enable-Traktor-verbose-log)
* [Buying a laptop for Audio](#Buying-a-laptop-for-Audio)

## How to optimize a laptop for DJ Software - Summary
  
Every year laptops have more and more Power saving tricks.\
These tricks are *VERY* damaging for DJ software.\

For a demo of theses issues please see at 1:20 of https://www.youtube.com/watch?time_continue=85&v=ijFJZf_KSM8

Below some *quick fixes* to try first you have crackle / glitches / noise:

* a) *Continuous* crackle when playing:
  * Raise the driver buffer
* b) Crackle when when *moving the Jogs*:
  * Disable turbo boost ([steps](#how-to-avoid-crackle--glitches--noise-on-windows-by-disabling-intel-turbo-boost))
* c) *Random* crackle:
  * Disable wireless
  * Update the BIOS and all Drivers from your laptop manufacturer
  * Disable all power saving features (Turbo boost, Speedsteep, USB selective sleep, ...)
  
if not enough, then please read below  
  

## How to optimize a laptop for DJ Software - Complex case
  
If the quick fixes above were not enough then there is **no easy solution**. 

The way forward is complex:

* **Measure:** Measure the problems using [LatencyMon], [DPCLatency], [IDLT] and [SMI_reporter] to establish an objective baseline
* **Performance Guides:** Study performance guides that are specific to audio
* **Update log:** Study update logs to understand what changed when. This list can be quite big. 
* **Disable drivers:** disable the drivers one by one measuring in between 
* **Downgrade drivers:** as above, but downgrading components one by one while re-measuring 
* **Low-level Trace:** Generate a trace of the whole system using Windows Performance tools

Again: measurement is crucial to control every change to the system.
  
## How to avoid crackle / glitches / noise on Windows by disabling Intel turbo boost?

If you have an HP laptop and have crackle when move the jogs you have to disable Intel turbo boost.

There are 3 ways to disable turbo boost:

a) Specific program (best way): Use the "Quick CPU" software: <https://www.coderbag.com/product/quickcpu>
b) Set windows power to 99% CPU: [guide](https://forums.pioneerdj.com/hc/en-us/articles/360015455971-To-those-who-have-crackling-noise-when-using-DDJ-1000-with-rekordbox-dj)
c) BIOS config: <https://support.serato.com/hc/en-us/articles/203057850-PC-Optimization-Guide-for-Windows>

Macs have turbo boost, but are not affected. Anyway, the way to disable is [here](https://www.redmondpie.com/how-to-enable-or-disable-turbo-boost-on-mac/)

Official recommendation from Pioneer: <https://forums.pioneerdj.com/hc/en-us/articles/360015455971-To-those-who-have-crackling-noise-when-using-DDJ-1000-with-rekordbox-dj>


## List of every possible performance audio optimization

Things to try while measuring:

* **USB:** gauge USB cables; use usb 2.0 port;  
* **Windows Power options:** performance profile; change "turn X off after"; "turn off device"; wireless adaptor power saving; Fast Startup;
* **Windows Configs:** optimize to background processes; paging file; Spectre patches; Visual Effects; SuperFetch;
* **Battery:** windows best performance; plugged-in vs battery; Intel DPTF (power throttling); ACPI battery control;  
* **Device Manager:** "USB root hub" power management; 
* **Services:** TBD
* **Processes:** process affinity; process lasso; DEP
* **CPU:** Turbo boost; SpeedStep; SpeedShift; Core parking; Frequency scaling; UnderVolting; C states;
* **Sounds:** Realtk HD audio; Wavs Maxxaudio; disable onboard audio; No sounds profile; audio 3d enhancements;  
* **Wireless:** Wifi / Bluetooth; 
 
[maxxaudio-less driver](http://forum.notebookreview.com/threads/kevin-shroffs-modded-realtek-audio-drivers-for-dell-xps-15-9560-and-more.807060/)
 
Another list: [here](https://answers.microsoft.com/en-us/windows/forum/all/high-dpc-latency-from-acpisys-causing-audio-clicks/a7977dd5-6a52-4ee7-91bd-83180c21c1c2)

## List of performance guides specific to audio

* **Native Instruments:**
  * Guide: https://support.native-instruments.com/hc/en-us/articles/209571729-Windows-Tuning-Tips-for-Audio-Processing
  * Specific drivers to disable: https://support.native-instruments.com/hc/en-us/article_attachments/205621745/Driver_List_EN.pdf
* **Serato:**
  * Guide: https://support.serato.com/hc/en-us/articles/203057850-PC-Optimization-Guide-for-Windows
* **Ableton:**
  * https://help.ableton.com/hc/en-us/articles/209071469-Optimizing-Windows-for-Audio
* **Sweetwater:**
  * Guide: https://www.sweetwater.com/sweetcare/articles/pc-optimization-guide-for-windows-10/?fbclid=IwAR2z4UFZVRYLW2XpMGUgge51-UCe1ZhlF6gq2ZcR90HWEp33fI7TkMOJfO0
* **PCDJ:**
  * https://www.pcdj.com/dj-software-windows-10-system-optimization-guide/
* **Dell guide:**
  * https://www.dell.com/support/article/us/en/19/sln317113/xps-9570-resolving-intermittent-crackling-audio-issues?lang=en*   
   
   
Very old guides:

* **djtechtools:** 
  * https://djtechtools.com/2011/08/14/optimizing-windows-for-djing-part-i-power-script/
* **Numark:** 
  * https://www.numark.com/kb/article/1424

DDJ-1000 specific:
* **DDJ-1000:** 
  * https://forums.pioneerdj.com/hc/en-us/articles/360015455971-To-those-who-have-crackling-noise-when-using-DDJ-1000-with-rekordbox-dj
  
  
Finally, Cantabile software produced a 97 page pdf guide on audio optimization:
https://www.cantabilesoftware.com/glitchfree/
  
## Dell laptop pre-installed services latency issues

If you have a Dell laptop, **beware of the services that come preinstalled with the laptop**.

Specifically I've measured that "Dell SupportAssist" causes SECONDS of latency every 30 minutes, due to heavy [SMI interrupts](#How-to-count-SMI-hidden-interrupts-in-Windows)

The solution is simply to disable the Dell services in "services.msc"

**More details:** [smi_counter](https://github.com/pestrela/smi_counter)
 
![dell_support_assist3](https://github.com/pestrela/smi_counter/blob/master/dell_support_assist3.jpg?raw=true)




## How to count SMI (=hidden interrupts) in Windows

If your whole laptop stops once in a while for several seconds - including the mouse - it can be [SMI issues](https://www.resplendence.com/latencymon_cpustalls).

SMIs are "hidden interrupts" that the BIOS can issue at any time and will *lock all cores*.
As these are not visible to the OS, these will confuse latencyMon, but not [IDLT](https://www.resplendence.com/latencymon_idlt).

These interrupts are used, for example, when you change the laptop brightness. 
The CPU has a special counter for these interrupts. 

I've made a small tool to read this special counter in Windows: [count_smi tool](https://github.com/pestrela/smi_counter) 

Below a simple test that shows that changing the brightness in Dell XPS "costs" 4 SMIs:

![dell_smi_light_problems](https://github.com/pestrela/smi_counter/blob/master/pics/dell_smi_counter.jpg?raw=true )
                           

## How to make a deep trace of everything that runs in your laptop
   
TODO: document the windows performance analyser   
   
   
## Read this if you have erratic USB cable problems

USB cables may be too thin and not deliver enough power to your controller.\
Confirm your cable does NOT have these labels:

* 28/2C
* 28AWGX2C
* AWG 28X2C
 
In general you want the "2C" label to have "24" and not "28".

Even in the case your device is externally powered, a bad cable may still have data issues.

In this case use this info as an heuristic: a cheap cable that is poor for delivering power is also probably cheap on the data side.

More info:

* https://support.native-instruments.com/hc/en-us/articles/210293725-Choosing-the-Correct-USB-Cable-for-Your-NI-Hardware-Device
* https://goughlui.com/2014/10/01/usb-cable-resistance-why-your-phonetablet-might-be-charging-slow/


## How to enable Traktor verbose log

**important:** this will affect performance, so use only for manual tests!

log file: traktor_root\log\traktor.log
    
Windows:

*  TBD

MacOS:

*  close traktor
*  go to User:Library: Preferences:com.native-instruments.de:Traktor.plist
*  add key Log.Verbosity with value 5
*  default value: 2
      
## Buying a laptop for Audio

**Update Oct 2020:** I highly recommend you buy the XMG windows laptop 
[specially tuned and guaranteed by Ray Arkaei](https://djworx.com/the-xmg-dj-15-one-laptop-to-rule-them-all/).\  
<https://djworx.com/the-xmg-dj-15-one-laptop-to-rule-them-all/>


Personally I have the Dell XPS 15 9560, and went through hell and back to remove DPC latency there:
<https://github.com/pestrela/smi_counter#summary-slides>



See also dj Keo commentary:
<https://www.youtube.com/watch?v=IuY-uzTCWoA>

---

Are you going to buy a laptop? Be sure you can return it to the shop if you have any problems.

My advice if you are buying a Windows laptop is the following:
* Check latest guides to choose a laptop
  * Ensure that it has USB-A ports. No exceptions.
* Buy such model in a real shop where you can return it in 30 days **without any questions asked**
  * Enquire this question specifically!
* Measure DPC problems continuously - including overnight - for Latencymon, SMI_counter
* If you have any problems return the laptop, or follow my guides to fix the issues.
 
## reseting your low-level settings and controller of your MAC 

The system management controller (SMC) handles the following tasks of your mac:

* Responding to presses of the power button
* Responding to the display lid opening and closing on Mac notebooks
* Battery management
* Thermal management
* SMS (Sudden Motion Sensor)
* Ambient light sensing
* Keyboard backlighting
* Status indicator light (SIL) management
* Battery status indicator lights
* Selecting an external (instead of internal) video source for some iMac displays

if you have issues related to power, batteries, fans, etc, resting this can fix it.

* SMC reset: https://support.apple.com/en-gb/HT201295
* guide2: https://www.howtogeek.com/312086/how-and-when-to-reset-the-smc-on-your-mac/

NVRAM (nonvolatile random-access memory) and PRAM (Parameter RAM) are a small amount of 
memory that your Mac uses to store settings like sound volume, display resolution, 
startup-disk selection, time zone, and recent kernel panic information. 

If you need to reset these settings, follow this guide:

* PRAM reset: <https://support.apple.com/en-us/HT204063>

## Windows - 100% interrupt usage


Be sure to Disable Audio Enhancements, as explained in this article:
<https://blog.pcrisk.com/windows/12795-system-interrupts-causing-high-cpu-usage>

Same for Disable Wake on Magic Packet

## Windows settings vs Control panel

<https://www.techrepublic.com/article/control-panel-and-settings-uis-why-are-both-still-options-in-windows-10/>

Windows 10 Settings is used to customize windows behaviour.
Control panel is used to change deeper Hardware and configurations.
See also the registry tweakers apps.


Settings menu:

* System: Display, notifications, apps, and power options
* Devices: Bluetooth, printers, and mouse/keyboard
* Network & Internet: Manage Wi-Fi, Airplane Mode, and VPN
* Personalization: Change background images and colors
* Accounts: Settings for user accounts on this PC
* Time & language: Region, speech, and time options
* Ease of Access: Tools for the vision or hearing impaired
* Privacy: Control what your computer knows about you
* Update & Security: Backup, restore, or update Windows


Control panel:

* System and Security: Manage firewall, encryption, storage, and more
* User Accounts: Change system access permissions for users
* Network and Internet: Modify local network, internet, or sharing options
* Appearance and Personalization: Tweak screen resolution and fonts
* Hardware and Sound: Device Manager and system sounds menu
* Clock, Language, & Region: Add a second language or input method
* Programs: Manage desktop programs and default file handlers
* Ease of Access: Adjust visibility, audio options, and tooltips

Splitting these configs in two different places is confusing, however:

* <https://www.howtogeek.com/293858/windows-10s-settings-are-a-mess-and-microsoft-doesnt-seem-to-care/>
* <https://www.techrepublic.com/article/control-panel-and-settings-uis-why-are-both-still-options-in-windows-10/>

