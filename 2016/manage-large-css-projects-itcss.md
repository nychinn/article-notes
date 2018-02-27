
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
* Don't waste time undoing or overriding overly opinionate CSS written before
* Every thing, type of thing has its own predictable place to live








































