
## Manage large CSS projects with ITCSS

Date: May 14, 2014
Date Read: November 5th 2018

Source: https://medium.com/@dhg/parallax-done-right-82ced812e61c
Demo: http://davegamache.com/parallax/

### Notes

* Buttery parallax scroll
* First parallax site seen was Ian Coyle's BetterWorld for Nike
* The problem is the majority of sites using parallax suffer terrible scroll performance
* Known to be bad on devices with high pixel density

#### Parallax Do's

* Only use properties that are cheap for browsers to animate
	* translate3d
	* scale
	* rotation
	* opacity
* Anything other than those mention probably won't work at 60fps
* Using `window.requestAnimationFrame` tells browser to animate stuff before next repaint

```
window.requestAnimationFrame(animateElements);
```

* Round values appropriately

```
animationValue = +animationValue.toFixed(2) 
```

* Only animate elements in the viewport
	* Continuing to pass thousands of values during scroll to elements off screen makes no sense
* Animate only absolutely and fixed position elements
	* The author reckons applying animation to a relative/static element makes fps suffer

```
.parallaxing-element {
  position: fixed;
}
```

* Use the natural body scroll
	* Some browsers (like Safari) seem to be laggy on scrolling elements other than `<body>`
* Define all your animations in an object to make code neater

```
keyframes = [
  {
    'duration' : '150%',
    'animations' : [
      {
        'selector' : '.parallaxing-element',
        'translateY' : -120,
        'opacity' : 0
      } , {
        'selector' : '.another-element',
        'translateY' : -100,
        'opacity' : 0
      }
    ]
  }
]
```

#### Parallax Don'ts

* Avoid `background-size: cover` unless you're sure it won't affect performance
	* It's fine when its static but as soon as you try to translate it, it can cause problems
	* If you really need a full bleed background that parallaxes, try other techniques
* Don't bind directly to the scroll event
	* Use interval to update element positions
	* The scroll called a billion time can cause hiccups
	* Update their position every 10ms ish

```
scrollIntervalID = setInterval(animateStuff, 10);
```

* Don't animate huge images or dramatically resize them
	* Forcing browsers to resize images can be costly
	* Scale is okay but don't be too extreme
	* ie) 4000px -> 500px image is a bit much
* Avoid animation too many things at once
































