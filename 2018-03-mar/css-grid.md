
## How We Adopted CSS Grid at Scale

Date: March 01, 2018
Date Read: March 26, 2018

Source: https://julian.is/article/css-grid-at-scale/

### Notes

* Rachel Andrew curated a list of sites using CSS Grid https://cssgrid.design/


### A quick primer on CSS Grid

* CSS Grid standardizes the approach to layouts on the web
* This CSS Grid spec has been seven years in the making
* CSS originally proposed by Microsoft in April 2011
* Unprefixed ver of spec available in Firefox, Chrome, Safari in March 2017
* Microsoft released Edge 16 with full support on October 16, 2017
* Thomasnet.com uses CSS Grid, wanted to future proof the site with lean front-end
* Recommended article: https://hackernoon.com/how-css-grid-beats-bootstrap-85d5881cf163

### Our CSS Grid 'aha' moment

* Grid Template Areas - ability to switch order of elements without touching markup

### Resolving the CSS Grid vs Flexbox argument

* "Can't you just do this with Flexbox?"
* Flexbox allows you to setup rules in a single dimension. You gotta choose either rows or columns but not both
* CSS Grid is two dimensional. Allows you to address both rows and columns to provide a deeper set of rules
* While building Thomasnet.com, the devs agreed to use CSS Grid at layout level and Flexbox in component level (arrange child elements of components)

### Laying the CSS Grid foundation

* Team of five frontend developers had to finish site in three months
* They created a simple Sass mixin to help keep consistent gutter

```
@mixin display-grid {
	display: grid;
	grid-template-rows: auto;
	grid-gap: 1.5em;
}
```

* They would include this mixin at the container level of sections they wanted to use the grid on

```
.container {
	@include display-grid;
	grid-template-columns: repeat(2, 1fr);
}
```

* Also created resuasble classes to make effort to maintain a DRY approach
* For different columns of elements

### Fallbacks for browsers without support

* They used Modernizr as their fallback approach
* When CSS Grid is not available, Modernizr adds `.no-cssgrid` to the `html` tag so you can use floats for those browsers instead (could also use @supports css)
* They preferred to seperate this code from the others (so can be in another partial)












