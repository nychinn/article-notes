
## Manage large CSS projects with ITCSS

Date: Oct 12, 2016

Source: https://www.creativebloq.com/web-design/manage-large-css-projects-itcss-101517528

### Notes

* ITCSS = Inverted Triangle CSS
* Can use it to create, manage and scale your large-scale CSS project
* CSS is declarative meaning there is no logic or control flow
* CSS operates in a global namespace
* Utilises inheritance, making everything interdependent and brittle
* CSS architecture - way of planning and structuring CSS for large and long running projects

#### Introducting ITCSS

* This methodology involved visualising your entire CSS project as a layered, upside down triangle.
* Represents a model to help order CSS in effective, least wasteful way
* ITCSS defines shared aspects of a project in a logical way
* Compatible with other methodologies like SMACCS, OOCSS and BEM
* Works with or without a preprocessor

#### Prerequisites

* No IDs in the CSS
* IDs are specificity heavyweights, and throw off the specificity
* Build self-contained pieces of UI as reusable components
* ITCSS in favour of a class-based architecture
* Not afraid of adding classes to HTML
* Understand that binding onto classes vs bare HTML elements provides more robust/scalable architecture

#### Key metrics

* ITCSS is a fully managed architecture
* Tells you how to construct entire CSS project
* Helps manage Sass architecture, source order, low-level type, theming, etc
* ITCSS works by ordering entire CSS project by three key metrics

##### 01. Generic to explicit

* Start with generic, low-level, catch-all, unremarkable styles
* Might start with the reset, then to more scope rules like h1-h6
* Maybe explicit rules like `.text-center{}`

##### 02. Low specificity to high specificity

* Lowest specificity appear in the beginning
* Specificity steadily increasing as we progress through the project
* Want to avoid as much of the specificity wars as we can
* Refrain from writing high specificity selectors before lower specificity ones

##### 03. Far-reaching to localised

* Selectors in beginning of the project will affect a lot of the DOM
* Start by wiping margins and paddings off everything
* Next style every type of element, then narrow down to every type of element with certain class
* Gradual narrowing of reach gives us the triangle shape
* Ordering projects to these key metrics allows us to share global/far-reaching styles more effectively
* Reduce likelihood of specificity issues
* Greater extensibility and less redundancy

#### Layers

* Most people attempt to split projects into thematic groups: typographic styles, form styles, gallery styles, etc
* Downside to this is that it isn't sympathetic to how CSS actually works
* Doesn't order CSS in a way that best utilises the cascade, inheritance or specificity
* In ITCSS, each layer is a logical progression from the last
* Gets more explicit and intentioned, and narrows the reach of selectors used
* Writing CSS in a way that only adds up to what was written previously
* Don't waste time undoing or overriding overly opinionated CSS written before
* Every thing, type of thing has its own predictable place to live
* Makes finding and adding styles much simpler
* ITCSS by default has seven layers

##### 01. Settings

* You'd start here if you're using a preprocessor
* Holds global settings for your project
* Should house settings that can accessed from everywhere
* Examples of global settings might be base font size, colour palettes, config, etc

##### 02. Tools

* Holds your globally available tooling - mixins and functions
* Any mixin/function that doesn't need global access should belong in the partial it relates to
* Examples of global tools might be gradient mixins, font-sizing mixins, etc

##### 03. Generic

* The generic layer is the first to produce any CSS
* Houses very high level, far reaching styles
* This layer is seldom modified
* Usually the same across any projects you're on
* Examples are normalize.css, global box-sizing, css resets, etc
* Affects a lot of the DOM, and occurs very early on

##### 04. Elements

* Bare unclasses elements
* What does `<h1>` look like without a class?
* What does `<a>` look like without a class?
* Slightly more explicit than prev layer
* Still very low-specificity but a bit more opinionated than ones above
* Typically last layer with bare, element-based selectors
* Once element-level styles have been defined, all additions/deviations are implemented with classes

##### 05. Objects

* Users of OOCSS would be familiar with the concept of objects
* First layer we find class-based selectors
* Concerned with styling non-cosmetic patterns or 'objects'
* Objects can be a simple `.wrapper` element, or layout systems to things like the media object
* This layer affects less of the DOM than the last layer
* High specificity

##### 06. Components

* Where we style recognisable pieces of UI
* Binding onto classes
* Styles are more explicit
* More designed pieces of the DOM
* Shouldn't find any selectors with lower specificity in this layer
* Majority of your work after intial project set up
* Adding components/features make up majority of dev

##### 07. Trumps

* This layer 'trumps' all the other layers
* Power to override anything that has come before it
* Contain utility, helper classes, hacks, overrides
* A lot of the declarations will include `!important`
* Highest specificity layer
* Narrow focus
* Forms point of the triangle

* Instead of grouping things into 'typographic styles' or 'form styles', we break them into groups based on specificity, reach and explicitness
* Write CSS that only ever adds to and inherits what came before
* Spend little time undoing things because our cascade/specificity are pointing in the same direction
Reduce amount of collisions, leaks and redefintions

#### Partials

* Each layer contains a series of partials
* Recommended naming convention `_<layer>.<partial>.scss`
* eg) `_settings.colors.scss` `_elements.headings.scss` `_components.tabs.scss`
* Partials should be kept as small and granular as possible
* Each partial to contain as much CSS as it needs to fulfil its role






































