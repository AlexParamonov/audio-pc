audio-pc
========

Audiophile scripts collection I use on audio-pc

Foreword
--------

I am using audiophile windows 8 edition with all not audio and network
related services disabled.

I've build a computer for a JPlay software requirements: Corei7 and
16G RAM. But that program did't met the expectations. I did't felt any
difference in comparation of JPlay and this scripts. Additionlly JPlay
blocks all pc action in hibernate mode, so one more computer is needed
to comfortable use it. And that is too much!

As a result there are ~14Gb spare RAM. I am thinking about using it
for a RAM drive and automatically load albums in it. This will allow
to disable network service till a switch to other album. But this
should be automated for comfortable usage.

Warning
-------

Current version is tightly coupled with software i am using. You will
need to edit .bat files for your needs before usage.

And *if you find better way of optimizing PC, create and issue there
or send me a pull request!*

Installation
------------

1. [Download code](https://github.com/AlexParamonov/audio-pc/archive/master.zip)
1. Unzip it into C:\audio-pc.
1. Open optimize.bat with notepad and edit it.
1. Put a link to startup_user.bat into current user autoload directory
  for Windows 8 it will be here: C:\Users\YouUserName\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup.
1. Schedule startup.bat to be loaded on user login (it should be run with admin rights):
  Win+R -> gpedit.msc -> User Configuration -> Windows Settings -> Scripts -> Logon -> Add -> C:\audio-pc\startup.bat -> OK -> OK
  I'll appreciate if someone could automate this :)
1. Put a shortcut to your favorive player to C:\audio-pc\player.lnk
1. Reboot.
1. Wait around 1.5 minutes.
1. Enjoy music.
1. If not - update timings in startup.bat and startup_user.bat
