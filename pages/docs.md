---
layout: page
title: "Articles & Resources"
permalink: /docs/
---

## Matt's to Data Science Articles & Resources 

<div class="section-index">
    <hr class="panel-line">
    {% for post in site.docs  %}        
    <div class="entry">
    <a href="{{ post.url | prepend: site.baseurl }}">&#149; {{ post.title }}</a>
    <!-- <p>{{ post.description }}</p> -->
    </div>{% endfor %}
</div>
