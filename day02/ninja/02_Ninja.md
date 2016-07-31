# 02 Ninja

> Ninja: replace_with_your_name

[TOC]

## Practice

> Resources files have been included in src directory

``` shell
src/
├── data
│   ├── NC-EST2015-AGESEX-RES.csv
│   └── grades.csv
└── drama
    └── midsummer_nights_dream.html

2 directories, 3 files
```

### Echo and redirect

> 1. Use `echo` and redirect `>` or `>>` to create a file which contains the following content
> 2. Use `cat` to check if the result is correct

``` shell
Hello World
The quick brown fox jumps over the lazy dog
A journey of a thousand miles begins with a single step
```

``` shell
# paste your command and output here
```

### Midsummer nights dream

> Everything can be regarded as data
>
> The play script has been stored in `linux-essentials/day02/` directory with suffix `.html`, if you don't see it, use `find` to find it.
>
> After you find the file, use `grep` to find:
>
> * Line numbers of the character `QUINCE`'s dialog.
> * (Hint: use option `-n` to display line numbers)

``` shell
# paste your command and output here
```

### Look into the data

> [Population estimates of America](http://www.census.gov/popest/data/datasets.html) data has been put into `linux-essentials/day02/src/data/`, file name `NC-EST2015-AGESEX-RES.csv`. Let's look into the data:

``` shell
# How many lines in this file?
# Your answer:
# Which fields (headers) are presented in this data file?
# Your answer:
# How many types of SEX do you see in the data?
# Your answer:
# How many lines of SEX=2 in the data? (Hint: use grep with pattern: ^2, )
# Your answer:
# What's the POPESTIMATE2015 value of AGE=25 for different SEX? (Hint: think about the pattern before grep)
# Your answers:
```

``` shell
# paste your command and output here.
# if the output is too long, don't paste all, use ... ... instead.
```

## Challenge

### Find the difference

> In this section, you are going to learn a new command `diff` which will help you to find the difference between files. Like `cp`, use `diff` is easy:

``` shell
$ diff file1 file2 # compare difference between file1 and file2
```

**Example**

``` shell
$ cat fruits1 # what inside file fruits1
apple
banana
peach
$ cat fruits2 # what inside file fruits2
appppple
banana
blueberry
peachd
$ diff fruits1 fruits2 # find difference between fruits1 and fruits2
1c1 # there is difference between 1 line in first file, 1 line in second file
< apple # what in first file
---
> appppple # what in second file
3c3,4 # there is difference between 3 line in first file, 3-4 line in second file
< peach # what in first file
---
> blueberry # what in second file
> peachd
```

> Try to create two files like above and and use `diff` to find the difference
>
> Note: if `diff` output nothing, it means content of two files are the same.

**Test symbolic link**

> Remember the concept about symbolic link. Assume we have two symbolic links `a` and `b` point to the same file `1`. Either writing to `a` or `b` will result in modifying the same file.


> 1. Create a file contains only `hello` called `a`
> 2. Create a soft symbolic link file `b` linking to `a` use `ln -s`
> 3. Create a copy of `a` and name it as `c` use `cp`
> 4. Use `diff` to see if there is any difference between `a` and `b`
> 5. Use `diff` to see if there is any difference between `a` and `c`
> 6. Write `world to c` to `c` use `echo`
> 7. Use `diff` to see if there is any difference between `a` and `c`
> 8. Write `world to b` to `b` use `echo`
> 9. Use `diff` to see if there is any difference between `a` and `b`
> 10. Find something?

``` shell
# paste your command and output here
```

### Powerful Pipeline

> Use `history` , `grep` and `wc` to find out how many `cd` command you have used in history
>
> Only ONE SINGLE command line is enough

``` shell
# paste your command and output here
```