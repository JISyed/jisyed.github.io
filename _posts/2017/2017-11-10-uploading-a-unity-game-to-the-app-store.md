---
layout: post
title: "Uploading a Unity game to the App Store"
date: 2017-11-10 07:12:27 -0600
modified: 2017-11-14 09:07:27 -0600
domain: Game-Dev
project: Gyra
tags: [Unity3D, Ludum Dare, iOS, Xcode, App Store]
description:
#image:
  #feature: /blog-header-img.png
  #credit: Drew Hays
  #creditlink: https://unsplash.com/drew_hays
comments: false
share: true
---

Submitting to the App Store is a pretty hefty task. While submitting Gyra, I sort of documented as much of the process as I could. This is not by any means comprehensive, as I omit a lot of details about iTunes Connect. However, I hope that this will still be sort of a helpful guide in submitting Unity games to the App Store.

The following instructions below require subscribing to the Apple Developer Program (which is $99 a year).

--------

### Make A Distribution Certificate

Certificates are used by Apple to sign your app, thus identifying you as the developer. Certificates are tied to a computer and there are multiple kinds (like for development and for distribution). The following procedure is for getting a certificate to submit to the App Store:

 - Login to your Apple Developer account and go to **Certificates, Identifiers & Profiles**.
 - Press the <i class="fa fa-plus" aria-hidden="true"></i> button on the top right corner.

[![gyra_App_Submis_Certifi1.png](https://s8.postimg.org/9e84gmwdh/gyra_App_Submis_Certifi1.png)](https://postimg.org/image/hwhkkz2w1/)

 - There are many types of certificates. For a distribution certificate, select **App Store and Ad Hoc** and press Continue.

[![gyra_App_Submis_Certifi2.png](https://s8.postimg.org/lsuwh05w5/gyra_App_Submis_Certifi2.png)](https://postimg.org/image/y7hohbxe9/)

 - It will tell you to create a Certificate Signing Request. You will eventually send this CSR file to Apple, which in effect is like *asking* Apple for permission to distribute your app. The certificate itself is the granted permission to distribute. Click continue.
 - Open the **Keychain Access** app on your Mac (remember that a certificate is tied to a Mac, so you can only distribute from the Mac with an installed distribution certificate).
 - Go to the menu *Keychain Access ▶ Certificate Assistant ▶ Request a Certificate From a Certificate Authority...*
 - Provide your email in *User Email Address*, and your name in *Common Name*. Do not fill out *CA Email Address*.
 - Select **Save to disk** and click Continue

[![gyra_App_Submis_Certifi3.png](https://s8.postimg.org/553eegled/gyra_App_Submis_Certifi3.png)](https://postimg.org/image/wfopmdob5/)

 - Save the file `CertificateSigningRequest.certSigningRequest` in a convenient directory (like the `Desktop` folder, for example).
 - Back on the Apple Developer site, you should see the field *Upload CSR File*. Drag and drop your `.certSigningRequest` file **onto** the button that says *Choose File*, then click Continue.
 - Your certificate should be ready. Download it and double click on it. Xcode should open, and the certificate should be installed (it won't give you any confirmation of that, unfortunately).


### Make App ID

An App ID is a unique identifier for each app on the App Store. Typically, this ID is based off your app's Bundle Identifier (that can be found in your Xcode project's settings).

 - To make an App ID, go back to the **Certificates, Identifiers & Profiles** section of the Apple Developer site, and click on **App IDs** on the left side.
 - Press the <i class="fa fa-plus" aria-hidden="true"></i> button in the top right corner.

[![gyra_App_Submis_App_ID1.png](https://s8.postimg.org/6k4z30705/gyra_App_Submis_App_ID1.png)](https://postimg.org/image/w2xbg0qk1/)

 - Enter name for your App ID. This is typically the name of your app.
 - Select **Explicit App ID**, and provide a *Bundle ID* (it must be the *Bundle Identifier* of your app in the Xcode project's settings). Click Continue.

[![gyra_App_Submis_App_ID2.png](https://s8.postimg.org/cl2o091dx/gyra_App_Submis_App_ID2.png)](https://postimg.org/image/42t7vwuv5/)

 - Click Register, and then click Done.


### Distribution Provisioning Profile

A Provisioning Profile is kind of like a "package" that ties your certificate (your computer) to your app, and your testing devices (for development or ad hoc profiles). Provisioning profiles can authorize running an app on a test device (development) or for submitting it on the App Store (distribution). The following instructions are for making a Provisioning Profile suitable for submitting to the App Store:

 - Back to the **Certificates, Identifiers & Profiles** section of the Apple Developer site, and click on **Provisioning Profiles** on the left side.
 - Press the <i class="fa fa-plus" aria-hidden="true"></i> button.

[![gyra_App_Submis_Prov_Prof1.png](https://s8.postimg.org/pp88cyoat/gyra_App_Submis_Prov_Prof1.png)](https://postimg.org/image/e048ozxc1/)

 - Select **App Store** and click Continue.

[![gyra_App_Submis_Prov_Prof2.png](https://s8.postimg.org/w2xbg88md/gyra_App_Submis_Prov_Prof2.png)](https://postimg.org/image/at9p5dsbl/)

 - Select the *App ID* you just made from the drop down menu, and click Continue.

[![gyra_App_Submis_Prov_Prof3.png](https://s8.postimg.org/kdtbs9x39/gyra_App_Submis_Prov_Prof3.png)](https://postimg.org/image/jbj59qe9t/)

 - Select your distribution certificate and click Continue.

[![gyra_App_Submis_Prov_Prof4.png](https://s8.postimg.org/wfopmej6d/gyra_App_Submis_Prov_Prof4.png)](https://postimg.org/image/tllk8yh01/)

 - Now name your Provisioning Profile. Choose something very specific. I personally chose `GyraiOSDistributionAppStore`. Click Continue.

[![gyra_App_Submis_Prov_Prof5.png](https://s8.postimg.org/f2ef7k3at/gyra_App_Submis_Prov_Prof5.png)](https://postimg.org/image/67dkx1ei9/)

 - Download the Provisioning Profile and double click it. It should install, but you will not get confirmation for that.

[![gyra_App_Submis_Prov_Prof6.png](https://s8.postimg.org/r49t1pzol/gyra_App_Submis_Prov_Prof6.png)](https://postimg.org/image/6k4z38jxd/)

You may have to repeat these same steps for a Developer Provisioning Profile (which allows testing locally in your device). You would select **iOS App Developer** instead of **App Store** when choosing the type of profile. You may also have to provide mobile device UDIDs to allow testing (Xcode might take care of this for you, if you plug in your device to your Mac while Xcode is open).


### Setting up the Xcode project with the Provisioning Profile
 - Back in Xcode, go to project settings. Make sure that you select the app target
 - Uncheck *Automatically manage signing*

[![gyra_App_Submis_Uploadi_Tunes_Connect1.png](https://s8.postimg.org/s6jzk9q7p/gyra_App_Submis_Uploadi_Tunes_Connect1.png)](https://postimg.org/image/bvjvnydpt/)

 - For all Release Signing sections, provide the Distribution Provisioning Profile.
 - For Development Signing section, provide a Developer Provisioning Profile. (Note that if this doesn't work, change it to the Distribution Profile instead.)

[![gyra_App_Submis_Uploadi_Tunes_Connect2.png](https://s8.postimg.org/rh177x53p/gyra_App_Submis_Uploadi_Tunes_Connect2.png)](https://postimg.org/image/cxu26ibyp/)

 - Now go to the *Product* menu and select *Archive*. It should build a package that is ready for submission to the App Store.
 - If archiving fails, try changing the Signing (Development) section to use the Distribution Provisioning Profile.

When it's done, it will load a window called the Organizer where you can validate and upload your app.
But first, Apple needs to have a record for this app on iTunes Connect before you can upload it to the App Store.


### New app on iTunes Connect
 - Login to iTunes Connect (you must be a paying developer), and go to **My Apps**.
 - Click on the <i class="fa fa-plus" aria-hidden="true"></i> button and select *New App*.

[![gyra_App_Submis_Uploadi_Tunes_Connect3.png](https://s8.postimg.org/dncuivrxx/gyra_App_Submis_Uploadi_Tunes_Connect3.png)](https://postimg.org/image/4fkm26kvl/)

 - Fill out the form provided. Check *iOS*. The *Bundle ID* is the App ID we created. The *SKU* is a unique ID; try giving it a relevant name. It may possible be taken though, so come up with something very unique.

[![gyra_App_Submis_Uploadi_Tunes_Connect4.png](https://s8.postimg.org/hwhkl2amt/gyra_App_Submis_Uploadi_Tunes_Connect4.png)](https://postimg.org/image/9qzimwmdt/)

In my case, it was the app name that was taken. This is the name that shows up on the App Store. It also must be unique like the SKU. I changed mine to add a little more detail. Press Create when you are done.

[![gyra_App_Submis_Uploadi_Tunes_Connect5.png](https://s8.postimg.org/rtsle4ait/gyra_App_Submis_Uploadi_Tunes_Connect5.png)](https://postimg.org/image/tllk90tvl/)



### Submitting Build to iTunes Connect
 - Go back to the Organizer in Xcode.
 - Go to your app archive and validate it first.
 - It will ask for your Distribution Provisioning Profile before continuing.
 - If validation fails, resolve any issues mentioned and try again.
 - Once validation succeeds, click **Upload to App Store...**

 [![gyra_App_Submis_Uploadi_Tunes_Connect6.png](https://s8.postimg.org/agiaz8zs5/gyra_App_Submis_Uploadi_Tunes_Connect6.png)](https://postimg.org/image/e048p22ht/)

Note that Apple does some processing on your uploaded build before you can choose it on iTunes Connect. You may have to wait for an hour or more.


### Prepare App Submission

Apple will send you an email when they have finished processing your uploaded app.

 - Once that happens, go to *iTunes Connect ▶ My Apps*.
 - On the *App Store* tab, fill out all of the required information needed for app submission. There is too much of that to cover here, but it should be easy to figure out.
 - You will need at least 2 screenshot: one for a 5.5" iPhone and the other for a 12.9" iPad. You typically get screenshots by running the app on an iOS Simulator and pressing `Command + S`.
 - App Previews are basically video previews of your app that autoplay in the App Store. Apple has a good reference about making App Previews [here](https://developer.apple.com/app-store/app-previews/). However, I must warn that you need a 5.5" iPhone (any "Plus" sized iPhone) and a large iPad (9.7"+ suffices) in order to have the necessary App Previews needed for the App Store. Fortunately, App Previews themselves are not required when submitting an app.
 - On the *Prepare for Submission* page, scroll down to the *Build* section and you should be able to select the build you recently uploaded. If you want to make newer builds later, don't forget to increment the build number and version number in the Xcode project's settings.
 - After you have filled out everything, click **Submit for Review** towards the top of the submission page. Apple will soon review the app for approval.

If Apple emails you saying they they approve of your app, it may still take about a day for it to actually show up on the App Store.


