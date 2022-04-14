---
title: "Bash - Scripting"
tags: Bash
---


Run command on multiple files at once

20th December 2017 at 10:32pm

Run command on multiple files at once

Run a command on all files in a directory:

for FILE in $(ls *); do command $FILE; done

Warning: this assumes there are no spaces in the lines in your file. If they do # contain spaces, you need to add proper escaping using quotes.



