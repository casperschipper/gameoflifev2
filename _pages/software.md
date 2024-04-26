---
title: "Software"
---

For WFS content creation, the Game of Life developed our own software, called __WFSCollider__, which is __free to download__! ( [github](https://github.com/GameOfLife) ). It runs on all mayor platforms (Windows, MacOS, Linux). 

![screen shot 1](/img/wfs_screen_1.png)

It can be seen as a DAW for WFS Synthesis composition. Its features include:

* Graphical timeline, trajectory and position interfaces.
* Modular audio plugin system, which allows you to patch audio generators and processing together in chains (Unit-Lib).
* 1-click to add real-time control over any parameter through OSC/Midi.
* Open source and scripting/coding friendly: for example in place code modification of many parts of the system.

By default it starts in a preview mode, which allows you to preview your WFS piece in stereo, which you can than later import into the system. It also supports a multichannel preview.

## Installing WFS Software

**Installation on Windows, Mac Os and Linux:**

In the past, we had a WFSCollider app installer for MacOS, however, it is now
easier to run WFSCollider within a normal SuperCollider environment. There is a
Supercollider ‘Quark’ for the WFS library, which makes this relatively easy.

To run WFSCollider on any platform:

1. Install **SuperCollider**: <https://supercollider.github.io/>  

2. Install the **WFSCollider-Class-Library** Quark. Quarks are a package management system within Supercollider. There are two ways to do this:

 * Via menu: Open Supercollider, open the menu __Language__ > __Quarks__. Locate the 
 *WFSCollider-Class-Library* quark in the list and install by clicking the
\[+\] next to it. You may have to refresh the list first to see it. 

 * Via code; Open an empty window in SuperCollider (__File__ > __New__). In this window, type:
 
      `Quarks.install( "WFSCollider-Class-Library" );` 
       and then press SHIFT + ENTER to evaluate.

 Installing the WFSCollider-Class-Library will also install the dependency-quarks: Unit-Lib, wslib, NetLib, XML
 
  *Troubleshoot:* If you don’t see any quarks, but only an error on Windows and Mac OS, please check step 3 (installing git), restart SuperCollider and try again. If you still don't see the quarks on Mac OS it can help to locate the SuperCollider folder in ~/Library/Application Support (menu File -> Open user support directory), delete the "downloaded-quarks folder" and then try again. Also note that there should be a working internet connection during the Quarks intallation. 

3. *Optional:* if you do not have **git** installed, you will need to install this
   as well, since Git is required for installing Quarks within supercollider. You can verify if git is installed on your machine by opening a window in Terminal and typing ```which git``` in it followed by enter. If it gives you a path to the git binary that means git is installed, otherwise it will say 'git not found'. You can find the installation instructions for git here:
    <https://git-scm.com/downloads>

    Apple does not provide git by default, and their xcode tools are an enormous download, so by far the easiest way to install git on macOS to use a program called Homebrew:

    - Install homebrew, see <https://brew.sh/>
    - Install git (in Terminal): `brew install git`
        
4. *Optional:* Install **sc3plugins**: <http://supercollider.github.io/sc3-plugins/>  
This provides a .zip file, you can find instructions where to place the
files under the same link. WFSCollider can run without sc3plugins, but will be missing some minor features; in particular the *mda_piano*, *magSmooth* and *moogVCF* Udefs will be missing. You can also add sc3plugins later when needed.

5. Once the Quark is installed, click the “Recompile Class Library”
button or choose __Language__ > __Recompile Class Library__ from the menu bar.

6. In the main SuperCollider window, type:

	`WFSLib.startup;`  
  
	and hit SHIFT + ENTER keys to start.  
  
 On Linux and Windows machines it will take some time (a few minutes) to boot the 
 very first time to generate some optimized code (panners). Subsequent boots will be much
faster. 

If you use SuperCollider only for running WFSCollider it may be nice to have it starting up automatically. To do this, choose menu __File__ > __Open startup file__, write the line `WFSLib.startup;` in that file and save. The next time you startup SuperCollider the WFSLib will be started up immediately.

For future versions there is a "Check for updates" menu item in the WFSCollider menu,
please use this instead of the regular Quarks interface to ensure proper working.

**Tips on Windows machines:**

On Windows machines the performance may be sub-optimal. Generally it is advised to use a large hardwareBufferSize (1024 or more) and test various variants of your audio drivers (ASIO, MME, WDM etc.). These settings can be made in WFSCollider through the Preferences panel, found in the WFSCollider menu in a floating window after WFSLib has started up.
 
On my own Windows test machine, I found it to work with my ASIO
driver (using an RME Babyface interface), the default motherboard audio
did not work, but that has been a source of trouble with other programs
as well so it may be a quirk of that audio chip.  

**The full manual:**

[Working-with-WFSCollider-v2.2.4](/pdf/Working-with-WFSCollider-v2.2.4.pdf "pdf manual")

Please note that the current manual is quite old and doesn't fully cover all possibilities of WFSCollider. Please feel free to experiment around and try things out that you don't find in the manual.

**Some general tips when first starting:**

-   If you save your score in the same folder as the soundfiles, the paths will
    be stored relative, and you can just copy your whole folder to the big WFS
    WFSSoundFiles folder without requiring any changes to the paths.
-   You can splice events by clicking the vertical | symbol in the UScore
    window, this will splice the currently selected events at the location of
    the playbar.
-   There are undo/redo arrows in most windows <- ->.
-   Static point sources (the default) cannot change position while playing, use any "position filter" to turn
    the source into a dynamic panner.
-   There is a mixer in the score editor, that allows you to control
    levels of all events within your score all at once. You can find
    this mixer under View.
-   You can make folders of events, a folder will also have it’s own
    slider in the mixer.
-   Examples of using code and scores can be found here:
    <https://github.com/GameOfLife/WFSCollider-Class-Library/tree/master/Examples>

If you want to run WFS distributed over multiple computers, this is
easiest to achieve on Linux, since you will want to use PTP protocol to
synchronize your computer clocks (PTP is not available for Mac OS). You
will also want to use the Supernova version of the Supercollider server,
since this provides the necessary accuracy on the server.

You can reach us on casper@gameoflife.nl

![screen shot 2](/img/wfs_screen_2.png)
![screen shot 3](/img/wfs_screen_3.png)