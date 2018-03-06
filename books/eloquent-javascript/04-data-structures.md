
## Eloquent JavaScript

Date notes written: March 6, 2018

Source: https://eloquentjavascript.net/3rd_edition/

### Notes

* Numbers, Booleans and strings are the atoms that data structures are built on
* Many types of info require more than one atom though
* Objects allow us to group values together to build more complex structures
* The 'programs' we built so far are limited by basic data structures
* Chapter introduce basic data structures to be able to write useful programs


#### The weresquirrel

* Hypothetical problem: Between 8-10pm Jacques transforms into weresquirrel
* Worries about being eaten by neighbour's cat
* End up locking windows and doors of his room at night, and putting walnuts on ground
* Keeps daily log to narrow down condition that causes the transformations

#### Data sets

* JavaScript has arrays that help us store lots of data
* `let listOfNumbers = [2, 3, 5, 7, 11]`
* Notation to retrive elements inside array also uses square brackets
* First element is read with `listOfNumbers[0]`
* Zero-based counting

#### Properties

* `myString.length` accesses `length` property of `myString`
* Almost all JavaScript values have properties. Exceptions are `null` and `undefined`
* If you try to access property on nonvalues, you will get an error
* Two main ways to access properties in JS are with dot and with square brackets
* Both `value.x` and `value[x]` access a property on `value`
* Different is how `x` is interpreted
* Using dot - word is literally name of property
* Using square brackets - expression between brackets is evaluated to get property name
* Can't use dot notation with numbers or string with spaces

#### Methods

* Both string and array objectst contain a num of properties that hold function values
* Every string has a `toUpperCase` and `toLowerCase` property
* Properties that contain functions are generally called `methods` of the value
* eg) `toUpperCase` is a method of a string
* `Array.push()` adds values to end of aray
* `Array.pop()` removes value from end of aray
* A stack in programming is a data structure that allows you to push values on it and pop out again (thing you added last is removed first)

#### Objects

* Set of daily log entries can be represented as an array
* Each entry needs to store list of activities and Boolean value to show whether Jacques turned into a squirrel or not
* Values of the type `object` are arbitrary collections of properties
* One way to create an object is by using curly brace notation

```
let day 1 = {
	squirrel: false,
	events: ['work', 'touched tree', 'pizza', 'running']
};
console.log(day1.squirrel); // false
console.log(day1.wolf); // undefined
day1.wold = false;
console.log(day1.wolf); // false
```

* Inside curly braces, we give a list of properties separated by commas
* Each property has a name, after the colon, a value
* Curly braces have two meanings in JS
* At the start of a statement, they start a block of statements. In other positions, they describe an object
* Objects are like octopuses with any number of tentacles, each with a name tattooed to it
* To find out what properties an object has, you can use the `Object.keys` function. You give it an object and it returns array of strings - object property names
* You can use `Object.assign` to copy properties from one object into another

```
let objectA = {a: 1, b: 2};
Object.assign(objectA, {b: 3, c: 4});
console.log(objectA);
// {a: 1, b: 3, c: 4}
```

* Arrays are just a kind of object specialised for storing sequences of things
* If you evaluate `typeof[]`, it produces `"object"`

```
let journal = [
	{ 
		events: ["work", "touched tree", "pizza", "running", "television"],
		squirrel: false
	},
	{
		events: ["work", "ice cream", "cauliflower", "lasagna", "touched tree", "brushed teeth"],
		squirrel: false
	},
	{
		events: ["weekend", "cycling", "break", "peanuts", "beer"],
		squirrel: true
	}
]
```

#### Mutability

* 






















