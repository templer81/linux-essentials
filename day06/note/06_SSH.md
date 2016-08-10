# 06 SSH

## SSH

**Remote login**

``` shell
$ ssh david@10.0.0.217
```

**Upload and download**

``` shell
$ scp file david@10.0.0.217:~/Desktop/  # copy file to server
$ scp david@10.0.0.217:~/Desktop/file ./  # copy file from server
$ scp -r dir david@10.0.0.217:~/Desktop/  # copy directory, use -r option
```

## Thinking in bash

> Bash is a shell, shell is a program

