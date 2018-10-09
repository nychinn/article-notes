
## Vue Notes


---


Source: https://laracasts.com/series/learn-vue-2-step-by-step/episodes/1

* Create a vue instance, bind it to element in the DOM, specify some data
* For form inputs alone, use v-model directive to bind to instance
* Basic reactivity

```
new Vue({
	el: '#root',
	data: {
		message: 'Hello World'
	}
});
```

---


Source: https://laracasts.com/series/learn-vue-2-step-by-step/episodes/2

* Download Vue Devtools https://github.com/vuejs/vue-devtools
* You can view all Vue instances in the "Vue" tab in inspector
* You can access the elements with the console eg) $vm0
* You can change values of the data through the console
* Every piece of data connected to that value will be changed, as is referred to as the 'source of truth'
* In Jquery, in order to track things you're constantly reaching into the DOM (Confusing way to build apps)
* With Vue, you use the data as your single source of truth


---


Source: https://laracasts.com/series/learn-vue-2-step-by-step/episodes/3

* Filter through array?
* Use v-for directive for 'for loop' eg) v-for="name in names"
* Use v-text directive to show text inside the element instead of putting {{ text }} in
* Idea of reactivity in Vue
* To add a value to an array with javascript/jquery, you would usually have to fetch elements from the DOM
* "Is there a more data-centric way I can do this?"


---


Source: https://laracasts.com/series/learn-vue-2-step-by-step/episodes/4

* Traditional way to change the view is to grab element from the DOM and do stuff to it
* v-on:click directive to listen for a click
* v-on:keyup
* register events over and over @click instead of v-on:click


---


Source: https://laracasts.com/series/learn-vue-2-step-by-step/episodes/5

* Vue always needs an 'el' to be mounted to
* v-bind:title to use vue to load data into that attribute
* can use :title as well as above (shorthand)
























