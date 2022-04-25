---
title: "Python - timeit"
tags: Python InProgress
---


<hr>
Measure the execution time of small bits of Python code

[timeit man page](https://docs.python.org/3.9/library/timeit.html)


```
import timeit
timeit.timeit('"-".join(str(n) for n in range(100))',
                  number=10000)
```
0.3412662749997253

---

def test():
    """Stupid test function"""
    lst = []
    for i in range(1000):
        lst.append(i)

if __name__ == '__main__':
    import timeit
    print(timeit.timeit("test()", setup="from __main__ import test"))

    # For Python>=3.5 one can also write:
    print(timeit.timeit("test()", globals=locals()))

    - See also: [stackoverflow](https://stackoverflow.com/questions/1593019/is-there-any-simple-way-to-benchmark-python-script/1593034#comment52138351_1593034)