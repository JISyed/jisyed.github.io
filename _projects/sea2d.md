---
title: "Sea2D"
description: "2D OpenGL-powered sprite engine for macOS, written in C++"
image:
  feature: /project-images/sea2d/sea2d_demo.png
do-show-start-date: true
do-show-end-date: true
start-date: 2016-03-20
end-date: 2016-06-10
modified:
domain: Code
project-type: 2D Game Engine
---

## About

Sea2D is a 2D Game Sprite Engine written in C++ for macOS. Sea2D stands for "Sprite Engine Apple 2D". It was part of grad school individual research project.

**Note:** None of the art is made by me! Any art is only used for demonstration. Art made by [Kenney](http://kenney.nl/).


## Features

 - Working C++ powered graphics engine on macOS
 - Data assets to allow tweaking outside engine code using YAML
 - Sprite system using spritesheet texture and YAML data file
 - Bitmap font system using glyph-sheet texture and YAML data file
 - Support for frame-animated sprites
 - Simple scene graph system with Entities (ie: GameObjects) and Behaviors (called "Components" in Unity3D)
 - Floating point math utility functions
 - Fast 3D vector & matrix library as foundation for fast graphics rendering
 - Advanced 2D camera system that allows rendering on a subsection of the game window (or render on the whole window)


## Downloads

{% include button url="https://github.com/JISyed/Sea2D" label="Source Code on GitHub" type="" icocode="github" %}

{% include button url="https://github.com/JISyed/Sea2D/raw/master/Sea2D_Overview.pdf" label="Download Sea2D Paper (PDF)" type="" icocode="file-pdf-o" %}

The project was written using at least Xcode 7.3 or greater on macOS 10.11.


## Screenshot

{% include oneimage path="/_images/project-images/sea2d/sea2d_demo.png" alttext="missingImg" is_static=false %}
