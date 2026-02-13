---
title: "Projects"
permalink: /projects/
layout: page
---

These are my hands-on technical projects, focusing on AI model optimization, applied computer vision, and building large-scale AI systems.

<div class="bento-grid">
  {% assign projects = site.projects | sort: 'date' | reverse %}
  {% if projects.size > 0 %}
    {% for project in projects %}
      <a href="{{ project.url | relative_url }}" class="bento-card">
        <div class="bento-header">
          <h3>{{ project.title }}</h3>
          <p class="text-sm text-muted">{{ project.date | date: "%B %Y" }}</p>
        </div>
        <p>{{ project.excerpt | strip_html | truncate: 120 }}</p>
        <div class="bento-footer">
          <span class="btn btn-outline text-sm">View Project &rarr;</span>
        </div>
      </a>
    {% endfor %}
  {% else %}
    <div class="bento-card span-2">
      <h3>More Projects Coming Soon</h3>
      <p>I am currently working on documenting my latest work. Please check back later!</p>
    </div>
  {% endif %}
</div>
