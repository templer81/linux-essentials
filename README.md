# Linux Essentials

[TOC]

## Schedule

1. 2-hours class for each day
2. Practice + challenge after each class

| Day  | 内容                                       | 描述                                       |
| :--: | :--------------------------------------- | :--------------------------------------- |
|  1   | Unix/Linux概况\|目录结构与路径\|Command Line\|文件操作\|Super User | pwd, cd, ls, —help, mkdir, touch, cp, mv, rm, time, calendar, uname, sudo passwd |
|  2   | 标准输入输出\|文件操作\|Wild Cards\|管道与重定向\|UGO 权限\|Symbol Link | echo, cat, more, less, head, tail, wc, grep, find, diff, pipeline & redirect, ln, chmod, which, whereis |
|  3   | Kown your computer\|PKG Manager\|Git     | cat /proc/meminfo\|cpuinfo, free, df, apt-get, brew, git clone/branch/status/commit/push/pull |
|  4   | Process\|SSH\|Vim\|Markdown\|Typora      | ps, top, ssh, scp, wget, vim, markdown, typora |
|  5   | How bash works\|Env Var\|.vimrc\|Advance Vim\|Advance Git | env, source, .vimrc, auto reformat, find, replace, gitignore, git alias |
|  6   | Signal\|Kill\|Archive\|crontab\|What a program does? | kill, tar, zip, unzip, crontab, nohup, screen, shutdown |
|  7   | Network\|HTTP Request\|Encoding          | ifconfig, ping, curl, /etc/hosts, ASCII, unicode |
|  8   | Shell script                             |                                          |
|  9   | Shell script                             |                                          |
|  10  | Practice and test your skills            |                                          |
|      | What's next?                             | Invitation Talk                          |

## Getting Started

### Fork and clone

**On this page**

Click `Fork`, you will create your own fork of this repositorty. Then click `Clone or Download` copy the link on the popup.

**On your terminal**

``` shell
$ git clone git@github.com:<Your user name>/linux-essentials.git
```

This will clone files into your local computer.

### Update from upstream

``` shell
$ git remote add upstream git@github.com:ShadowTechnology/linux-essentials.git # add upstream
$ git fetch upstream # fetch all branches on upstream
$ git checkout master
$ git merge upstream/master
```

> Reference
>
>  [StackOverflow: How do I update a GitHub forked repository?](http://stackoverflow.com/questions/7244321/how-do-i-update-a-github-forked-repository)

## Contributers

* ShadowWalker
* Young

