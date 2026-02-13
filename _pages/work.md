---
title: "Work Experience"
permalink: /work/
layout: page
---

Here is a summary of my professional roles, research, and internship experiences.

<div class="bento-grid">
  {% assign works = site.work | sort: 'date' | reverse %}
  {% for job in works %}
    <a href="{{ job.url | relative_url }}" class="bento-card">
      <div class="bento-header">
        <h3>{{ job.title }}</h3>
        <p class="text-sm text-muted">{{ job.company }} • {{ job.date_label }}</p>
      </div>
      <p>{{ job.excerpt | strip_html | truncate: 120 }}</p>
      <div class="bento-footer">
        <span class="btn btn-outline text-sm">Read More &rarr;</span>
      </div>
    </a>
  {% endfor %}
</div>
