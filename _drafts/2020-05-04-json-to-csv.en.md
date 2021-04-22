---
title: JSON to CSV
---


### Found this gem the other day. Convert JSON to flat CSV file.

```
import json, csv; 
_json=json.loads(open('data/example.json', 'r').read())
out=open('data/converted.csv', 'w')
[out.write(','.join([x[x.keys()[i]] for i in range(len(x))]) + '\n')  for x in _json]
```

- JSON (JavaScript Object Notation) is a lightweight data-interchange format. It is easy for humans to read and write. The code above creates a csv file from a json file.

```json.loads(open('data/example.json', 'r').read())``` Creates a json object from json file.
