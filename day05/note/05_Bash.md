# 05 Bash

## Process And Thread

> Wiki: [Process](https://en.wikipedia.org/wiki/Process_(computing))

* A process is an instance of a computer program that is being executed.
* A process may be made up of multiple threads of execution that execute instructions concurrently.

**Example**

Run any command line (execute a program).

``` shell
$ ls .
Desktop  Documents  Downloads  examples.desktop  Music  Pictures  Public  Templates  Videos  Workspace
```

What just happened

1. Create a process, create a main thread and load program `ls`
2. Run program `ls`, which is output result according to the first argument `.`
3. Exit program (set return value) and terminate process

**Parent process**

Process is created from parent process, this is always the case except the root process `init`.

``` shell
$ ps -aux # inspect processes
$ top # process monitor
```

### Kill a process

Press `CTRL+c` to exit a hanging process.

``` shell
$ kill -9 <PID> # kill a process with PID
```

## Network

Identity in networks:

1. IP address: 172.0.0.1
2. hostname: david-VirtualBox
3. domain: www.baidu.com / DNS

### Network connection test

``` shell
$ ping www.baidu.com
$ ping 172.0.0.1
```

### Downloads

``` shell
$ wget <url>  # download file using an url
```

### Send HTTP request

``` shell
$ curl <url>
$ curl www.baidu.com
```

## Archive

Archive type:

1. zip
2. tar
3. 7z
4. rar

### Extract

``` shell
$ unzip filename.zip
$ unzip filename.zip -d path  # unzip a file to a path
```

``` shell
$ tar -zxvf filename.tar.gz  # extract a tar ball
```

### Compress

``` shell
$ zip zipfilename archive  # create zip file
```

``` shell
$ tar -zcvf xxx.tar.gz filelist  # create tar ball
```



