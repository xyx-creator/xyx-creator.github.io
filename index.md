---
layout: default
title: Home
permalink: /
---

## Hi there👋! I’m **Yuxuan Xia**

I’m a Master's student in the Department of Electrical & Computer Engineering at the University of California, Santa Barbara, where I work with [Prof. Peng Li](https://web.ece.ucsb.edu/~lip/). I received my Bachelor of Science in Computer Science through a joint program between Southwest Jiaotong University and the University of Leeds, graduating with First Class Honours from the University of Leeds.

**Next Step:** In Fall 2026, I will join the [ND-VIS Lab](https://www3.nd.edu/~cwang11/ndvis/) at the University of Notre Dame as a Ph.D. student, advised by [Prof. Chaoli Wang](https://sites.nd.edu/chaoli-wang/).

My research interests lie at the intersection of **Computer Vision** and **Natural Language Processing**, with a particular focus on **Vision-Language Models** and **Visualization**. I develop trustworthy multimodal systems that make complex visual-linguistic reasoning more intuitive, expressive, and accessible to broader audiences. A key part of my current work involves mitigating hallucinations in Large Vision-Language Models (LVLMs) by building attention-calibration mechanisms and contrastive-decoding frameworks.

More broadly, I’m excited about **HCI + VIS + AI**, interfaces for generative and multimodal models, 3D/4D data interaction, agentic workflows, and the future of intelligent, mixed-initiative visualization systems.

If you’re interested in my work or would like to collaborate, feel free to reach out at [xyxchengdu@gmail.com](mailto:xyxchengdu@gmail.com).

### [Download CV (PDF), updated on Jan 8, 2026](/assets/Yuxuan_CV_newest_01082026.pdf){: .btn}

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