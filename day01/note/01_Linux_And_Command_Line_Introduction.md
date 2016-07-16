# 01 Linux And Command Line Introduction

> Author: ShadowWalker

[TOC]

## Unix/Linux

**Evolution of Unix and Unix-like systems**

![Evolution of Unix and Unix-like systems](https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Unix_history-simple.svg/1280px-Unix_history-simple.svg.png)

**Designed to be**

* Portable
* Multi-tasking
* Multi-user

**High level architecture**

![Linux High level architecture](http://flylib.com/books/1/410/1/html/2/images/2.1.jpg)

* Linux kernel mediates access to the underlying hardware resources such as memory, the CPU via the scheduler, and peripherals.
* The shell (of which there are many different types) provides user access to the kernel. The shell provides command interpretation and the means to load user applications and execute them.
  * e.g. bash/zsh/sh
* Applications are shown that make up the bulk of the GNU/Linux operating system. These applications provide the useful functions for the operating system.
  * e.g. windowing systems (gnome), Web browsers, e-mail programs, language interpreters, and of course, programming and development tools.

> Wikipedia: [Unix](https://en.wikipedia.org/wiki/Unix) [Linux](https://en.wikipedia.org/wiki/Linux)

## Open Source Software

**Free or not free**

**OSS License**

> [Top Open Source Licenses](https://www.blackducksoftware.com/top-open-source-licenses)
>
> [Free Software Foundation](http://www.fsf.org/)
>
> [The Cathedral and the Bazaar](http://www.catb.org/esr/writings/cathedral-bazaar/cathedral-bazaar/)

## File System And Directory Structure

> Everything is file

### Overview

``` shell
# what's inside root '/' directory ?
/
├── bin
├── boot
├── cdrom
├── dev
├── etc
├── home
├── initrd.img -> boot/initrd.img-4.4.0-21-generic
├── lib
├── lib64
├── lost+found
├── media
├── mnt
├── opt
├── proc
├── root
├── run
├── sbin
├── snap
├── srv
├── sys
├── tmp
├── usr
├── var
└── vmlinuz -> boot/vmlinuz-4.4.0-21-generic

22 directories, 2 files
```

``` shell
# What's inside /home directory?
/home
└── david
    ├── Desktop
    ├── Documents
    ├── Downloads
    ├── examples.desktop
    ├── Music
    ├── Pictures
    ├── Public
    ├── Templates
    └── Videos

9 directories, 1 file
```

### First command line

``` shell
david@david-VirtualBox:~$ ls
```

* Prompt
  * user: david
  * hostname: david-VirtualBox
  * present working directory: ~ ( = /home/david)
  * prompt end: $
* Command line
  * command: `ls`
  * press `enter` to execute the command line

**Sample outputs**

``` shell
david@david-VirtualBox:~$ ls
Desktop    Downloads         Music     Public     Videos
Documents  examples.desktop  Pictures  Templates
david@david-VirtualBox:~$ ls -l
total 44
drwxr-xr-x 2 david david 4096 Jun 16 00:05 Desktop
drwxr-xr-x 2 david david 4096 Jun 16 00:05 Documents
drwxr-xr-x 2 david david 4096 Jun 16 00:05 Downloads
-rw-r--r-- 1 david david 8980 Jun 15 23:55 examples.desktop
# ... ...
david@david-VirtualBox:~$ ls -l /etc
total 1124
drwxr-xr-x  3 root root    4096 Apr 20 15:14 acpi
-rw-r--r--  1 root root    3028 Apr 20 15:08 adduser.conf
drwxr-xr-x  2 root root    4096 Jun 16 00:02 alternatives
-rw-r--r--  1 root root     401 Dec 28  2014 anacrontab
-rw-r--r--  1 root root     112 Jan 10  2014 apg.conf
# ... ...
```

* Arguments
  * option: `-l` (list details)
  * other: `/etc` (/etc directory, in this example)

**Questions**

* How do we know which options to use?
  * Try `ls -h` or `ls --help` to get help
  * More generally for any `cmd` use `cmd -h` or `cmd --help` to get help
* How do we know if `/etc` exist?
  * After input `ls -l /e` press `tab` to make auto completion
  * If there are multiple options, press `tab` to get a list of possible options

### Move around

``` shell
$ pwd # check present working directory
$ cd /etc # jump into /etc directory, try /, /home, /bin
$ cd # jump to default directory (user home directory)
```

**Directory**

* `/` root
* `/etc` etc directory from root
* `/home/david` david in `/home`
* `~` home directory for current user, equals to `/home/david`
* `.` current directory
* `..` parent directory

**Path**

> Path is a way to tell machine how to find the file
>
> How about find a directory? It's just a special file

* Absolute path
  * `/home/david/Desktop`
* Relative path (current on `~` or `/home/david`)
  * `../../etc`
  * `./Desktop`
  * `Desktop`

**Jumping around**

``` shell
$ pwd # current dir
/home/david
$ cd ../../etc # jump using relative path
$ pwd
/etc
$ ls
acpi                    hosts                    profile
adduser.conf            hosts.allow              profile.d
alternatives            hosts.deny               protocols
# ... ...
$ cd ~ # jump back to home of user, simply use $ cd
$ pwd # current dir
/home/david
$ ls
Desktop  Documents  Downloads  examples.desktop  Music  Pictures  Public  Templates  Videos
$ cd /etc/apt/apt.conf.d/ # jump using absolute path
$ pwd
/etc/apt/apt.conf.d
$ ls
00aptitude    01autoremove-kernels  15update-stamp   20dbus                 70debconf
# ... ...
```

### Make directories and files

**Build some directory**

``` shell
$ cd
$ mkdir Workspace
$ cd Workspace
$ mkdir study game photo
$ mkdir -p study/math/homework/hw1
$ ls -R # try ls --help to find out what -R option means!
.:
game  photo  study

./game:

./photo:

./study:
math

./study/math:
homework

./study/math/homework:
hw1

./study/math/homework/hw1:
```

**make some files**

``` shell
$ touch study/math/homework/hw1/david_10000.txt
$ ls -l study/math/homework/hw1
total 0
-rw-rw-r-- 1 david david 0 Jul  3 10:20 david_10000.txt
$ touch study/math/syllabus.txt
$ ls -l study/math
total 4
drwxrwxr-x 3 david david 4096 Jul  3 10:16 homework
-rw-rw-r-- 1 david david    0 Jul  3 10:23 syllabus.txt
```

**It's time to take a closer look at the output**

* Filetype, UGO rwx permissions
* Number of Links
* Owner user
* Owner group
* Size
* Last modified time
* File Name

### Move or rename files

``` shell
$ mv syllabus.txt draft.txt # rename syllabus.txt to draft.txt
$ mv syllabus.txt ../ # move syllabus.txt to ../ (parent dir)
```

### Copy files

``` shell
$ cp syllabus.txt ../ # copy syllabus.txt to ../
$ cp syllabus.txt ../template.txt # copy syllabus.txt as ../template.txt
$ cp -r math chinese # copy dir math as chinese
```

### Remove directories and files 

``` shell
$ rm syllabus.txt # remove sysllabus.txt
$ rm -r math # remove math directory, put -r option to remove dir recursively
# WARNING: The following line will cause disaster if not use properly
$ rm -rf *
```

### Matching files

Files can be matched using wild cards `*`.

``` shell
$ cp -r study/math/homework/hw* study/chinese/homework/ # all dir begin with hw
$ ls *.java # list all files end with .java
$ rm *.pyc # remove all files end with .pyc
```

## Thinking in INPUT and OUTPUT

When you interacting (use mouse, keyboard with GUI or CMD) with your computer. What you are actually doing is sending input and getting output from the computer. Compare to the real world, when you ask someone to buy lunch for you, it is normal to say

``` shell
Buy a roasted beef burger and a large size coke with ice in Burger King.
```

If you are going to ask a robot to do it, and there is no such things like Siri. What should you tell the robot? The same information as the above sentence, but in a robot understandable way. You probably will send the command

``` shell
$ buy "roasted beef burger" --where="Burger King"
$ buy "coke" --size="large" --ice --where="Burger King"
```

Then command or program `buy` will try to take your inputs and figure out how to execute the command line and buy what you want for you (If it is well implemented and smart enough, of course). In this case, what you typed is the inputs. And the results that it bought the food for you is the output.

Hope now you understand how to work with programs. Just thinking as you usually do and a bit more to make it machine understandable. Focus on the two questions:

* What do I need? (goal output)
* What sufficient information I need to give?

I put sufficient here because it really depends on how smart the programs. If it's capable of figure out where is the "Burger King" is, then it's probably fine to put just "Burger King". Otherwise, you may need to put something like

``` shell
--longitude=xx.xxxxx --latitude=xx.xxxxxx
```

Obviously no one would like it.

## Super User

Super user has full access to any resources on the machine and can execute any command without blocking by permissions.

* User name: root (not always, can be changed)

**Run a command as super user**

``` shell
$ sudo passwd # change password for super user access
```

**Shutdown**

``` shell
$ sudo shutdown now
```

## Github Usage



## Reference

* [Ryans Tutorials - Linux Tutorials](http://ryanstutorials.net/linuxtutorial/)
* [UNIX Tutorial for Beginners](http://www.ee.surrey.ac.uk/Teaching/Unix/)

## Q&A

