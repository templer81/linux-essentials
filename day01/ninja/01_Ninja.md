# 01 Ninja

> Ninja: replace_with_your_name

[TOC]

## Practice

### Who are you

> Ninja, in this section, you are going to find out the ultimate life questions.
>
> * Who are you? (user name)
> * Where are you? (host name of the machine)
> * Which system are you in? (system information)
> * When is it now?
>
> To answer this questions, you are going to use the following command to help you.
>
> To paste output results, remember `CMD+C` or `CTRL+C` do not work in terminal, you have to right click and choose `copy`.

``` shell
$ whoami
# paste output here
$ hostname
# paste output here
$ uname
# paste output here
$ uname -a
# paste output here
$ cal
# paste output here
```

### Moving, jumping, flying

> As a ninja, you have to move very fast. In this section you are going to practice moving swiftly around directories, that is
>
> * Try to choose a good path that helps you move fast
> * Use `tab` trick for auto completion
>
> To move fast, certain commands can be useful: `cd\pwd\ls`
>
> Following are simple instructions to move around, but you are free to go anywhere
>
> 1. go to `/usr/local/lib/python2.7/dist-packages/`
> 2. check your location
> 3. go back to home `~`
> 4. check your location
> 5. go to `/etc/kernel/postinst.d/`
> 6. list details of the files in current location
> 7. jump anywhere you want to master the commands

``` shell
# paste your command and output, if output is to long, just put three lines and '# ... ...' behind
# for example
$ cd ../../etc
$ pwd
/etc
$ ls
acpi                    hosts                    profile
adduser.conf            hosts.allow              profile.d
alternatives            hosts.deny               protocols
# ... ...
```

``` shell
# paste your command and output here
```

### Building your backpacks

> Ninja, you are about to make your first travel, you need to put things in your backpacks. Remember, make things in order is always a good habit to keep.
>
> In this section, you are going to create directories that simulate the backpacks and categories and items. You want to create something has the same structure as the following directories.

``` shell
backpack/
├── backup_wallet
│   ├── cash
│   ├── credit_cards
│   └── id
├── lunchbox
│   ├── level1
│   │   └── fish_and_meat
│   ├── level2
│   │   └── rice
│   └── level3
│       └── soup
├── mainspace
│   ├── books
│   ├── iphone
│   ├── kindle
│   ├── plasticbag
│   │   └── cloth
│   └── umbrella
├── secretspace
│   ├── cash001
│   ├── cash002
│   ├── cash003
│   └── paperwarraper
│       └── million_check
└── wallet
    ├── cash
    ├── credit_cards
    └── id

10 directories, 18 files
```

> Be smart, try to use as minimum command lines as you can.

``` shell
# paste your command and output here
```

### Remove items

> There is no need to take the cashes in the secretspace since you already have backup wallet, so remove all the cashes in secretspace.
>
> Someone said he would like to treat you for lunch when you visit, so there is no need to take the heavy lunchbox with you. Remove the lunchbox from your backpack.

``` shell
# paste your command and output here
```

## Challenge

### Myth of hidden files

> In Linux kingdom, everything is file. However there are some files are not easy to be seen, there are called `hidden` files. It's a convention that hidden files are named begin with a dot `.`. Your task in this section is to find out all the hidden files in home `~` directory.
>
> There is a option for `ls` command to list all hidden files, find it out and use it for finding hidden files. (Tip: try `ls --help`)

``` shell
# paste your command and output here
```