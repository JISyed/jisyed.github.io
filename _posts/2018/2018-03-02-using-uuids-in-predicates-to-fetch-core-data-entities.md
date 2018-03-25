---
layout: post
title: "Using UUIDs in Predicates to Fetch Core Data Entities"
date: 2018-03-02 19:15:47 -0600
modified: 2018-03-02 19:15:47 -0600
domain: Code
project: Chott for iOS
tags: [iOS, App, Xcode, Swift, Core Data, NSPredicate]
description:
#image:
  #feature: /blog-header-img.png
  #credit: Drew Hays
  #creditlink: https://unsplash.com/drew_hays
comments: false
share: true
---

Usually, when you want an object in code to have a unique ID, a practical solution would be to use something like a GUID (or in Apple's SDKs: a UUID). These IDs can be converted into strings for serialization purposes, but comparing the IDs as strings is probably not an optimal task.

In iOS 11, Apple allowed Core Data entities to have a new type of attribute: UUID. According to [this Stack Overflow answer](https://stackoverflow.com/a/45685319), the UUID will be stored as a binary when that entity is saved with Core Data, which is more optimal than using strings for storage. This can be used to give your data objects a unique identity when needed.

If you needed to fetch an object (or objects) from Core Data based off a UUID, this can now be done using [`NSPredicate`](http://nshipster.com/nspredicate/) objects, but you have to cast the UUID as `CVarArg` in order for the predicate code to work.

---

Here's an example of what can be done:

Suppose you had two entities in your iOS 11 app:  
 - A `Project` which has a UUID (called `id` in code) and relevant data
 - And a `Session` which holds time information and the `Project`'s UUID (called `projectId` in code).

If you were given a `Project` object and wanted to fetch an array of `Session` objects matching that project's ID, the following is a good way of doing that:

```swift
func getSessions(forProject proj: Project) -> [Session]? {
    let requestSessions: NSFetchRequest<Session> = Session.fetchRequest()

    // Make a predicate asking only for sessions of a certain "projectId"
    let query = NSPredicate(format: "%K == %@", "projectId", proj.id! as CVarArg)
    requestSessions.predicate = query

    // Perform the fetch with the predicate
    do {
        let foundEntities: [Session] = try CoreDataService.getContext().fetch(requestSessions)
        return foundEntities
    } catch {
        let fetchError = error as NSError
        debugPrint(fetchError)
    }

    return nil
}
```

Notice the initializer for `NSPredicate` takes a format string representing a query into Core Data. `NSPredicate` also allows for use of a Swift closure instead of a type-unsafe string for query, but quite unfortunately, Core Data will NOT take predicates that were initialized with a closure; it needs the silly formatted string.

The formatted string is simple enough. The parameter represented by `"%K"` is the key of the attribute you want to search for, and the `"%@"` is the value of the search. The key we want is `Session`'s attribute `projectId`, and we are searching for the UUID object represented in code as `proj.id`, but this must be casted as `CVarArg` or the code won't work.

After setting the predicate and performing the fetch, it should return an array of `Session` objects associated with the given `Project`, if they exist in persistent storage of Core Data.

This code would have worked fine if UUIDs were converted to strings, but string comparison is usually slow, and this can add up if there are many instances of an entity you want to search for.
