---
title: "Bash - xargs"
tags: Bash InProgress
---

<hr>
xargs

1. delete all .txt files from a directory

```
find . -name "*.txt" | xargs rm
```

2. package all *.pl files in a directory:

```
find . -name "*.pl" | xargs tar -zcf pl.tar.gz
```

3. kill all processes that match "something":

```
ps -u `whoami` | awk '/something/{print $1}' | xargs kill
```

4. rename all *.txt as *.bak:

```
find . -name "*.txt" | sed "s/\.txt$//" | xargs -i echo mv {}.txt {}.bak | sh
```

5. run the same command for 100 times (in case of bootstraing, for example):


```
perl -e 'print "$_\n"for(1..100)' | xargs -i bsub echo bsub -o {}.out -e {}.err some_cmd | sh
```

6. submit all commands in a command file (one command per line):

```
cat my_cmds.sh | xargs -i echo bsub {} | sh
```

