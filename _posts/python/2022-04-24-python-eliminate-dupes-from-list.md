---
title: "Python - Eliminate Duplicates from a List"
tags: Python List
---

**Method 1 - `set` does not keep order**

```python
duplicate_list = [1, 2, 3, 5, 56, 78, 89, 1, 56, 4, 64, 2, 45, 3, 54, 1, 2]

cleaned_list = list(set(duplicate_list))
cleaned_list
```

[64, 1, 2, 3, 4, 5, 45, 78, 54, 56, 89]

<br>

**Method 2 - `dict.fromkeys` keeps order**

```python
method_2 = dict.fromkeys(duplicate_list)
method_2
```
    {1: None,
     2: None,
     3: None,
     5: None,
     56: None,
     78: None,
     89: None,
     4: None,
     64: None,
     45: None,
     54: None}

```python
cleaned_2 = list(dict.fromkeys(duplicate_list))
cleaned_2
```

[1, 2, 3, 5, 56, 78, 89, 4, 64, 45, 54]

- Method 2 maintains the order of the original list
