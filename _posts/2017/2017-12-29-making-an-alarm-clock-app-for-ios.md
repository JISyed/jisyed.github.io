---
layout: post
title: "Making an alarm clock app for iOS"
date: 2017-12-29 08:23:15 -0600
modified: 2017-12-29 08:23:15 -0600
domain: Code
project: Minapps Alarm Clock
tags: [iOS, App Store, Xcode, Swift, App]
description:
image:
  feature: /project-images/minapps-alarm-clock/alarmClockBanner.png
  #credit: Drew Hays
  #creditlink: https://unsplash.com/drew_hays
comments: false
share: true
---

After learning iOS development from Devslopes, I figured that I should start making apps myself as a learning experience. I wanted to start off with something relatively simple, like an alarm clock.

I already use an alarm clock app, so I utilized it as a reference to make this new app. I wanted a dimmable clock face that works on different orientations and different screen sizes. The idea was to make an alarm clock app that can also serve as a bedside clock (which is what I do at the moment).

I call this app [**Minapps Alarm Clock**]({{ site.baseurl }}{% link projects-old/minapps-alarm-clock/index.md %}). The "Minapps" is just short for "minimal apps", because I wanted it to be relatively simple in functionality. If I make more simple apps, I intend to attach the "Minapps" name to them.

I'm a little surprised how long it took to develop this alarm clock (about two weeks), but I fortunately learned some new nuances of iOS development. Here's a list of skills I gained from making this app:

 - How make multiple text labels scale properly on iPad and iPhone screens.
 - How to schedule functionality with the [`Timer` class](https://developer.apple.com/documentation/foundation/timer).
 - Wrangling with the difficult [`Date` class](https://developer.apple.com/documentation/foundation/date).
 - Reading the [`UIDevice` class](https://developer.apple.com/documentation/uikit/uidevice) in order to disable auto-lock and to read the device battery life.
 - Using [`UserNotifications`](https://developer.apple.com/documentation/usernotifications) to send local notifications to a user when their alarms ring outside of the app.
 - Using a Settings Bundle to tweak the alarm clock settings.

I'm happy to say that *Minapps Alarm Clock* is available on the App Store.

<div markdown="0">
   <a href="https://itunes.apple.com/us/app/minapps-alarm-clock/id1328048131" target="_blank">
        <img src="/_images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg" alt="Download_on_the_App_Store_Badge" style="margin-bottom: 20px"/>
   </a>
</div>

If there are any bugs, [open a new Github issue here](https://github.com/JISyed/Minapps-Alarm-Clock/issues).









