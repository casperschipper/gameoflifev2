---
title: "Software"
---

For WFS content creation, the Game of Life developed our own software, called __WFSCollider__, which is __free to download__! ( [github](https://github.com/GameOfLife) ). It runs on all mayor platforms (Windows, MacOS, Linux). 

It can be seen as a DAW for WFS Synthesis composition. Its features include:

* Graphical timeline, trajectory and position interfaces.
* Modular audio plugin system, which allows you to patch audio generators and processing together in chains (Unit-Lib).
* 1-click to add real-time control over any parameter through OSC/Midi.
* Open source and scripting/coding friendly: for example in place code modification of many parts of the system.

By default it starts in a preview mode, which allows you to preview your WFS piece in stereo, which you can than later import into the system.

## Installing WFS Software

**Installation on Windows, Mac Os and Linux:**

In the past, we had a WFSCollider app installer for MacOS, however, it is now
easier to run WFSCollider within a normal SuperCollider environment. There is a
Supercollider ‘Quark’ for the WFS library, which makes this relatively easy.

To run WFSCollider on any platform:

1. Install supercollider: <https://supercollider.github.io/>  
2. Install sc3plugins: <http://supercollider.github.io/sc3-plugins/>  
(this provides a .zip file, you can find instructions where to place the
files under the same link)
3. Open supercollider, open the menu language |> Quarks. (Quarks are a
package management system within Supercollider.)  

Next, install the **WFSCollider-Class-Library** quark, by clicking the
\[+\] next to it.  
  
(This will also install the dependency-quarks:  
Xml, NetLib, PopupTreeMenu, Unit-Lib, VectorSpace, Xml, wslib, Mathlib)

If you don’t see any quarks: on Windows and Mac OS, it may be necessary
to install Git first, which you can fetch here:

<https://git-scm.com/downloads>

4\. Once the Quark is installed, click the “Recompile Class Library”
button.  
Next, in the main supercollider window, type:

`WFS.startup;`  
  
and hit SHIFT + ENTER keys to start.  
  
It will take some time (a few minutes) to boot the very first time to
generate some optimized code (panners). Subsequent boots will be much
faster. On my own Windows test machine, I found it to work with my ASIO
driver (using an RME Babyface interface), the default motherboard audio
did not work, but that has been a source of trouble with other programs
as well so it may be a quirk of that audio chip.  

**The full manual:**

[Working-with-WFSCollider-v2.2.4](https://gameoflife.nl/wp-content/uploads/2022/08/Working-with-WFSCollider-v2.2.4.pdf)<a
href="https://gameoflife.nl/wp-content/uploads/2022/08/Working-with-WFSCollider-v2.2.4.pdf"
class="wp-block-file__button" download="">Download</a>

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