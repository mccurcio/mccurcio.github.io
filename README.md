## https://mccurcio.github.io


- This site uses the [Jekyll-Ruby](https://jekyllrb.com/) static site generator, and the theme in [Docsy-Jekyll](https://vsoch.github.io/docsy-jekyll/),  Thanks to [vsoch](https://github.com/vsoch).  

1. Save markdown posts: **YYYY-MM-DD-title.md**  TO **_posts** directory. 

2. Add YML-Frontmatter YML to page

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
 
3. Badges

For news posts, you are able to tag the post with a "warning" or "alert." 
Therefore you may put badges in the Frontmatter section.
  
4. Buttons with the tne message text

Here is a code basic example for buttons, where you may want to vary the `.btn-<tag>` to get different classes.

```html
<button class="btn btn-success">.btn-success</button>
<button class="btn btn-info">.btn-info</button>
<button class="btn btn-secondary">.btn-secondary</button>
<button class="btn btn-primary">.btn-primary</button>
<button class="btn btn-danger">.btn-danger</button>
<button class="btn btn-warning">.btn-warning</button>
```

5. Serve the site locally using **bash shell**:

```bash
bundle exec jekyll serve
# or
jekyll serve
```
