---
---

Control ping in Alias
mcc29th November 2021 at 8:22pm

Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'



---
title:
tags:
---




Bash One-Liners
mcc29th November 2021 at 8:52pm
subtract a small file from a bigger file

grep -vf filesmall filebig
sort a bed file by chrom, position

sort -k1,1 -k2,2n file.bed > file.sort.bed
strip header

tail +2 file > file.noheader
find and replace over multiple files

perl -pi -w -e 's/255,165,0/255,69,0/g' *.wig
print line 83 from a file

sed -n '83p'
insert a header line

sed -i -e '1itrack name=test type=bedGraph' file.bed
grep \> file_name | wc -l
grep -c "^>"
With bash, you can use pattern substitution: for f in *.fasta ; do mv $f ${f/fasta/fa} ; done. It is more than twice faster than calling for sed (on a set of 1000 files).



--------------------

Change bash output to symbols
14th August 2018 at 2:04pm
Shows happy face or sad face depending on command completion

^b^ = 'happy, command worked',
O_O = 'sad, command did not work'
PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^b^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\u@\h:\w]\\$ "


--------------


dos2unix, sed, grep, cat
mcc29th November 2021 at 8:23pm

Removing return characters:

cat 1.txt | tr -d "\n" > 2.txt 
Match contents of one file in another:

grep -f 1.txt 2.txt > 3.txt
Removing matching lines from a file:

grep -v "match" 1.txt > 2.txt
Before any linux command line processing do this:

dos2unix 1.txt > 2.txt


---------------


du -k --max-depth=1
mcc29th November 2021 at 11:05am
#!/bin/sh

# du -k | sort -nr | awk ' # Can use this too.

du -k --max-depth=1 "$@" | sort -nr | awk '
     BEGIN {
        split("KB,MB,GB,TB", Units, ",");
     }
     {
        u = 1;
        while ($1 >= 1024) {
           $1 = $1 / 1024;
           u += 1
        }
        $1 = sprintf("%.1f %s", $1, Units[u]);
        print $0;
     }
    ' > du_sorted.txt


