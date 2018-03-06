
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

* The types of values discussed in earlier chapters (numbers, strings, Booleans) are all `immutable` which means its impossible to change existing value of those types
* Can combine or derive new values, but when you take specific string value it will remain the same
* With objects, the content of a value can be modified by changing its properties

#### The log

* Every evening at 10, Jacques records his day
* Once he has enough data, Jacques intends to use stats to see which events relate to his squirrel transformations
* Need to loop over entries and tally how many times the event happens vs squirrel transformations

```
let journal = [];

function addEntry(events, squirrel) {
	journal.push({events, squirrel});
};

addEntry(["work", "touched tree", "pizza", "running", "television"], false);
addEntry(["work", "ice cream", "cauliflower", "lasagna", "touched tree", "brushed tree"], false);
addEntry(["weekend", "cycling", "break", "peanuts", "beer"], true);
```

* Computing correlation
* Use `phi coefficient` to calculate correlation between two numbers ??

```
function phi(table) {
	return (table[3] * table[0] - table[2] * table[1]) / 
		Math.sqrt((table[2] + table[3]) * 
			(table[0] + table[1]) * 
			(table[1] + table[3]) * 
			(table[0] + table[2]);
}
```


```
function tableFor(event, journal) {
	let table = [0, 0, 0, 0];
	for (let i = 0; i < journal.length; i++) {
		let entry = journal[i], index = 0;

		if ( entry.events.includes(event) ) {
			index += 1;
		}

		if ( entry.squirrel ) {
			index += 2;
		}

		table[index] += 1;
	}

	return table;
}
```

* In the `tableFor` function, there's a for-loop that works through each element of the array
* Simpler way to write this kind of loop...

```
for ( let entry of JOURNAL ) {
	console.log(`${entry.events.length} events.`);
}
```

* Will loop over elements of the value given after 'of'
* Not only works for array but also for strings and some other data structures

* Need to find every type of event that occurs in the data set

```
// https://eloquentjavascript.net/code/jacques_journal.js

function journalEvents(journal) {
	let events = [];
	
	for (let entry of journal) {
		for (let event of entry.events) {
			if ( !events.includes(event) ) {
				events.push(event);
			}
		}	
	}

	return events;
}

console.log(journalEvents(JOURNAL));
```

#### Further arrayology

* Methods for removing things at the start of an array are called `unshift` and `shift`

```
let todoList = [];

function remember(task) {
	todolist.push(task);
}

function getTask() {
	return todoList.shift();
}

function rememberUrgently(task) {
	todoList.unshift(task);
}
```

* Add tasks to end of queue by calling `remember(groceries);`
* Get (and remove) front item from queue by calling `getTask();`
* Adds a task to the front of queue by calling `rememberUrgently(task)`
* To search for specific value, arrays provide an `indexOf` method (from start to end)
* To search from end to start, there's a similar method called `lastIndexOf`
* Both `indexOf` and `lastIndexOf` take optional second argument to indicate where to start searching
* `slice` - takes start index and end index and returns array with only elements between those two indices. Start index is inclusive. End is exclusive.
* With slice, when end index is not given it will take all elements after start index
* `concat` - used to glue arrays together

#### Strings and their properties

* You can't store properties in string values
* Such values are immutable and cannot be changed
* Every string value has a number of methods
* Most useful are `slice` and `indexOf`

```
let kim = "Kim";
kim.age = 88;
console.log(kim.age);
// undefined
```

* One different of a string's `indexOf` is that you can search for a string containing more than one character
* Trim method removes whitespace (spaces, newlines, tabs, similar chara) from start and end
* `zeroPad` from prev chapter also exists as a method called `padStart`
* Split a string on every occurence of another string with `split` and join with `join`
* String can be repeated with the `repeat` method
* Can access individual characters the same way as accessing array elements

#### Rest parameters

* Can be useful for a function to accept any number of arguments
* Uses three dots before the function's last parameter
* Use similar three dot notation to call a function with an array of arguments

```
function max(...numbers) {
	let result = -Infinity;
	for ( let number of numbers ) {
		if ( numnber > result ) {
			result = number;
		}
	}
	return result;
}
```

#### Math Object

* `Math` is a grab bag of number related utility functions
* `Math.max` (maximum)
* `Math.min` (minimum)
* `Math.sqrt` (square root)
* `Math` is almost never useful as a value
* If you need to do trig, Math can help - `Math.sin` `Math.cos` `Math.tan`
* `Math.PI` - closest approximation of PI that fits in JS number
* `Math.random` - function that returns a number between zero(inclusive) and one(exclusive)
* To get whole number `console.log(Math.floor(Math.random() * 10))` // number between 0 - 9
* `Math.ceil` - rounds up to nearest whole number
* `Math.abs` - absolute value of a number


























