
## How We Adopted CSS Grid at Scale

Date: June 4, 2018
Date Read: November 27, 2018

Source: https://alankent.me/2018/06/04/google-indexing-and-javascript-rendering/

### Notes

* A summary of the "Deliver search-friendly JavaScript-powered websites" at Google I/O 2018 [Link](https://youtu.be/PFwUbgvpdaQ)
* Through an e-commerce lens
* How Google crawls and indexes sites
* How Google deals with client-side rendered sites (using React, Vue, Angular ...)
* Client side rendering is when JS in the browser creates HTML
* Server side rendering is when the web server creates HTML that displays in the browser
* Vue website may have to be server rendered to work well with SEO
* Generate a sitemap to be used for indexing
* Google Search Console

### Crawling, Rendering, and Indexing

#### Crawling

* How google collects content to index
* 'Crawling' is retreving pages from the web
* The Google crawler follows `<a href="...">` links on the page
* Sites have a `robots.txt` to block pages from being indexed
* An ecommerce site could put all product pages into `sitemaps.xml` jic
* If JS is used for category nav there might be no `<a href="...">` to crawl through (possible issue with using Vue for navigation)
* To play well with crawlers, sites should have canonical URL for each page
* To index PWA pages, the modern norm is to use JS browser history API
* Allows different URLs in browser history without having to refresh


#### Rendering
* The step between crawling and indexing
* If a page is loaded via server-side


#### Other links to read
[Javascript SEO Experiement](https://www.elephate.com/blog/javascript-seo-experiment/)
[Improve SEO in a one page app](https://ktquez.com/en/posts/essential-guide-to-improve-seo-in-single-page-application-vuejs.html)








