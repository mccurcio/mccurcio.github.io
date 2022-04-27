---
title: "Embedding PDFs in Jekyll"
tags: PDF 
---


How to Embed a PDF in Jekyll

1. `[download pdf](https://belovanna.github.io/assets/mydoc.pdf)`

2. `<embed src="https://username.github.io/mydoc.pdf" type="application/pdf"/>`

3.  This looks cool!

```
<div class="pdf-container">
    <iframe src="{{ site.baseurl }}/assets/pdf/new.pdf" height="315" width="560" allowfullscreen="" frameborder="10">
    </iframe>
</div>
```

<hr>
Example:

<div class="pdf-container">
    <iframe src="{{ site.baseurl }}/assets/docs/NeuralNetworkThatComputesSquareRoot.pdf" height="315" width="560" allowfullscreen="" frameborder="10">
    </iframe>
</div>