### This Python code produces a randomly chosen word password of any given length.

- Linux Mint dictionaries are commonly placed `/usr/share/dict`. You may need to insert your own dictionary location.


```python
import random

words = open('/usr/share/dict/words').read().split()
"-".join([random.choice(words) for _ in range(3)])
```




    'Websters-conducting-attitudinizes'



### I insert random numbers between the words.


```python

```
