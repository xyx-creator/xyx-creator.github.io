---
title: "Optimization for Tensorized Transformer Training"
date: "2024-12-01"
date_label: "Oct. 2024 - Dec. 2024"
excerpt: "Refined the traditional transformer architecture by integrating a Block-Term Tensor Decomposition technique."
---

* Refined the traditional transformer architecture by integrating a Block-Term Tensor Decomposition technique, replacing the multi-head attention layer with a more efficient multi-linear attention mechanism.
* Engineered custom CUDA operators to supersede Torch's tensor multiplication, achieving 8x performance increase.
* Enhanced training efficiency by over 30%, maintaining comparable perplexity levels for language modeling.