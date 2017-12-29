---
layout: page
permalink: /resume/
title: "Résumé"
date: 2016-12-23 09:39
modified:
description: "Resume of Jibran Syed"
image:
  feature: /blog-header-img.png
  #credit: Drew Hays
  #creditlink: https://unsplash.com/drew_hays
share: false
comments: false
reading_time: false
looking_for_opporunities: true
---

{% if page.looking_for_opporunities %}

I am currently looking for opportunities in mobile development (iOS), interactive media, game technologies, or similar fields. See my resume below.

{% else %}

I am not currently looking for opportunities at this time, but if you are curious, you may see my education and experience below.

{% endif %}


<div style="display: flex;">
    <div markdown="0">
        <a href="https://linkedin.com/in/{{ site.owner.linkedin }}" class="btn">
            <i class="fa fa-lg fa-linkedin" aria-hidden="true"></i> &nbsp;View LinkedIn Profile
        </a>
    </div>&nbsp;&nbsp;
    <div markdown="0">
        <a href="mailto:{{ site.owner.email }}" class="btn">
            <i class="fa fa-lg fa-envelope" aria-hidden="true"></i> &nbsp;Email {{ site.owner.name }}
        </a>
    </div>
</div>
<div style="display: flex;">
    <div markdown="0">
        <a href="https://www.dropbox.com/s/jn5ozpopfrmhen7/JibranSyed_Resume.pdf" class="btn">
            <i class="fa fa-lg fa-file-pdf-o" aria-hidden="true"></i> &nbsp;Download Résumé (PDF)
        </a>
    </div>&nbsp;&nbsp;
    <div markdown="0">
        <a href="https://github.com/{{ site.owner.github }}?tab=repositories" class="btn">
            <i class="fa fa-lg fa-github" aria-hidden="true"></i> &nbsp;View Projects on GitHub
        </a>
    </div>
</div>


----------------------


# Jibran Syed

### Software Developer

<br/>  

## Contact

[<i class="fa fa-envelope" aria-hidden="true"></i> &nbsp;{{ site.owner.email }}](mailto:{{ site.owner.email }})  
[<i class="fa fa-home" aria-hidden="true"></i> &nbsp;{{ site.url-without-scheme }}]({{ site.url }})  
[<i class="fa fa-linkedin" aria-hidden="true"></i> &nbsp;{{ site.owner.name }}'s LinkedIn](https://linkedin.com/in/{{ site.owner.linkedin }})  
[<i class="fa fa-twitter" aria-hidden="true"></i> &nbsp;@{{ site.owner.twitter }}](https://twitter.com/{{ site.owner.twitter }})  
<i class="fa fa-flag" aria-hidden="true"></i> &nbsp;US Citizen  
<i class="fa fa-phone" aria-hidden="true"></i> &nbsp;Email me for phone number

<br/>

## About

I am a grad school graduate seeking employment to grow as a developer and help solve problems in interactive media, mobile, or games. Eager to learn and intrigued by where software will go next.

<br/>

## Experience

- **Part-Time Unity Programmer**  
  **Spherical Cow Games; Online**  
  *June 2014 - February 2017*  
  Implemented data-based game asset systems as per project specifications.
  Used Unity Editor classes to create and edit custom level mission data that is serialized as ScriptableObjects.  
  Made an [advanced data asset system for Unity](https://github.com/JISyed/SphericalCow-UnityRpgData) for the facilitation of RPG games (progression, stats, and abilities). Created data for developer use in ScriptableObjects and data for game use in XML files.

 - **Voluntary Part-Time Unity Developer**  
   **Limbicnation; Online**  
   *October 2014 - March 2016*  
   Made an software system for Unity to observe audio output and offer the decibel and frequency of the current output. Used the audio output to manipulate various elements in a scene with various scripts (like light intensity, material color, object position, prefab swapping, texture swapping, mesh deformation, wireframe toggle, field of view, etc.).  
   Made a script to detect a player entering a trigger zone and made several scripts to perform different tasks based on entering trigger zones (like triggering animations, music, waypoint movement, wireframe toggle, trigger particles, prefab swapping, camera switching, object shaking, etc.).  
   Quickly implemented new functionality with script-based programming to manipulate Unity objects in various ways (as mentioned above).

 - **Mobile & Web App Development Contractor**  
   **The Mx Group; Burr Ridge, IL**  
   *February 2014 - March 2014*  
   Mostly performed maintenance programming on a client web project, and helped resolve an issue with publishing a mobile app for another client project.

<br/>

## Education

 - **MS in Game Programming (Applied Software Engineering)**  
   **DePaul University; Chicago, IL**  
   *September 2014 - November 2016*  
   3.8 GPA

 - **BS in Game Development (Programming Concentration)**  
   **DePaul University; Chicago, IL**  
   *September 2009 - June 2013*  
   3.8 GPA

<br/>

## Select Courses

 - **[iOS 11 Development & Swift 4](https://www.udemy.com/devslopes-ios11/)**  
   *[Udemy](https://www.udemy.com/)*  
   [Finished learning](https://www.udemy.com/certificate/UC-68TLAGBR/) basics of iOS development by making [several app projects]({{ site.baseurl }}{% link _posts/2017/2017-11-20-learning-ios-development-from-devslopes.md %}). Taught by [Devslopes](https://devslopes.com/)

 - **Optimized C++**  
   *DePaul University*  
   Learned optimizations in C++, involving padding, const correctness, and alignment, and more

 - **Game Architecture**  
   *DePaul University*  
   Made [space invaders]({{ site.baseurl }}{% link projects/space-invaders-software-architecture/index.md %}) with design patterns, including command, strategy, state, observer, etc.

 - **Multithreading**  
   *DePaul University*  
   Learned multithreading primitives in C++11, including mutexes, `lock_guard`'s, and more

 - **Android Development**  
   *DePaul University*  
   Learned Android API and IDE, and made a [simple app]({{ site.baseurl }}{% link projects/chott/index.md %}) for tracking time spent on creative hobbies

 - **Game Engine I, II, & III**  
   *DePaul University*  
   Made an [OpenGL-powered game engine]({{ site.baseurl }}{% link projects/lge/index.md %}) for Windows that includes a skinned animation system

 - **China Study Abroad -- Shanghai & Beijing -- August 2016**  
   *DePaul University*  
   Visited Chinese cultural sites and visited Chinese software companies to learn about collaboration and outsourcing

<br/>

## Skills

C++, C#, Swift, Java, Visual Studios, Xcode, Cocoa Touch, Android Studio, Unity3D, Perforce, SVN, Git, Github, Markdown, Jekyll, OpenGL, GLSL, Windows, macOS, Ubuntu

<br/>

## Featured Projects

 - [**Minapps Alarm Clock**]({{ site.baseurl }}{% link projects/minapps-alarm-clock/index.md %})  
   Bedside alarm clock app for iOS  
   *Made using Swift 4, Xcode, and Cocoa Touch*

 - [**Caelium Alpha**]({{ site.baseurl }}{% link projects/caelium-alpha/index.md %})  
   Digital Orrery Sandbox Game for Ludum Dare Game Jam  
   *Made using C# and Unity3D*

 - [**Gyra**]({{ site.baseurl }}{% link projects/gyra/index.md %})  
   Quick Arcade Game - Now on the [App Store](https://itunes.apple.com/us/app/gyra-ludum-dare-34-game/id1311941156)  
   *Made using C#, Unity3D, and Xcode*

 - [**Procedutex**]({{ site.baseurl }}{% link projects/procedutex/index.md %})  
   Procedural Texture Library for Windows  
   *Made using C++, OpenGL, and Visual Studios*

 - [**Sea2D**]({{ site.baseurl }}{% link projects/sea2d/index.md %})  
   2D Game Sprite Engine for macOS  
   *Made using C++, OpenGL, YAML, and Xcode*

 - [**LGE**]({{ site.baseurl }}{% link projects/lge/index.md %})  
   3D Graphics Engine for Windows  
   *Made using C++, OpenGL, YAML, and Visual Studios*

 - [**Chott**]({{ site.baseurl }}{% link projects/chott/index.md %})  
   Time Tracking App for Android  
   *Made using Java, Android Studio, and JSON*

 - [**XboxCtrlrInput**]({{ site.baseurl }}{% link projects/xboxctrlrinput/index.md %})  
   Input Library for Unity3D  
   *Made using C#, Unity3D, and XInput.NET*

<br/>

## Interests

Art, Design, Games, Photography, Linguistics, Technology, Lyric-free Music, Travel, Theology,  East Asian Cultures
