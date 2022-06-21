---
title: "R - pagebreak"
tags: R Pagebreak Newpage
---

Found this little thing-a-ma-jig.

It allows one to insert a pagebreak into the R code.

```
pagebreak <- function() {
  if(knitr::is_latex_output())
    return("\\newpage")
  else
    return('<div style="page-break-before: always;" />')
}
```

 
