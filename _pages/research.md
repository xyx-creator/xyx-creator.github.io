---
title: "Research"
permalink: /research/
layout: page
---

My research focuses on Machine Learning, particularly in Vision Language Models (VLMs), model optimization, and scalable AI systems.

<div class="bento-grid">
  {% assign papers = site.research | sort: 'date' | reverse %}
  {% for paper in papers %}
    <a href="{{ paper.url | relative_url }}" class="bento-card span-2">
      <div class="bento-header">
        <h3>{{ paper.title }}</h3>
        <p class="text-sm text-muted">{{ paper.date | date: "%B %Y" }}</p>
      </div>
      <p>{{ paper.excerpt | strip_html | truncate: 150 }}</p>
      <div class="bento-footer">
        <div class="tags">
          {% for tag in paper.tags limit:3 %}
            <span class="tag">{{ tag }}</span>
          {% endfor %}
        </div>
        <span class="btn btn-outline text-sm">Read Paper &rarr;</span>
      </div>
    </a>
  {% endfor %}
</div>
