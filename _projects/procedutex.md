---
title: "Procedutex"
description:
image:
  feature: /project-images/procedutex/test_window.png
  #credit: Drew Hays
  #creditlink: https://unsplash.com/drew_hays
do-show-start-date: true
do-show-end-date: true
start-date: 2016-01-04
end-date: 2016-03-16
modified:
domain: Code
project-type: C++ Library
---

## About

Procedutex is an object oriented 2D procedural texture generation library written in C++.

It will require Visual Studios 2013 or newer. Procedutex is a library that compiles into static libraries (.lib files). These lib files are tested in separate projects called `ProcedutexTestWindow` and `DemoEngine`.

The `ProcedutexTestWindow` project is a simple window showing 4 textures made with the procedural library. The `DemoEngine` is a custom C++ game engine that was being made from another academic project to test Procedutex on 3D objects. For the `DemoEngine` project, it is recommended to run on Release mode; the program takes too long to load on Debug mode.


## Downloads

<div markdown="0">
    <a href="https://github.com/JISyed/Procedutex" class="btn">
        <i class="fa fa-lg fa-github" aria-hidden="true"></i> Source Code on GitHub
    </a>
</div>

<div markdown="0">
    <a href="https://github.com/JISyed/Procedutex/raw/master/Procedutex%20Paper.pdf" class="btn">
        <i class="fa fa-lg fa-file-pdf-o" aria-hidden="true"></i> Download Procedutex Paper (PDF)
    </a>
</div>


## Screenshots

{% capture screenshots %}
	/_images/project-images/procedutex/demo_engine.png
    /_images/project-images/procedutex/test_window.png
{% endcapture %}
{% include gallery images=screenshots caption="" cols=2 %}
