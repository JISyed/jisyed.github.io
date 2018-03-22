---
layout: project
title: "Chott for iOS"
description:
image:
  feature: /project-images/chott-for-ios/chott_ios_banner.png
do-show-start-date: true
do-show-end-date: true
start-date: 2018-02-20
end-date: 2018-03-02
modified:
domain: Code
project-type: iOS App
share: true
comments: false
---

# AVAVAVAVAVAVAVAVAVAVAV

## About

Chott stands for "Creative Hobby Occurrence Time Tracker".

This is actually an iOS remake of the [original Chott app for Android]({{ site.baseurl }}{% link projects-old/chott/index.md %}). Chott is a time tracking app specifically designed for personal creative hobbies in mind. A creative hobby is a hobby where you make something. There are 4 categories: Code, Art, Music, and Writing.

Now being powered by iOS technologies, Chott for iOS has more features than the original Android version, like deleting projects you don't want anymore. The app is written in Swift 4 and uses newer Core Data features like UUID attributes. Because of this, Chott for iOS can only run on iPhones running iOS 11 or newer.

Icons used in the app are available from the [Material Design](https://material.io/icons/) site.


## Features

#### From the Original Android Version
 - Track the time used doing your hobbies
 - Hobbies exist in 4 categories: Code, Art, Music, and Writing
 - Add new hobby projects to one of the 4 categories
 - View a history of sessions spent on your hobbies

#### New in the iOS Version
 - Delete projects with swipe action
 - Rename projects with swipe action
 - Delete individual sessions of a project
 - Session duration text fades if little time was spent that session
 - If app quits while timing, the session is restored on app resume

## Downloads

<div markdown="0">
   <a href="https://itunes.apple.com/us/app/chott-hobby-time-tracking/id1355028450" target="_blank">
        <img src="/_images/Download_on_the_App_Store_Badge_US-UK_RGB_blk_092917.svg" alt="Download_on_the_App_Store_Badge" style="margin-bottom: 20px"/>
   </a>
</div>


 <div markdown="0">
    <a href="https://github.com/JISyed/CHOTT-iOS-App" class="btn">
        <i class="fa fa-lg fa-github" aria-hidden="true"></i> Source Code on GitHub
    </a>
 </div>


## Screenshots

 {% capture screenshots %}
 	/_images/project-images/chott-for-ios/chott-ios-1.png
 	/_images/project-images/chott-for-ios/chott-ios-2.png
 	/_images/project-images/chott-for-ios/chott-ios-3.png
    /_images/project-images/chott-for-ios/chott-ios-4.png
    /_images/project-images/chott-for-ios/chott-ios-5.png
    /_images/project-images/chott-for-ios/chott-ios-6.png
 {% endcapture %}
 {% include gallery images=screenshots caption="" cols=3 %}
