---
layout: post
title: "Made an Orrery Sandbox for a Game Jam"
date: 2017-04-27 15:48:33 -0500
modified: 2017-04-27 15:48:33 -0500
domain: Game-Dev
project: Caelium Alpha
tags: [Unity3D,Ludum Dare,3D,CSharp,Sandbox,Outer Space]
description: 
#image:
  #feature: /blog-header-img.png
  #credit: Drew Hays
  #creditlink: https://unsplash.com/drew_hays
comments: false
share: true
---

<figure>
	<a href="/_images/project-images/caelium-alpha/caeAl_LD_Gameplay.png" target="_blank">
		<img src="/_images/project-images/caelium-alpha/caeAl_LD_Gameplay.png" alt="">
	</a>
</figure>

On the previous weekend was the 38th [Ludum Dare](https://ldjam.com/) game jam, which has now been going on for 15 years. This time around, the theme was "A Small World". As I thought about how to design a game around a small world, I remembered a project that I always wanted to do.

A little history first, I always wanted to make a "game" involving building your own solar system (or planetary system, which is the general term). It would always be more of a sandbox, akin to Minecraft or SimCity. I've called this game idea Caelium (which originates from a word "caelum" for "sky or heavens"). I've wanted to make a serious prototype of this game, but for various reasons I couldn't (life, college, grad school, etc.)

So concerning the game jam theme, I figured that I could probably make Caelium resemble "a small world" by trying to imitate an [orrery](https://www.google.com/search?q=orrery&tbm=isch), which is a model of the solar system. By participating in this game jam, I finally made serious progress with this idea. Since it's still early, I called the game [Caelium Alpha]({{ site.baseurl }}{% link projects/caelium-alpha/index.md %}).

Unfortunately, the current version of the game has a strange bug where multiple planets spawn when trying to spawn one planet. This was due to a [prefab reference problem in Unity]({{ site.baseurl }}{% link _posts/2017/2017-04-27-never-self-reference-prefabs-in-unity.md %}) I mentioned in another post. I intend to make an improved version of Caelium Alpha that fixes this problem and also add the ability to spawn moons (which is currently not supported).

If you want to try out the game prototype, you can go to the [game's Ludum Dare page](https://ldjam.com/events/ludum-dare/38/caelium-alpha), or the [game's Itch.io page](https://jishenaz.itch.io/caelium-alpha).
