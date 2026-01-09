---
layout: single
title: About me
permalink: /about-me/
---
<div class="author__avatar">
{% assign author = site.author %}
<img src="{{author.avatar}}" alt="{{ author.name }}" itemprop="image" class="u-photo"/>
</div>

# Ismael Cesar

Hello! I'm Ismael Cesar and I'm a Phd. student at Federal University of Pernambuco (UFPE, acronym in Portuguese).
My current research interest are

- Quantum Computing 
- Machine learning 
- Artificial Intelligence

Where can you find me: 

<div style="display: flex; flex-direction: row; justify-content: space-evenly;">
    {% for link in author.links %}
        {% if link.label and link.url %}
            <a href="{{link.url}}" style="display: block;"><span class="{{link.icon}}"></span> <span>{{ link.label }}</span></a>
        {% endif %}
    {% endfor %}
</div>

