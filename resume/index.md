---
layout: page
permalink: /resume/
title: "Résumé"
date: 2016-12-23 09:39
modified:
description: "Resume of Jibran Syed"
image:
  feature: /resume-header-img.jpeg
  credit: Markus Petritz
  creditlink: https://unsplash.com/photos/-LFe6Prglw4
share: false
comments: false
reading_time: false
looking_for_opporunities: false
---

{% if page.looking_for_opporunities %}

**I am currently looking for opportunities in mobile development (iOS), interactive media, game technologies, or similar fields. See my resume below.**

{% else %}

**I am not currently looking for opportunities at this time, but if you are curious, you may see my education and experience below.**

{% endif %}


<div style="display: flex;">
    <div markdown="0">
        <a href="https://linkedin.com/in/{{ site.owner.linkedin.name }}" class="btn">
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
        <a href="https://github.com/{{ site.owner.github.name }}?tab=repositories" class="btn">
            <i class="fa fa-lg fa-github" aria-hidden="true"></i> &nbsp;View Projects on GitHub
        </a>
    </div>
</div>
<div style="display: flex;">
    <div markdown="0">
        <a href="https://stackoverflow.com/story/jisyed" class="btn">
            <i class="fa fa-lg fa-stack-overflow" aria-hidden="true"></i> &nbsp; Stack Overflow Developer Story
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
[<i class="fa fa-linkedin" aria-hidden="true"></i> &nbsp;{{ site.owner.name }}'s LinkedIn](https://linkedin.com/in/{{ site.owner.linkedin.name }})  
[<i class="fa fa-twitter" aria-hidden="true"></i> &nbsp;@{{ site.owner.twitter.name }}](https://twitter.com/{{ site.owner.twitter.name }})  
[<i class="fa fa-github" aria-hidden="true"></i> &nbsp;{{ site.owner.github.name }} at GitHub](https://github.com/{{ site.owner.github.name }})  
<i class="fa fa-flag" aria-hidden="true"></i> &nbsp;US Citizen  
<i class="fa fa-phone" aria-hidden="true"></i> &nbsp;Email me for phone number

<br/>

## About

I am a master’s graduate interested in interactive media, mobile, or games. Eager to grow as a developer, help solve problems, and learn. I’m intrigued by software that brings good or joy to people.

<br/>

## Experience

- **Part-Time Unity Programmer**  
  **Spherical Cow Games; Online**  
  *June 2014 - February 2017*  
    - Implemented data-based game asset systems as per project specifications.
    - Used Unity Editor classes to create and edit custom level mission data that is serialized as ScriptableObjects.  
    - Made an [advanced data asset system for Unity](https://github.com/JISyed/SphericalCow-UnityRpgData) for the facilitation of RPG games (progression, stats, and abilities). Created data for developer use in ScriptableObjects and data for game use in XML files.

 - **Voluntary Part-Time Unity Developer**  
   **Limbicnation; Online**  
   *October 2014 - March 2016*  
     - Made an software system for Unity to observe audio output and offer the decibel and frequency of the current output. Used the audio output to manipulate various elements in a scene with various scripts (like light intensity, material color, object position, prefab swapping, texture swapping, mesh deformation, wireframe toggle, field of view, etc.).  
     - Made a script to detect a player entering a trigger zone and made several scripts to perform different tasks based on entering trigger zones (like triggering animations, music, waypoint movement, wireframe toggle, trigger particles, prefab swapping, camera switching, object shaking, etc.).  
     - Quickly implemented new functionality with script-based programming to manipulate Unity objects in various ways (as mentioned above).

 - **Mobile & Web App Development Contractor**  
   **The Mx Group; Burr Ridge, IL**  
   *February 2014 - March 2014*  
     - Mostly performed maintenance programming on a client web project, and helped resolve an issue with publishing a mobile app for another client project.

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

- **[iOS 11 Development with Swift 4](https://www.udemy.com/devslopes-ios11/)**  
*[Udemy](https://www.udemy.com/) (September to November 2017)*  
Finished learning basics of iOS development by making [several app projects]({{ site.baseurl }}{% link _posts/2017/2017-11-20-learning-ios-development-from-devslopes.md %}). Recieved [Udemy certificate of completion](https://www.udemy.com/certificate/UC-68TLAGBR/). Taught by [Devslopes](https://devslopes.com/).

- **China Study Abroad -- Shanghai & Beijing**  
*DePaul University (August 2016)*  
Visited cultural sites and software companies, in Shanghai & Beijing, to learn about collaboration and outsourcing. Trip lasted about 10 days.

- **Game Engine I, II, & III**  
*DePaul University (September 2015 to June 2016)*  
Made an [OpenGL-powered game engine]({{ site.baseurl }}{% link _projects/lge.md %}) for Windows that includes a skinned animation system.

- **Android Development**  
*DePaul University (September to November 2015)*  
Learned Android API and IDE, and made a [simple app]({{ site.baseurl }}{% link _projects/chott.md %}) for tracking time spent on creative hobbies.

- **Multithreading**  
*DePaul University (April to June 2015)*  
Learned multithreading primitives in C++11, including mutexes, `lock_guard`'s, and more.

- **Game Architecture**  
*DePaul University (January to March 2015)*  
Made [space invaders]({{ site.baseurl }}{% link _projects/space-invaders-software-architecture.md %}) with design patterns, including command, strategy, state, observer, etc.

- **Optimized C++**  
*DePaul University (September to November 2014)*  
Learned optimizations in C++, involving padding, const correctness, and alignment, and more.

<br/>

## Skills

C#, Swift, C++, Unity3D, Visual Studio, MonoDevelop, Xcode, Interface Builder, Cocoa Touch/UIKit, CocoaPods, Android Studio, Git, Github, SourceTree, BitBucket, Perforce, SVN, OpenGL, GLSL, YAML, JSON, Java, Objective-C, Unix Terminal, Windows, macOS, Ubuntu

<br/>

## Featured Projects

- [**Chott for iOS**]({{ site.baseurl }}{% link _projects/chott-for-ios.md %})  
Remake of [Chott]({{ site.baseurl }}{% link _projects/chott.md %}) time tracking app for iOS 11+  
February 2018  
*Made using Swift 4, Xcode, Cocoa Touch, and Core Data*

- [**Minapps Alarm Clock**]({{ site.baseurl }}{% link _projects/minapps-alarm-clock.md %})  
 Bedside alarm clock app for iOS  
 December 2017  
 *Made using Swift 4, Xcode, Cocoa Touch, and Core Data*

 - [**Gyra**]({{ site.baseurl }}{% link _projects/gyra.md %})  
 Quick Arcade Game - Now on the [App Store](https://itunes.apple.com/us/app/gyra-ludum-dare-34-game/id1311941156)  
 November 2017  
 *Made using C#, Unity3D, and Xcode*

- [**Caelium Alpha**]({{ site.baseurl }}{% link _projects/caelium-alpha.md %})  
Digital Orrery Sandbox Game for Ludum Dare Game Jam  
April 2017  
*Made using C# and Unity3D*

- [**LGE**]({{ site.baseurl }}{% link _projects/lge.md %})  
3D Graphics Engine for Windows  
June 2016  
*Made using C++, OpenGL, YAML, and Visual Studios*

- [**Sea2D**]({{ site.baseurl }}{% link _projects/sea2d.md %})  
2D Game Sprite Engine for macOS  
June 2016  
*Made using C++, OpenGL, YAML, and Xcode*

- [**Procedutex**]({{ site.baseurl }}{% link _projects/procedutex.md %})  
Procedural Texture Library for Windows  
March 2016  
*Made using C++, OpenGL, and Visual Studios*

- [**Chott for Android**]({{ site.baseurl }}{% link _projects/chott.md %})  
Time Tracking App for Android  
November 2015  
*Made using Java, Android Studio, and JSON*

- [**XboxCtrlrInput**]({{ site.baseurl }}{% link _projects/xboxctrlrinput.md %})  
Input Library for Unity3D  
August 2013  
*Made using C#, Unity3D, and XInput.NET*

<br/>

## Interests

Art, Design, Games, Photography, Linguistics, Technology, Lyric-free Music, Travel, Spirituality,  East Asian Cultures
