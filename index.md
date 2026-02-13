---
layout: default
title: Home
permalink: /
---

<h1>About Me</h1>

I am a Master's student at UC Santa Barbara (ECE), focusing on Vision Language Models and scalable AI systems. I am advised by [Peng Li](https://web.ece.ucsb.edu/~lip/). Previously, I graduated with First Class Honours from the University of Leeds & Southwest Jiaotong University joint B.S. program.

My research interests lie at the intersection of Computer Vision and Natural Language Processing, with a particular focus on mitigating hallucinations in Large Vision-Language Models (LVLMs).

---

## Selected Research

<ul class="paper-list">
  {% assign target_papers = "2026-01-07-sdcd,2025-12-12-vegas" | split: "," %}
  {% assign research_papers = site.research | where_exp: "item", "target_papers contains item.slug" | sort: 'date' | reverse %}
  
  {% for paper in research_papers %}
  <li class="paper-item">
    <a href="{{ paper.url | relative_url }}" class="paper-title">{{ paper.title }}</a>
    <div class="paper-meta">{{ paper.date | date: "%B %Y" }}</div>
    <div class="paper-excerpt">{{ paper.excerpt }}</div>
    <div class="paper-links">
      <a href="{{ paper.url | relative_url }}" class="btn">Read Paper</a>
    </div>
  </li>
  {% endfor %}
</ul>

[View All Research](/research/){: .btn}

---

## Recent Projects

<div class="bento-grid" style="margin-top: 1rem;">
  {% for project in site.projects limit:3 %}
    <a href="{{ project.url | relative_url }}" class="bento-card">
      <div class="bento-header">
        <h3>{{ project.title }}</h3>
      </div>
      <p>{{ project.excerpt | strip_html | truncate: 100 }}</p>
    </a>
  {% endfor %}
</div>

[View All Projects](/projects/){: .btn}
