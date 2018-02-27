
## Modern JavaScript Explained For Dinosaurs

Date: Oct 19, 2017

Source: https://medium.com/the-node-js-collection/modern-javascript-explained-for-dinosaurs-f695e9747b70

### Notes

* Provide historial context of how JS tools have evolved to what they are today
* From 2010, several JS package managers emerged to automate downloading/upgrading libraries
* Package Managers - bower, npm, yarn

### NPM

* `require('moment')` in the JS instead of including it within a script tag within node.js
* The above will work within node.js but not in the browser
* A module bundler will need to be used to create a final output that is browser compatible
* Most popular bundler today is webpack
* Can load babel through webpack, to convert ES6 to work with older browsers
* Task runner used for automating different parts of build process
* For FE dev, tasks can include minifying code, optimizing images, running tests, etc
* Popular task runners are Grunt and Gulp
