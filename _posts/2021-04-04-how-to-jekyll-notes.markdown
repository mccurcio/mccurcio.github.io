---
layout: post
title: "How to Setup a Jekyll Website on Github.io"
date: 2021-04-04 12:00:00 -0400
categories: jekyll setup
---

I am using <a href="https://jekyllrb.com/" target="_blank" rel="noopener noreferrer">Jekyll</a> with <a href="https://pages.github.com/" target="_blank" rel="noopener noreferrer">Github Pages</a> for this site. Jekyll is a static site generator which uses <a href="https://www.ruby-lang.org/en/" target="_blank" rel="noopener noreferrer">ruby</a> and <a href="https://guides.github.com/features/mastering-markdown/" target="_blank" rel="noopener noreferrer">Git markdown</a> as its key components. Using Jekyll together with Github pages simplifies my work flow.


<a href="https://linuxmint.com/" target="_blank" rel="noopener noreferrer">Linux Mint</a>


- For this work, I found videos by <a href="https://www.youtube.com/channel/UCvmINlrza7JHB1zkIOuXEbw" target="_blank" rel="noopener noreferrer">Mike Dane</a> very helpful. I recommend his videos/youtube channel.

I currently use <a href="https://linuxmint.com/" target="_blank" rel="noopener noreferrer">Linux Mint</a> as my OS therefore this tutorial favors Ubuntu-flavored Linux. Below are the steps that I used to install/run my site.

1. At the command line, install ruby:
```
sudo apt update
sudo apt install ruby-full
```
2. Install Jekyll:
```
gem install bundler jekyll
```
3. Create a directory for site: 	
```
jekyll new directory-name
```
- This creates a new simple Jekyll directory/site using the *minima* theme.
4. Using `cd` change to your new `directory-name`.
5. Test your new Jekyll site.
```
bundle exec jekyll serve
```
- After running the command, you should see Jekyll run the `\_config.yml` file first followed by the build of the site into folder `\_site`.

![](../_posts/assets/mcc-jekyll-cli.png)

6. Find the localhost address on the *Server address* line of the build print out. **Copy the address** `http://127.0.0.1:4000/` and paste it into your browser.
- The local site should have an organized landing page. This is the Jekyll theme *minima*. This theme suits my spartan aesthetic for now.

7. Investigating the file directory we find:
 ```
_posts # Your content will go in here!
_site # Finished site, Do not change.
404.html
about.markdown # Change to suit your needs
_config.yml # IMPORTANT: Configuration file; change to suit your needs
Gemfile # Loads & stores dependency info
Gemfile.lock
index.markdown # Change to suit your needs
```
8. You are now free to update the `\_config.yml`, about-page and add posts to the `_posts` directory.

- The posts directory is for finished material. If you care to have draft material that will not be shown make a new directory named `drafts`.

9. After you have added posts/material all you need is the command:
```
jekyll exec
```
To update and review your local site.
10. After this point you may upload the site directory to your Github repo. See [Github Pages](https://pages.github.com/) for a brief overview.

**Congratulations, you did it.**

#### Additional Notes:
1. A YML header (front matter) is necessary to add to new posts or pages.

```
---
layout: post
title: About
date: 2017-08-20 15:58:58 -0700
categories: tag1 tag2
author: Matt Curcio
---
```
2. The *minima* theme has only two layouts a)page & b)post. One of these should be added otherwise the default is a page layout.
3. To add draft documents to your site move the .md file to the `_posts` directory **THEN append** the date onto your file.
    - 2017-08-20-post-name.md
    - Without the *YYYY-MM-DD* your document will not be presented.
