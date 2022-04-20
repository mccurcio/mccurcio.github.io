---
layout: page
title: Documentation
permalink: /docs/
---

# Welcome to my Data Science article resources 

<div class="section-index">
    <hr class="panel-line">
    {% for post in site.docs  %}        
    <div class="entry">
    <a href="{{ post.url | prepend: site.baseurl }}">&#149; {{ post.title }}</a>
    <!-- <p>{{ post.description }}</p> -->
    </div>{% endfor %}
</div>
