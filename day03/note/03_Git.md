# 03 Git

## Computer Terminology

**Hardware**

* CPU
  * Central processing unit
* GPU
  * Graphic processing unit
* MEM
  * Memory
* HDD
  * Hard Drive Disk
  * SSD

**Software**

* git
* ssh
* vim

**Network**

* IP address
  * 170.0.0.1 (loop back address)
* local / localhost
* server / remote


## Check Computer Information

How do we know about our computer?

``` shell
$ cat /proc/meminfo # this file contains memory hardware information
$ cat /cpu/info # this file contains cpu hardware information

$ df -h # get storage information
$ free -h # get memory usage information
$ top # process monitor
$ ps # get current running process information
```

## Package Management

>  Package management system is like an App Store in Mac OS X

Ubuntu use `apt` to mange packages, including install, remove, search, etc …

Different system may use different package mangement tool, such as `yum` in Redhat linux or CentOS linux

``` shell
$ sudo apt-cache search keyword
$ sudo apt-get install git
$ sudo apt-get install tree vim
```

## Git

> Reference: [Git教程](http://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000)

### Basics

**Repository**

> A repository is a directory that initialized by git

``` shell
$ mkdir hellogit
$ cd hellogit
$ git init # init current directory as a repository
```

**Add new file**

``` shell
$ touch README.md
$ echo "I love git" > README.md # do something
$ git add README.md
$ git commit -m "first commit and add readme file" # commit with message
```

**Inspect repository**

``` shell
$ git status
$ git log
```

**Revert**

``` shell
$ git reset --hard HEAD^
$ git reset --soft HEAD^
```

**Branch**

``` shell
$ git branch # get branch information
$ git branch test # create new branch
$ git checkout test # switch to test branch
```

### Remote



### Git Ignore