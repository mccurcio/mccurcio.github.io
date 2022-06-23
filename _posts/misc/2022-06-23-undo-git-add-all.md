---
title:  "How To Undo a Git Add All"
tags: Git
---

*...BEFORE committing**

I use `git add *` a lot.   
Actually, I use `gita`, `gits`, `gitcm`, `gitp`, as they are my Bash Aliases.

*Next time*, when you `git add all` and 2 dozen files are inadvertently added. Try these:   

`git reset` - **Deducts ALL** the files you just staged

While

`git reset file_name.ext` **Deducts ONE** from the last staging.

*Jus' Remember* : The problem with using aliases is that they can become habitual. Not a bad thing, just something to watch for next time.
