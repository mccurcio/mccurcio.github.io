## https://mccircio.github.io

### 1 Adding posts/news pages
    
- To add pages, save to the **_posts** directory.  
- Prepend **yyyy-mm-dd** followed by your name/title.   
 
**2022-03-10-title.md**

### 2 Add YML-Frontmatter YML to page

```yml
---
title: "Title"
date: 2022-03-10 
categories: jekyll update
tags: pca logit
badges:
 - type: primary
   tag: primary-badge
---
```    
 
#### 3.4 Badges

For news posts, you are able to tag the post with a "warning" or "alert." 
Therefore you may put badges in the Frontmatter section.
  
#### 3.5 Buttons with the tne message text

Here is a code basic example for buttons, where you may want to vary the `.btn-<tag>` to get different classes.

```html
<button class="btn btn-success">.btn-success</button>
<button class="btn btn-info">.btn-info</button>
<button class="btn btn-secondary">.btn-secondary</button>
<button class="btn btn-primary">.btn-primary</button>
<button class="btn btn-danger">.btn-danger</button>
<button class="btn btn-warning">.btn-warning</button>
```

### 3. Serve your site locally

- Open **bash shell**:

```bash
bundle exec jekyll serve
# or
jekyll serve
```
