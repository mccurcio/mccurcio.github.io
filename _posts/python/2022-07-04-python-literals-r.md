---
title: "Python - Literals & 'r'"
tags: Python
---

To avoid the interpretation of characters as special characters, the character, **r** , is added before the opening quote for the string as shown in the following example.

```python
print('C:\some\name') # here \n means newline!
```
C:\some  
ame


```python
print(r'C:\some\name') # note the r before the quote
```
C:\some\name

**OR**

```python
print('C:\\some\\name') #  '\' means use literally
```
C:\some\name