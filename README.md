## Docsy-Jekyll-ala-MC Theme


!
[https://raw.githubusercontent.com/vsoch/docsy-jekyll/master/assets/img/docsy-jekyll.png](https://raw.githubusercontent.com/vsoch/docsy-jekyll/master/assets/img/docsy-jekyll.png)


## Information for using docsy-jekyll-ala-mcc

### 1. Prerequisites,

[Jekyll](https://jekyllrb.com/) is a static site generator and despite Jekyll's many dependencies is easy to use. Basically, Jekyll takes [Markdown](https://www.markdownguide.org/) (.md) files and converts them to html.

**NOTE**: *You do not need to learn Ruby or Jekyll to manipulate this site.*

1. You need a [Github Account](https://github.com/)
2. Install [Ruby, including all development headers](https://jekyllrb.com/docs/installation/#requirements) 
3. [RubyGems](https://rubygems.org/pages/download)
4. [GCC](https://gcc.gnu.org/install/)
5. [Make](https://www.gnu.org/software/make/)
6. All Followed by [Jekyll](https://jekyllrb.com/docs/) on to you local machine

### 2. Obtaining the code for this site

*As always, there are several ways to do this.*

1. Log into your GitHub account and click the green !['Use this template'](assests/green-button.png) button near the top-right on this page.

### 3. Customization

#### 3.1 _config.yml

Most of the changes to the _config.yml page are fairly straightforward, for example, 

- baseurl: "" # nothing if the path of your site is main
- url: "`https://<username>.github.io`"
- Required info  (First three Required)
    - repo: "`https://github.com/<username>/<repo-name>.io`"
    - github_user: "`<username>`"
    - github_repo: "`<repo-name>.io`" # See [GitHub Pages](https://pages.github.com/)
- Change folder names displayed on the top banner, based on the folders you want.

#### 3.2 Adding docs/blog-posts/news pages
    
- To add pages, save your content in a markdown file and save the file to the `pages`, `_posts` or `_docs` directory.  
- For a post, the filename should include the `yyyy-mm-dd` followed by your name/title.   
    
`2022-03-10-title.md`
  
#### 3.3 Add Frontmatter YML to top of page for example:
  
```yml
---
title: "Title"
date: 2022-03-10 
categories: jekyll update
tags: pca logit
badges:
 - type: primary
   tag: primary-badge
 - type: secondary
   tag: secondary-badge
 - type: info
   tag: info-badge
 - type: success
   tag: success-badge
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
    
#### 3.6 Tags

If you include tags on a page, by default they will link to the [tags page]({{ site.url }}{{ site.baseurl }}/tags) on the site. 
    
However, if you define a `tag_search_endpoint` url in your configuration file, by clicking the tag, the user will be taken to this page to search for it. As an example, we define the current search endpoint to be Ask Cyberinfrastructure, and page tags link to a search on it:

```yaml
tag_search_endpoint: https://ask.cyberinfrastructure.org/search?q=
tag_color: danger # danger, success, warning, primary, secondary, info
```

**NOTE**:
    
You can also choose a tag color! The tags appear at the top of the page,
as they do on this page. The tags should be defined like this in the front end
matter:

```yaml
tags: 
 - jekyll
 - github
```

They are appended to the first h1 block; therefore, your pages should generally have a header.
If you comment on this variable, each of your tags will link to their appropriate spot on the tags page linked above.
    
    
```yaml
#tag_search_endpoint: https://ask.cyberinfrastructure.org/search?q=
tag_color: primary # danger, success, warning, primary, info, secondary
```

    
    
### 4. Serve your site locally

Depending on how you installed jekyll, in the folder where you house your site open a bash shell run:

```bash
bundle exec jekyll serve
# or
jekyll serve
```

You can then open your browser to [http://localhost:4000](http://localhost:4000) to see the server running.

---
    
**NOTE:**

This repo contains a [starter template] for the Docsy-Jekyll-ala-MCC Theme, based on [Docsy Jekyll](https://github.com/vsoch/docsy-jekyll). 
This version is intended for native deployment on GitHub pages. Here you can find the original [Apache License](https://github.com/vsoch/docsy-jekyll/blob/master/LICENSE).

However, I re-wrote items to better understand the template and its steps.
