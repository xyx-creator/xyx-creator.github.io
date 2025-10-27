---
title: "Paper Deep Dive: Joint Median Channel Prior and Edge Enhancement for Single Image Dehazing"
date: 2025-10-26 18:30:00 -0700
categories: [Research, Computer Vision]
tags: [Dehazing, Image Processing, PRAI 2023, Publication]
---

I'm excited to share a deeper look into a paper I co-first authored, which was published at the **2023 IEEE 6th International Conference on Pattern Recognition and Artificial Intelligence (PRAI)**.

The paper is titled: **"Joint Median Channel Prior and Edge Enhancement for Single Image Dehazing."**

### The Challenge: Removing Haze from a Single Image

Removing haze, fog, or smoke from a single image is a classic and challenging problem in computer vision. When an image is captured in hazy conditions, the scene's contrast is significantly reduced, and colors become washed out. This degradation not only affects the visual quality but also hinders the performance of many computer vision algorithms, such as object detection and segmentation.

The core difficulty is that the problem is "ill-posed"—we need to recover two unknown variables (the scene radiance and the atmospheric light scattering) from just one input image.

### Our Approach: A New Prior with Edge Enhancement

To tackle this, many methods rely on "priors," which are statistical assumptions about the properties of haze-free images. Perhaps the most famous is the "Dark Channel Prior" (DCP).

In our work, we proposed a novel approach that combines two key ideas:

1.  **Joint Median Channel Prior (JMCP):** We introduce a new prior based on the median values of image channels. This prior serves as a robust estimator to help calculate the atmospheric light and the transmission map (which represents how much light "survives" the haze to reach the camera).

2.  **Edge Enhancement:** A common problem in many dehazing methods is the appearance of "halo" artifacts, especially around sharp edges where the depth of the scene changes abruptly. Our method explicitly incorporates an edge-enhancement mechanism. This step ensures that as we remove the haze, we also preserve—and even sharpen—the fine details and contours of the objects in the scene.

By **jointly** optimizing for both haze removal (via the JMCP) and detail preservation (via edge enhancement), our model can produce cleaner, more vibrant, and sharper results compared to methods that don't explicitly handle edges.

### Publication Details

If you're interested in the full technical details, you can find the paper in the IEEE Xplore library.

**Full Citation:**
H. Wu\*, G. Chen\*, and **Y. Xia**\*, "Joint Median Channel Prior and Edge Enhancement for Single Image Dehazing," 2023 IEEE 6th International Conference on Pattern Recognition and Artificial Intelligence (PRAI), Haikou, China, **Aug. 18-20, 2023**, pp. 326-332.
[DOI: 10.1109/PRAI59366.2023.10331999](https://doi.org/10.1109/PRAI59366.2023.10331999)

*\*Co-first author*
