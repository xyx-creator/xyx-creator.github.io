---
# This is your new homepage: /index.md
layout: splash
permalink: /
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /assets/images/background.jpg
  actions:
    - label: "View My Research"
      url: "/research/"
    - label: "View My Projects"
      url: "/projects/"
    - label: "View My Work Experience"
      url: "/work/"
excerpt: "Welcome! I am a Master's student at UC Santa Barbara focusing on Vision-Language Models, advised by [Peng Li](https://web.ece.ucsb.edu/~lip/). I graduated with First Class Honours from the University of Leeds & Southwest Jiaotong University joint B.S. program."
---

## Selected Projects

<div class="feature-row">
  {% for project in site.projects limit:3 %}
    <div class="feature-item">
      <h3><a href="{{ project.url }}">{{ project.title }}</a></h3>
      <p>{{ project.excerpt | strip_html | truncate: 120 }}</p>
    </div>
  {% endfor %}
</div>

[View All Projects](/projects/){: .btn .btn--outline-primary}

## Recent Research

<div class="feature-row">
  {% for paper in site.research limit:2 %}
    <div class="feature-item">
      <h3><a href="{{ paper.url }}">{{ paper.title }}</a></h3>
      <p>{{ paper.excerpt | strip_html | truncate: 120 }}</p>
    </div>
  {% endfor %}
</div>

[View All Research](/research/){: .btn .btn--outline-primary}
