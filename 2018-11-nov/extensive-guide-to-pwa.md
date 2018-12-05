
## An Extensive Guide To Progressive Web Applications

Date: November 27th 2018
Date Read: December 5th 2018

Source: https://www.smashingmagazine.com/2018/11/guide-pwa-progressive-web-applications/

### Notes

* PWA: Progressive Web Application
* Technologies that make for cool PWAs - service workers, web app manifests, web push notifications, IndexDB/local data
* Smooth experience on the web - PWA
* PWA: combinations of technologies
* With improved UX people spend time on sites and view more ads
* People tend to buy more on a PWA
* With notifications, people are likely to visit more
* "The Financial Times" abandoned native apps in 2011 and has grown into full fledged PWA
* Why build PWA if native app is good enough??

### Stats

* 5 billion devices are connected to the web
* On the mobile web, 11.4 million monthly visitors go to the top 1000 websites, 4 million go to the top 1000 apps
* More users on websites vs native apps
* Users spend average of 188.6 mins in native apps, 9.3 mins on the mobile web
* Native apps leverage power of the OS and send push notifs to users
* Most visitors on the web unlikely to come back
* Devs often put banners on the websites to prompt users to install the app but its annoying

### PWA

* Web apps have rich UX, push notifs, offline support, instant loading
* PWA delivers a rich UX because of several strengths: fast, reliable, engaging
* Fast
	* UI is not flaky
	* Scrolling is smooth
	* App responds quickly to user
* Reliable
	* Normal site forces users to wait, but PWA loads data instanteously from the cache
	* PWA works seamlessly even on 2G
	* Every network request to fetch assets/data goes through a service worker
	* The service worker verifies whether the response is already in the cache
	* When users get content instanteously, they trust the app more
* Engaging
	* Offers native app-like experience
	* Makes use of push notifcations
* What gives PWA an edge over native apps??

### Service Workers

* A service worker is a JS files that runs in the background
* All GET requests to the server go through the service worker
* The service worker acts like a client side proxy
* By intercepting netowrk requests, it takes control over the response sent back to client
* PWA loads instantly because of how service workers offload dependency of network access
* Service workers first responds to the data from the cache
* A service worker can only intercept a network request thats in scope
* A root scoped service worker can intercept all fetch requests from webpage
* Service workers are event driven
* Goes into dormant state when not needed; conserves memory
* To use a service worker, we first gotta register it on the page with JS

```
(function main () {

   /* navigator is a WEB API that allows scripts to register themselves and carry out their activities. */
    if ('serviceWorker' in navigator) {
        console.log('Service Worker is supported in your browser')
        /* register method takes in the path of service worker file and returns a promises, which returns the registration object */
        navigator.serviceWorker.register('./service-worker.js').then (registration => {
            console.log('Service Worker is registered!')
        })
    } else {
        console.log('Service Worker is not supported in your browser')
    }

})()
```
* First need to check if the browser supports service workers
* To register a service worker, we need to provide the URL as a parameter to the `register` function
* `register` is available in `navigator.serviceWorker`
* `navigator` is a web API that allows scripts to register themselves
* `navigator` registration does not happen on every page load
* Browser downloads device worker file only if theres a byte diff between existing service worker and the new one
* To limit service worker scope, one can pass an option parameter

```
if ('serviceWorker' in navigator) {
    /* register method takes in an optional second parameter as an object. To restrict the scope of a service worker, the scope should be provided.
        scope: '/books' will intercept requests with '/books' in the url. */
    navigator.serviceWorker.register('./service-worker.js', { scope: '/books' }).then(registration => {
        console.log('Service Worker for scope /books is registered', registration)
    })
}
```
* The above service worker will intercept requests that have `/books` in the URL
* It won't intercept requests with `/products` but maybe `/books/products`
* Service workers listens for events (install, activate, fetch, push)

#### Installation

* When a service worker has been registered, an installation event is fired
* The installation event is a good place to do the init work - setting up cache, creating objects stores in IndexedDB

```
self.addEventListener('install', (event) => {
    let CACHE_NAME = 'xyz-cache'
    let urlsToCache = [
        '/',
        '/styles/main.css',
        '/scripts/bundle.js'
    ]
    event.waitUntil(
        /* open method available on caches, takes in the name of cache as the first parameter. It returns a promise that resolves to the instance of cache
        All the URLS above can be added to cache using the addAll method. */
        caches.open(CACHE_NAME)
        .then (cache => cache.addAll(urlsToCache))
    )
})
```

* The above will cache some files so the next load is instant
* `self` refers to the service worker instance
* `event.waitUntil` makes the service work wait until all the code has finished loading


#### Activation

* Once a service worker is installed, it can't listen for fetch requests yet
* When a service worker is installed, the `activate` event is fired
* If there's no active service worker in the same scope, the installed SW get activated right away
* If there is an active service worker, the activation of the installed SW is delayed until all tabs using old service worker are closed
* The activation step is a good place to get rid of old caches

```
self.addEventListener('activate', (event) => {
    let cacheWhitelist = ['products-v2'] // products-v2 is the name of the new cache

    event.waitUntil(
        caches.keys().then (cacheNames => {
            return Promise.all(
                cacheNames.map( cacheName => {
                    /* Deleting all the caches except the ones that are in cacheWhitelist array */
                    if (cacheWhitelist.indexOf(cacheName) === -1) {
                        return caches.delete(cacheName)
                    }
                })
            )
        })
    )
})
```

* Above, we're deleting the old cache
* If the name of the the cache doesn't match `cacheWhitelist`, its deleted
* To skip waiting, and immediately activate we use `skip.waiting();`
* When activated, service worker can listen for fetch requests and push events

```
self.addEventListener('activate', (event) => {
    self.skipWaiting()
    // The usual stuff
})
```

#### Fetch event handler

* Whenever a webpage fires a request over the network, the service worker is called
* The fetch handler looks for the requested resource in the cache
* If its in the cache, the fetch handler returns the response with the cached one
* If its not in the cache, it retrieves the requested resource

```
/* Fetch event handler for responding to GET requests with the cached assets */
self.addEventListener('fetch', (event) => {
    event.respondWith(
        caches.open('products-v2')
            .then (cache => {
                /* Checking if the request is already present in the cache. If it is present, sending it directly to the client */
                return cache.match(event.request).then (response => {
                    if (response) {
                        console.log('Cache hit! Fetching response from cache', event.request.url)
                        return response
                    }
                    /* If the request is not present in the cache, we fetch it from the server and then put it in cache for subsequent requests. */
                    fetch(event.request).then (response => {
                        cache.put(event.request, response.clone())
                        return response
                    })
                })
            })
    )
})
```

* `event.respondWith` lets the service worker send a customized response to the client
* For any non-critical request, serve the response from the cache first (Offline-first)
* If any assets is not present in the cache, we get it from the server and cache it for future requests
* Service workers only work on HTTPS websites
* HTTPS has the power to manipulate the response of any fetch request
* If allowed on a HTTP website, people with cruel intent could tamper with the response
* Hosting a PWA on HTTPS is mandatory
* Service workers don't interrupt the normal function of the DOM
* Cannot communicate directly with the webpage
* To send a message to a webpage it makes use of post messages

### Web Push Notifications

* The push notification feature was only available on native apps till the PWA came along
* PWA can alert the user with push notifications too
* PWA can do this even when the browser tab / browser is not open
* A web app has to ask permission to send push notifications
* When a user confirms that they will allow push notifications, a unique subscription token in generated by the browser
* The generated token is unique for the device
* Format of generated token is as follows:

```
{
     "endpoint": "https://fcm.googleapis.com/fcm/send/c7Veb8VpyM0:APA91bGnMFx8GIxf__UVy6vJ-n9i728CUJSR1UHBPAKOCE_SrwgyP2N8jL4MBXf8NxIqW6NCCBg01u8c5fcY0kIZvxpDjSBA75sVz64OocQ-DisAWoW7PpTge3SwvQAx5zl_45aAXuvS",
     "expirationTime": null,
     "keys": {
          "p256dh": "BJsj63kz8RPZe8Lv1uu-6VSzT12RjxtWyWCzfa18RZ0-8sc5j80pmSF1YXAj0HnnrkyIimRgLo8ohhkzNA7lX4w",
          "auth": "TJXqKozSJxcWvtQasEUZpQ"
     }
}
```
* The `endpoint` is unique for every subscription
* On average, thousands of users would agree to receive push notifications
* With the help of the `endpoint` the app would be able to target the users in the future
* The `expirationTime` is the amount of time the subscription will last for that device
* After the `expirationTime` runs out, the browser may generate a new subscription token























