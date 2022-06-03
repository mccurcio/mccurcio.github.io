---
Title: Using grep For Playing Wordle
Tags: Bash Grep Wordle
---



**Step #1**

- Limit the dictionary to only 5 letter words, then translate the words from lower case to upper case. This should reduce the number of words to less than 7000.

   - In **LINUX**, the English dictionary can be found at `/usr/share/dict/words`
   - If you are using another OS you will need to change this.

```bash
cd ~/Desktop/

grep ^.....$ /usr/share/dict/words | tr '[:lower:]' '[:upper:]' | grep -v \' | uniq | sort > 5letters

wc -l 5letters
```

**Step #2**
Place your word into Wordle

- For example, if the first word is ROAST and you find "O" is correct in the second position you may construct grep as follows:

```bash
grep .O... 5letters | grep -v R | grep -v A | grep -v S | grep -v T > post-roast
```

- You may also add information regarding the letter positions also.

```bash
grep -v R.... post-roast | grep -v ..A.. | grep -v ...S. | grep -v ....T > post-roast2
```

**Step #3**

Continue until you have one word.

Have Fun!


