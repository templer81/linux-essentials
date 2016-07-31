# 02 File Operations And Permission System

> Author: ShadowWalker

[TOC]

## File And Format

**File**

* Binary
  * example: `.exe` `.bin` `.jpg`

* Plain Text
  * example:  `.txt` `.md` `.csv`

**format**

* File format defines how the text/data is stored
  * Order
  * Binary representation
  * ...
* Format is indicated by suffix

**Comma-Separated Values (CSV)**

* A table format
* Delimiter: `,`
* Each line have same number of columns

```
# This is a example of CSV file
id,name,math,chinese,english,science
1,Alice,99,100,,50
2,Bob,80,,90,61
3,Edward,99,88,75,100
4,David,87,92,88,84
```

> If the delimiter is Tab `\t`, then it's TSV

## Input/Output/Error/Return Value

**stdin/stdout/stderr**

![The standard streams for input, output, and error](https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Stdstreams-notitle.svg/535px-Stdstreams-notitle.svg.png)

> Wiki: [standard streams](https://en.wikipedia.org/wiki/Standard_streams)

**Return value**

Besides stdout/stderror, a program will always return a return value.

* A Integer number indicate the exist status of a program
* 0 is success, anything else is error
* Different number means different error code which is defined by the program

> If no error is output, then it is success

## `echo`

``` shell
$ echo "hello world"
hello world # stdout
$ ls
Desktop    Downloads         Music     Public     Videos
Documents  examples.desktop  Pictures  Templates  Workspace
$ echo $?
0 # return value of `ls`
$ ls notexist
ls: cannot access 'notexist': No such file or directory # stderr
$ echo $?
2 # return value of `ls notexist`
```

## File Operation

### Search file

**List files `ls`**

``` shell
$ ls -R . # list files Recursively
```

**Search binary file: `whereis/which`**

Usually use to locate the executable file

``` shell
$ whereis ls # find out the location of file called ls
$ which ls # find out the location of file called ls
```

**Search file name: `find`**

``` shell
# $ find location comparison-criteria search-term
$ find ./test -name "abc.txt" # find file named abc.txt in ./test dir
$ find ./test -name "*.txt" # find file end with .txt in ./test dir
$ find ./test -name "homework*" # find file begin with homework in ./test dir

$ find ./test -iname "*.Php" # ignore case
$ find ./test -maxdepth 2 -name "*.php" # limit maxdepth
$ find ./test -not -name "*.php" # not match
$ find ./test -type f -name "abc*" # limit type as file
```

> [35 Practical Examples of Linux Find Command](http://www.tecmint.com/35-practical-examples-of-linux-find-command/)

**Search file content: `grep`**

``` shell
# $ grep [option] pattern file
$ grep localhost /etc/hosts
$ grep -i The ./midsummer_nights_dreams.html
$ grep -n Robin ./midsummer_nights_dreams.html
$ grep -in3 Robin ./midsummer_nights_dreams.html
```

> [12 Practical Examples of Linux grep Command](http://www.tecmint.com/12-practical-examples-of-linux-grep-command/)

### Write file

Redirect output to a file

``` shell
$ echo "hello world" > hello.txt
$ ls > list.txt
```

### Read file

**cat**

Display the content of file

``` shell
$ cat midsummer_nights_dreams.html
```

**more/less**

Interactive scrolling file

``` shell
$ more midsummer_nights_dreams.html # old utility # exit: q
$ less midsummer_nights_dreams.html # less is more, and better # exit: q
```

**head/tail**

``` shell
$ head midsummer_nights_dreams.html
$ head -n15 midsummer_nights_dreams.html

$ tail midsummer_nights_dreams.html
$ tail -n15 midsummer_nights_dreams.html
$ tail -f test.txt # monitor tail of a file # exit: ctrl+c
```

### Other file operations

**Word count: `wc`**

``` shell
$ wc midsummer_nights_dreams.html # word count
```

**Symbolic link `ln`**

``` shell
# hard link
$ ln /path/to/file /path/to/symlink
# soft link
$ ln -s /path/to/file /path/to/symlink
```

> [ln 命令](http://www.cnblogs.com/peida/archive/2012/12/11/2812294.html)

**Inspect difference `diff`**

``` shell
$ diff file1 file2
```

## Pipeline And Redirection

**Pipeline**

Pipeline is useful to chain the input and output between different command line

``` shell
$ ls -t1 | head -n2
$ ls -t1 application.log.* | head -n1 | tail -f
```

* output of previous command will become the input of the following command

**Redirection**

``` shell
$ echo "apple" > fruits.txt
$ echo "orange" > fruits.txt
$ echo "pinapple" >> fruits.txt

$ ls -la . > list.txt
$ ls -la notexist > list.txt
$ ls -la notexist 2> list.txt
$ ls -la notexist &> list.txt

$ python add.py < values.txt
```

* `>` redirect output (overwrite)
* `>>` redirect output (append)
* `2>` redirect error
* `&>` redirect both error and output

``` shell
$ cmd &> /dev/null # garbage redirect
```

> [ABS](http://www.tldp.org/LDP/abs/html/io-redirection.html)

## Terminate program

When a program is running, you can interrupt it by press `CTRL+c`.

## Command History

**Command history: `history`**

``` shell
$ history
$ history | grep cd
$ !456 # command history number
```

**Clear Screen: `clear`**

``` shell
$ clear
```

## UGO Permission

**File permission**

``` shell
$ ls -l
total 48
drwxr-xr-x 2 david david 4096 Jun 16 00:05 Desktop
drwxr-xr-x 2 david david 4096 Jun 16 00:05 Documents
drwxr-xr-x 2 david david 4096 Jun 16 00:05 Downloads
-rw-r--r-- 1 david david 8980 Jun 15 23:55 examples.desktop
```

In linux, permissions are divided into three groups, user / group / other.

**Each group**

* r
  * read 4
* w
  * write 2
* x
  * execute 1

**Change permission: `chmod`**

``` shell
$ chmod 777 file.txt
$ chmod u+x file.txt
```

## Reference

## Q&A

**Manual page**

``` shell
$ man find # manual page for find command
# press q to quit
```

