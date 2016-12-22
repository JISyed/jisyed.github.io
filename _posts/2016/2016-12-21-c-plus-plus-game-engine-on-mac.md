---
layout: post
title: "C++ Game Engine on Mac"
date: 2016-12-21 20:36:30 -0600
modified: 2016-12-21 20:36:30 -0600
domain: Code
project: Sea2D
tags: [CPP,macOS,Xcode,2D]
description:
comments: false
share: true
---

<figure>
    <a href="/_images/project-images/sea2d/sea2d_demo.png" target="_blank">
	   <img src="/_images/project-images/sea2d/sea2d_demo.png" alt="" width="50%" height="50%">
    </a>
</figure>

Through the last couple of years, I've been making a few software systems in C++ (mostly game code for grad school). But all of that C++ code was always written for the Windows platform.

I really wanted to know what it would be like to write C++ game code on a Mac (since I use Macs quite a bit). I must admit, it wasn't easy, since Xcode thinks you only want to write C++ for non-visual command line stuff (and not something visual like a game).

I looked long and hard for a way to make a GUI project in C++ on Xcode. It seems that you have to make a Cocoa Application and use Objective-C as the language. That seems counter-intuitive, but since the `main()` function is mostly C-style, you can remove the Objective-C code, rename the file `main.mm`, and use a 3rd party GUI library like [GLFW](http://www.glfw.org/) to launch a window with OpenGL context.

From there, you can make an OpenGL-powered game engine in C++ that runs on Macs. I did exactly that with an engine I call Sea2D (Sprite Engine Apple 2D). You can go the [project's page]({{ site.baseurl }}{% link projects/sea2d/index.md %}) to find out more, or you can [get the source code directly from Github](https://github.com/JISyed/Sea2D).
