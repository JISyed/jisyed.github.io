---
layout: post
title: "Caelium Alpha - Developer Reflection (Postmortem)"
date: 2017-05-16 20:53:49 -0500
modified: 2017-05-16 20:53:49 -0500
domain: Game-Dev
project: Caelium Alpha
tags: [Unity3D,Ludum Dare,Postmortem,Sandbox,Outer Space]
description: 
#image:
  #feature: /blog-header-img.png
  #credit: Drew Hays
  #creditlink: https://unsplash.com/drew_hays
comments: false
share: true
---

<figure>
	<a href="/_images/project-images/caelium-alpha/caeliumGif4.gif" target="_blank">
		<img src="/_images/project-images/caelium-alpha/caeliumGif4.gif" alt="">
	</a>
</figure>

###  <i class="fa fa-moon-o" aria-hidden="true"></i> [>> Play Caelium Alpha Here <<](https://ldjam.com/events/ludum-dare/38/caelium-alpha)

Caelium Alpha was something that I always wanted to make, interactive software for making imaginary solar systems. I think this was my more favorite Ludum Dare event yet. I made something decently playable within the 72 hours, but also made a Post-LD build that has more features and bug fixes. 

I really appreciate all the people who played the game and gave feedback! The feedback will help me greatly in determining what features to add to the game and what should be fixed. I intend to keep making this after the event's over, but it will have to progress very slowly.

#### <i class="fa fa-check-circle" aria-hidden="true"></i> What Went Well

 - I'm happy with the complex object hierarchy that allows each of the planets to orbit around the star with different orbit speeds and rotations. It can even support tilt (like the planet Uranus), but this was an experimental feature that was not released as of yet.
 - The UI could always improve, but I don't use Unity's UI features that much, so having the changeable UI with sliders feels like an accomplishment.
 - Planet selection with the mouse. Doesn't sound like a big deal, but it's fundamental in order for this game to work.
 - The particle effects help with depth perception and adds visual cues to the game.
 - Got great feedback from the Ludum Dare community. Thanks again!
 - Object-based data system that allows stars, planets, and moons to have adjustable properties that they all have in common while also having unique features.
 - Decoupling between a planet's data and the scripts controlling the properties of a planet.
 - *(In the Post-LD Version)* My implementation of auto-padding between planets allow planets to change size or have additional moons without other planets colliding them.
 - *(In the Post-LD Version)* Being able to use a musical piece from [Stephen Tanksley](https://soundcloud.com/stephen-tanksley). Adds nice atmosphere to the game!

#### <i class="fa fa-times-circle" aria-hidden="true"></i> What Went Badly

 - Towards the end of the jam, I encountered a weird bug where multiple planets would spawn the more you add planets. This bug was fixed because someone told me that I could fix important bugs after the jam. The bug was caused by a prefab referencing itself, which is apparently a big no-no in Unity; I wrote [a blog post]({{ site.baseurl }}{% link _posts/2017/2017-04-27-never-self-reference-prefabs-in-unity.md %}) explaining this problem in depth.
 - Did not have time for sounds in the LD Version, but they are fortunately available in the Post-LD Version.
 - Many people were not fans of the camera controls (especially zooming). I myself do not like my own camera implementation, but I couldn't spend the entire jam making the perfect camera controls ;p
 - My code organization was okay, but it could still use a minor refactor if I intend to develop this game further.
 - Could not get moons implemented during the jam, but fortunately they are available in the Post-LD Version.

#### <i class="fa fa-star-o" aria-hidden="true"></i> Features I'll Consider in the Future

These desired features are not listed in any particular order, and are only up for consideration. They may or may not eventually be implemented:

 - The ability to tilt a planet's orbit and rotational axis (these are partially implemented, not made available to the user).
 - More music and sound effects
 - More realistic orbital speed dynamics based off orbital distance
 - Better camera movement controls (including better zoom (no more fisheye), "anchoring" on selected objects, and top-down view)
 - Different types of planets (rocky, terrestrial, gas giant, etc.)
 - Rings around planets
 - Ability to remove planets and moons
 - Procedural textures with adjustable color properties (very long term feature)
 - Procedural space skyboxes (very long term feature)
 - Realistic rim shader for planets and moons
 - Flare and light effects for stars
 - Rename planets, stars, and moons
 - Pause planetary movements

Once again, I thank everyone who played the game and gave feedback. If you want to follow further development, you can either follow me on [Twitter](https://twitter.com/Jishenaz), follow the game on [Itch.io](https://jishenaz.itch.io/caelium-alpha), or bookmark [Caelium Alpha's project page on this blog]({{ site.baseurl }}{% link projects/caelium-alpha/index.md %}).

<figure>
	<a href="/_images/project-images/caelium-alpha/caeliumScreen8.png" target="_blank">
		<img src="/_images/project-images/caelium-alpha/caeliumScreen8.png" alt="">
	</a>
</figure>
