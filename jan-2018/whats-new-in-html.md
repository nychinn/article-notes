
# What's New in HTML 5.2

Date: Jan 08, 2018

Source: https://bitsofco.de/whats-new-in-html-5-2/

### New Features

* New `<dialog>` element that is hidden from view unless open attribute is applied
* `<dialog>` open attribute can be toggle by calling `show()` and `close()` methods
* `<dialog>` has limited browser support atm. Works in Chrome though

### Newly Valid Practices

* Can now use multiple `<main>` elements as long as only one is visible to the user at one time
* `<main>` elements that are not visible should use the 'hidden' attribute
* With `<main>`, other methods for hiding element will not be valid. eg) `display:none` or `visibility: hidden`
* Defining inline `<style>` block within the `<body>` element is now valid
* Note that styles are still recommended to be in `<head>` for performance reasons
* `<legend>` represents caption for form fields inside `<fieldset>`. It can now include heading elements instead of just plain text

### Newly Invalid Practices

* With HTML 5.2, only valid children of `<p>` are phrasing content [(definition here)](https://www.w3.org/TR/2011/WD-html5-20110525/content-models.html#phrasing-content-0)
* `<p>` can't have inline blocks, inline tables, float or positioned blocks
* No more strict doctypes

