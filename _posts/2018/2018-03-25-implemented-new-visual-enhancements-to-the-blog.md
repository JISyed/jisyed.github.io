---
layout: post
title: "Implemented New Visual Enhancements to the Blog"
date: 2018-03-25 11:54:56 -0500
modified: 2018-03-25 11:54:56 -0500
domain: Code
project: Kiroku
tags: [Jekyll,Liquid,HTML]
description: 
#image:
  #feature: /blog-header-img.png
  #credit: Random Phorographer Guy
  #creditlink: https://unsplash.com/username
comments: false
share: true
---

For a long while, I wanted to refactor the [Project Archive]({{ site.baseurl }}{% link archive-by-project/index.html %}) in order for Jekyll to render that page faster and to access data about my projects in other parts of the blog. 

Previously, projects were merely Jekyll pages with YAML-front-end-matter (YFEM) data and page "content". The problem with this method was that it was difficult to query what projects existed on my blog. I would previously have to loop through all posts to find out.

I wanted to move project data into [Jekyll's data files](https://jekyllrb.com/docs/datafiles/), but all project data would have to be shoved into one giant file, which I didn't like. You also cannot render page content with data files in any easy way. 

The solution to this was [Jekyll's collections feature](https://jekyllrb.com/docs/collections/), a very powerful alternative to data files, which allowed me to make 1 entity (here meaning a project) per file and write content for every entity as if they were pages or posts. For projects, this allowed me to make a file per project, establish project metadata (name, type, domain, etc.), and write pages about every project. For this to work, I added the following data to the `_config.yml`:

```yaml
collections:
  projects:
    output: true
    permalink: /projects/:name/

defaults:
  - scope:
      path: ""
      type: "projects"
    values:
      layout: project
      share: true
      comments: false
```

Jekyll needs to know that I have a collection called `projects`, and every project date file will be placed in a folder called `_projects` (note the underscore). Also, make `output` equal `true` so that Jekyll renders pages for every project in the projects folder. In addition to this, I added some common data into `defaults` so that I don't have to write those values in every YFEM of every project file.

With the project collection implemented, I refactored how projects were listed in the [Project Archive]({{ site.baseurl }}{% link archive-by-project/index.html %}) by looping through them instead of posts. There were multiple loops before, now there are only 2 nested loops. I'm actually not sure if the page is rendering faster, but the code is sure easier to read now.

Now that projects have easy to access metadata, I had the liberty of enhancing the look of the Project Archive by adding a date range, header image, and posts' domains to the project listings. The difference is like night and day. On the left side of the screenshot below is the old Project Archive, and on the right side is the new version:

[![Screen_Shot_2018-03-25_at_12.42.04_PM.png](https://s14.{{ site.external_link_domains.postimage_com }}/pxsq2mks1/Screen_Shot_2018-03-25_at_12.42.04_PM.png)](https://{{ site.external_link_domains.postimage_com }}/image/i522anest/)

<!--more-->

The Project Archive now looks more "rich" and presentable, where as the old version was a little boring and offered little context, unless you clicked on every link.

While I made this visual enhancement, I made other changes including the following:

 - Every Domain (Art, Audio, Code, Game-Dev, Linguistics, and Writing) is now accompanied by a Font Awesome icon. This adds visual context to the Domains.
 - I added a subtle background texture for visual appeal to the blog. The texture was made by Luuk van Baars from [Toptal Designers](https://www.toptal.com/designers/subtlepatterns/shattered/).
 - Blog post pages now use the feature image of their respective projects if a feature image wasn't provided for a post (old version on left and new version on right):

 [![Screen_Shot_2018-03-25_at_12.53.40_PM.png](https://s14.{{ site.external_link_domains.postimage_com }}/jmnim7btt/Screen_Shot_2018-03-25_at_12.53.40_PM.png)](https://{{ site.external_link_domains.postimage_com }}/image/h5brexrx9/)
 
 - Posts that are very long can now be shortened on the home page with a Jekyll `excerpt_separator`. I used `<\!--more-->` (without the backslash). Posts that are shortened have a "Read More" button at the bottom, which will take you to the full post's page (old version on left and new version on right):

 [![Screen_Shot_2018-03-25_at_12.12.39_PM.png](https://s14.{{ site.external_link_domains.postimage_com }}/8bkuxn2c1/Screen_Shot_2018-03-25_at_12.12.39_PM.png)](https://{{ site.external_link_domains.postimage_com }}/image/vpsu9kk99/)
 
 - Different pages on my blog now have different header images (you can go to different archives to see them).
 - I added colored domain labels next to posts listings in the [Yearly Archive]({{ site.baseurl }}{% link archive-by-year/index.html %}) and the [Tag Archive]({{ site.baseurl }}{% link tags/index.html %})
 - I added colored project labels next to posts listings in the [Domain Archive]({{ site.baseurl }}{% link archive-by-domain/index.html %})

 As you can see, Jekyll collections are a really powerful feature if you want your blog to have "data types" that can also be rendered as pages.
