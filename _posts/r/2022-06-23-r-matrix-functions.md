---
title: "R - Matrix Functions"
tags: R Matrix
---

| Function | Description |
| :--|:--|
| colSums ( X, na.rm = TRUE, dims = 1 ) | Sums Column Values |
| rowSums ( X, na.rm = FALSE, dims = 1 ) | Sums Row Values |
|!|>|
| colMeans ( X, na.rm = TRUE, dims = 1 ) | Mean of the Column Values |
| rowMeans ( X, na.rm = FALSE, dims = 1 ) | Mean of the Row Values |
| t ( matrix ) | **Transposes** a matrix |

---



**na.rm** = ( TRUE | FALSE ) # Should missing values (including ~NaN) be omitted from the calculations?

**dims** - integer: Which dimensions are regarded as ‘rows’ or ‘columns’ to sum over. For row, the sum or mean is over dimensions dims+1, ...; for col* it is over dimensions 1:dims.
