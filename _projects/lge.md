---
title: "LGE"
description: "3D OpenGL-powered game engine with skinned animation"
image:
  feature: /project-images/lge/demo2.png
do-show-start-date: true
do-show-end-date: true
start-date: 2015-09-13
end-date: 2016-06-10
modified:
domain: Code
project-type: 3D Game Engine
---

## About

LGE is a game graphics and animation engine made at DePaul University over several months as part of the graduate level game programming curriculum. Powered by OpenGL and runs on Windows. The project will require at least Visual Studios 2013 or later.

LGE stands for "Little Game Engine" (couldn't think of a better name).


## Features

 - Advanced graphics engine with OpenGL 3 (Shaders, Textures, Materials, Uniform managemet, Meshes)
 - Basic animation system that performs mesh skinning in the GPU
 - Graphics materials that are serialized as YAML files to allow tweaking outside the engine code
 - Cameras that are serialized as 1 YAML file
 - Run-time format for art assets converted from FBX files (faster than having the engine load FBX files at start time) (See ConvertersDemo folder)
 - Scene graph with Parent-Child-Sibling tree structure
 - Fast custom-made math library that supports 4d vectors, 4x4 matrices, and quaternions
 - Fast file-loading library utilizing Windows' file API (instead of C's)
 - Simple GameObject system that supports object-oriented behaviors (called "Components" in Unity3D)


## Downloads

{% include button url="https://github.com/JISyed/LGE-Game-Engine" label="Source Code on GitHub" type="" icocode="github" %}

{% include button url="https://github.com/JISyed/LGE-Game-Engine/raw/master/LGE_FBX_Converter.pdf" label="Download FBX Converter Paper (PDF)" type="" icocode="file-pdf-o" %}

{% include button url="https://github.com/JISyed/LGE-Game-Engine/raw/master/LGE_GPU_Animation.pdf" label="Download GPU Animation Paper (PDF)" type="" icocode="file-pdf-o" %}

{% include button url="https://github.com/JISyed/LGE-Game-Engine/raw/master/LGE_YAML_Serialzation.pdf" label="Download YAML Serialization Slides (PDF)" type="" icocode="file-pdf-o" %}


## Screenshots

{% capture screenshots %}
	/_images/project-images/lge/demo1.png
    /_images/project-images/lge/demo2.png
    /_images/project-images/lge/demo3.png
{% endcapture %}
{% include gallery images=screenshots caption="" cols=3 %}
