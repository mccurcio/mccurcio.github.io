---
title: "Embedding PDF in Jekyll"
date: 2022-04-19
tags: HTML 
---

### How to Embed a PDF in Jekyll

1. `[download pdf](https://belovanna.github.io/assets/mydoc.pdf)`

Or 

2. `<embed src="https://username.github.io/mydoc.pdf" type="application/pdf"/>`

3.  Check this one out first!!!

```
<div class="pdf-container">
    <iframe src="{{ site.baseurl }}/assets/pdf/new.pdf" height="315" width="560" allowfullscreen="" frameborder="10">
    </iframe>
</div>
```