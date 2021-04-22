---
layout: post
title:  "Just Enough: Principal Component Analysis"
date:   2021-04-02 12:19:42 -0400
categories: ml pca tutorial
---

Principal Component Analysis(PCA) is a popular unsupervised form of machine learning to run for feature reduction. PCA is a transformative process that orders and maximizes the variances of each feature found within a dataset.

##### Why use PCA?

1. Reduce the dimensionality of your data.
2. Decrease redundancy in the data.
3. Filter noise from the data.
4. Compress data.
5. Prepare the data for further analysis using other techniques.
6. Identify how different variables interact.

##### Advantages Of PCA Include.

1. PCA preserves the global structure among the data points.
2. It is efficiently applied to large data sets.
3. PCA provides information on the importance of features found in the original datasets.

##### Disadvantages Of PCA Should Be Considered.

1. PCA can easily suffer from complications due to scale.
2. PCA is susceptible to significant outliers. If the number of samples is small or when values have many potential outliers. This can influence scaling and relative point placement.
3. Intuitive understanding can be tricky. 

##### Data centering / scaling / normalization

1. Normalize your data
- PCA can be strongly affected by variables with different orders of magnitudes, therefore it is common to normalize all of a datasets features.
- This is important since PCA is sensitive to the scale of the features. If the feature variables are orders of magnitude different then normalizing is crucial. While determining your dataset's variance, it should be clear that the order of magnitude of your data features matters significantly. The reasons for this should be clear that if one axis is in 1,000's while the second axis is between 1 and 10, the larger scale will have a higher variance distorting the results.1 Emily Mankin, Principal Components Analysis: A How-To Manual for R, http://people.tamu.edu/~alawing/materials/ESSM689/pca.pdf1






























