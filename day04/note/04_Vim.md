# 04 Vim

[TOC]

## Command Line Editor

* Vim
* Emacs

**Install vim**

``` shell
$ sudo apt-get install vim
```

## Use Vim

### Open

``` shell
$ vim # simply open vim editor
$ vim filename # open filename with vim editor
```

### Three Modes

Vim is designed with three different mode

* normal mode (default)
* insert mode
* visual mode

Press key `i` to enter insert mode, press key `v` to enter visual mode. Press key `esc` to go back to normal mode.

### Exit

> In normal mode

``` shell
:q!  # force quit, don't save
:w   # write == save
:q   # quit
:wq  # write and quit
```

### Insert

> In insert mode
>
> Press `i` or `a` will let you entering insert mode. Now you can do any editing you want, just like you did in other editor software.
>
> Press `I` or `A` will let you entering insert mode, however, it also moves your cursor to the beginning or ending of the line, this makes editing super fast.

### Delete

> In normal mode

``` shell
x    # delete a charactor
dw   # delete word
d3w  # delete 3 words
dd   # delete line
d5d  # delete 5 lines, in addition 5dd works exactly the same way
d$   # delete to the end of current line
```

**Motion Count Direction**

Look the commands again, we could see how vim commands are designed. The pattern is

> Motion-Count-Direction

* motion: d
* count: optional, a number
* direction: w/d/$

### Undo & Redo

> In normal mode

``` shell
u  # undo last action
U  # fix the whole line
# press CTRL+r to redo
```

### Copy & Paste (Put)

> In normal mode

``` shell
yy  # copy current line
p   # paste (put) line, can also be used after delete
```

### Search

> In normal mode

``` shell
/<phrase>  # search phrase
n  # move to next match
N  # move to previous match
```

### Substitute

``` shell
:s/old/new/g       # substitute 'new' for 'old'

:#,#s/old/new/g    # where #,# are the line numbers of the range of lines where the substitution is to be done.

:%s/old/new/g      # to change every occurrence in the whole file.

:%s/old/new/gc     # to find every occurrence in the whole file, with a prompt whether to substitute or not.
```

## Advanced Vim

### Split screen

> In normal mode

``` shell
:vs filename  # vertical split another file
:hs filename  # horizontal split another file
# CTRL+h,j,k,l to switch between different screen
```

### Run external command

> In normal mode

``` shell
!<comand line>  # Run external command line and get back after finishing
```

## Config vim & `.vimrc`

> You can use others vimrc configuration to save your time and make vim more productive, refer to [amix/vimrc](https://github.com/amix/vimrc).

`.vimrc` is file which vim will seek every time you run `vim` command, it tells `vim` which configurations it should use.

**Example `~/.vimrc`**

``` shell
set number

set shiftwidth=4
set tabstop=4
```