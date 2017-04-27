---
layout: post
title: "Never self-reference prefabs in Unity"
date: 2017-04-27 10:02:29 -0500
modified: 2017-04-27 10:02:29 -0500
domain: Game-Dev
project: Caelium Alpha
tags: [Ludum Dare,Unity3D,coding errors]
description: 
comments: false
share: true
---

In Unity, I wanted to set up a situation where there is a prefab, and it contains a script, and that script references back to the prefab. The reason for this strange setup was because, once cloned, that GameObject can keep cloning itself as instructed by the script. 

When I started cloning this prefab, I discovered that mutiple objects started popping up (instead of one). I tried breakpoints and logging messages, but I couldn't figure out why many clones were popping up from one invocation.

I eventually went into the object hierarchy and found that the root prefab clone had a very important GameObject reference mysteriously changed. The original prefab would have this reference pointing to itself, but when cloned in the scene, the clone would no longer point to the original prefab, but instead to the clone itself, automagically! 

After a ton of searching, I found a [discussion on the Unity Forums](https://forum.unity3d.com/threads/reference-to-prefab-changing-to-clone-self-reference.57312/) pertaining to this problem. It was here that I found out that any prefab that references itself and then get cloned, the clone will reference itself, not the original prefab. 

I frankly consider this unexpected/undesireable behavior, but on the forum thread, someone from Unity said that it was by design. Perhaps I can understand that the underlying implementation of Unity is complex, and they had to make decisions that can look strange to an outsider. But I still would consider this to be a bug, because it cost me a ton to time to fix this issue. I was working on a game called [Caelium Alpha]({{ site.baseurl }}{% link projects/caelium-alpha/index.md %}) when I encountered this problem, which happened around the last 2 hours. I was not able to fix it before time was up.

So the moral of the story is that you should never have a prefab that references itself in its own scripts. It can cost you your development time!

---------------

If you are curious to know a workaround, personally I just resorted to [loading the prefab from a Resources folder](https://docs.unity3d.com/Manual/LoadingResourcesatRuntime.html) in the Unity project, and loading the prefab with [`Resources.Load()`](https://docs.unity3d.com/ScriptReference/Resources.Load.html). This is actually not my prefered way to solve a problem like this, but I decided to go for it, because there was only 1 prefab I wanted to clone, not a hundred different prefabs.
