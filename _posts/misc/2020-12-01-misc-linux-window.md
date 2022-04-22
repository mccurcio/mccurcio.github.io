---
title: "Find Window Position in Linux"
tags: Linux Bash Window
---

<hr>
Find Window Position in Linux

In Bash, the `xwininfo` allows you to get a position of a window on screen.  This great when you want to set your terminal or program window in a specific place.


```
$ xwininfo: Please select the window about which you would like information by clicking the mouse in that window.

xwininfo: Window id: 0x120d008 "mcc"

  Absolute upper-left X:  954
  Absolute upper-left Y:  143
  Relative upper-left X:  3
  Relative upper-left Y:  27
  Width: 612
  Height: 743
  Depth: 24
  Visual: 0x104
  Visual Class: TrueColor
  Border width: 0
  Class: InputOutput
  Colormap: 0x1200005 (not installed)
  Bit Gravity State: NorthWestGravity
  Window Gravity State: NorthWestGravity
  Backing Store State: NotUseful
  Save Under State: no
  Map State: IsViewable
  Override Redirect State: no
  Corners:  +954+143  -34+143  -34-14  +954-14
  -geometry 612x743-31-11
```

## In Command line Use:

```
caja --no-desktop /home/mcc/ --geometry 612x743-31-11
```



