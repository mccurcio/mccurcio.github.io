---
title: "Embedding PDFs in Jekyll"
tags: PDF 
---


How to Embed a PDF in Jekyll

1. `[download pdf](https://belovanna.github.io/assets/mydoc.pdf)`

2. `<embed src="https://username.github.io/mydoc.pdf" type="application/pdf"/>`

3.  [Iframe MDN docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe) This looks **cool!**

```
<div class="pdf-container">
    <iframe src="{{ site.baseurl }}/assets/pdf/new.pdf" height="315" width="560" allowfullscreen="" loading="lazy>
    </iframe>
</div>
```

- NOTE: To change border, color, etc. of Iframe use:

```css
- iframe {
    border: 1px solid black;
    width: 100%;
}

.output {
    background: #eee;
}
```

<hr>
Example:

<div class="pdf-container">
    <iframe src="{{ site.baseurl }}/assets/docs/NeuralNetworkThatComputesSquareRoot.pdf" height="315" width="560" allowfullscreen="">
    </iframe>
</div>
