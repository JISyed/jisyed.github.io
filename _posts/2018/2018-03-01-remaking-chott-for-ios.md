---
layout: post
title: "Remaking Chott for iOS"
date: 2018-03-01 19:48:07 -0600
modified: 2018-03-01 19:48:07 -0600
domain: Code
project: Chott for iOS
tags: [iOS, App Store, Xcode, Swift, App]
description:
image:
  feature: /project-images/chott-for-ios/chott_ios_banner.png
comments: false
share: true
---

A couple of years ago, I was learning Android development in graduate school, and as a final project, I wanted to make a time tracking app for personal hobbies, which came to fruition as [Chott]({{ site.baseurl }}{% link _projects/chott.md %}). Now that I'm learning iOS development, I wanted to remake this app for iPhones.

I'm using Core Data as the local storage solution. I've use a tiny bit before, but now I'm using a new feature that allows Core Data entries to have UUIDs as a attribute. (UUIDs are like GUIDs in other languages.) Unfortunately, this feature has forced me to target the app at iOS 11 (the latest version at the time of this writing). I wanted to support to iOS 10, but I wanted to use the new UUID attributes, because I felt it would be faster than storing strings IDs.

I developed the UI of this app to look almost identical to the original Android version. I would have liked it to be on iPads, but I had a little dilemma: I wanted the iPhone version to be only in portrait orientation, while somehow allowing any orientation on the iPad. I currently didn't know how to do this. And also, since Chott currently doesn't have cloud sync support, I figured that it would be good for now to just target iPhones and not iPads.

I'm ready to submit to the App Store soon. If you want to find out more about Chott for iOS, check out it's [project page here]({{ site.baseurl }}{% link _projects/chott-for-ios.md %}) for a list of features and screenshots.
