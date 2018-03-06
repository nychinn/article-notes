
## Eloquent JavaScript

Date notes written: Feb 26, 2018

Source: https://eloquentjavascript.net/3rd_edition/

### Notes

* Functions are the bread and butter of JS programming
* Concept of wrapping a piece of program in a value has many uses
* Way to structure larger programs w/ less repetition
* Associate names with subprograms, and to separate them from each other


#### Defining a function

* Regular binding where the value of the binding is a function
* Function is create with an expressions that starts with keyword `function`
* Functions can have a set of `parameters` and a `body`
* The `body` contains statements that are execured when the function is called
* Functions can have multiple parameters or none at all
* Some functions produce a value and some don't
* `makeNoise()` creates a `side effect`

```
const makeNoise = function() {
	console.log("Pling!");
}

makeNoise();
// Pling!

```

* `power()` produces a value

```
const power = function(base, exponent) {
	let result = 1;

	for ( let count = 0; count < exponent; count++ ) {
		result *= base;
	}

	return result;
};

console.log(power(2,10));
// 1024

```

* A `return` statement determines the value the func returns
* A `return` keyword without an expression will cause function to return `undefined`
* Functions that don't have a return statement also return `undefined`


#### Parameters and scopes

* Parameters to a function act like regular bindings
* The parameters' initial values are given by the `caller` of the function, not inside the function
* Each binding has a `scope`
* The scope is the part of the program that can sense the binding (variable)
* For bindings defined outside the code block or function, the scope is the whole program - refered to as `global`
* Bindings created within a function are refered to as `local`
* Every time a function is called, a new instance of the bindings are created
* Each functions call acts in its own little world (local environment)
* A single function can be understood without knowing much about global environment
* Code blocks with bindings `let` and `const` will be local to that block.

```
let x = 10;
if (true) {
	let y = 20;
	var z = 30;
	console.log(x + y + z);
	// 60
}

// y is not visible here
console.log(x + z);
// 40
```

* Each scope can look out into the scope around it
* Exception is when multiple bindings have the same name


#### Nested scope

* Blocks and functions can be created inside other blocks and functions
* Multiple degrees of locality

```
const hummus = function(factor) {
	const ingredient = function(amount, unit, name) {
		let ingredientAmount = amount * factor;
		if ( ingredientAmount > 1 ) {
			unit += "s";
		}
		console.log(`${ingredientAmount} ${unit} ${name}`);
	};

	ingredient(1, "can", "chickpeas");
	ingredient(0.25, "cup", "tahini");
	ingredient(0.25, "cup", "lemon juice");
	ingredient(1, "clove", "garlic");
	ingredient(2, "tablespoon", "olive oil");
	ingredient(0.5, "teaspoon", "cumin");
}
```

* The `ingredient()` function can see the `factor` binding from outer function
* The bindings in `ingredient()` such as `unit` are not visible in outer function
* Each local scope can see all the local scopes that contain it
* All bindings from blocks `around` it are visible, same as the levels go up
* This is called `lexical scoping`


#### Functions as values

* Function bindings are simply names for a piece of program
* A function value can do all the things that other values do
* Can use a function value in expressions, not just call it
* A binding that holds a function can be assigned a new value

```
let launchMissiles = function() {
	missileSystem.launch("now");
};

if (safeMode) {
	launchMissiles = function() { /* do nothing */ }
}
```


#### Declaration notation

* When the `function` keyword is used at the start of a statement, it works differently

```
function square(x) {
	return x * x;
}
```

* This is a function `declaration`
* Doesn't need a semicolon after the function

```
console.log("The future says: ", future();

function future() {
	return "You'll never have flying cars";
}
```

* This code works even though function is declared `below` the code that uses it
* Function declarations are not part of the regular top-to-bottom flow of control
* Function declarations are conceptually moved to the top of the scope
* They can be used by all code in that scope
* Sometimes useful, cos it gives freedom to order code in a more meaningful way

#### Arrow Functions

* Arrow functions look very different from the other notation for functions
* Instead of the `function` keyword, it uses an arrow `=>`

```
const power = (base, exponent) => {
	let result = 1;
	for ( let count = 0; count < exponent; count++ ) {
		result *= base;
	}
	return result;
};
```

* Arrow comes after list of parameters followed by the body
* It means to express: "This input produces this result"
* When there is only one parameter, the `()` can be omitted
* The following will do the same thing

```
const square1 = (x) => { return x * x };
const square2 = x => x * x;
```

* When a function has no parameters, the parameter list should be empty `()`

```
const horn = () => {
	console.log("Toot");
};
```

* No good reason to have both arrow functions and `function` expressions in JS because they basically do the same thing (minor detail explained later on)
* Arrow functions were introduced in 2015, mainly to write small function expressions in simpler way

#### The call stack

* The way control flows through functions is somewhat involved

```
function greet(who) {
	console.log("Hello " + who);
}

greet("Harry");
console.log("Bye");
```

1. The call to `greet` cause control to jump to start of function (line 2)
2. Function calls `console.log` and returns control to line 2
3. Reaches end of `greet` function and returns to the place that called it (line 4)
4. Calls `console.log` again on the following line
5. Program reaches its end

```
top
	greet
		console.log
	greet
top
	console.log
top
```

* Before the function jumps back to the place that called it, computer must remember the context from which the call happened
* The place where the computer stores this context is the `call stack`
* Every time a function is called, the current context is stored at the top of the `stack`
* When a function returns, it removes the top context froom the stack and continues
* Storing info from the call stack requires space in the computer's memory
* If stack grows too big, the computer will fail - `out of stack space` or `too much recursion`
* You want to avoid any `infinite` functions. It will make the computer run out of space
* All the local execution context is destroyed. All variables declared in local scope are erased, and no longer available (https://medium.com/dailyjs/i-never-understood-javascript-closures-9663703368e8)


#### Optional Arguments

```
function square(x) {
	return x * x;
}
console.log(square(4, true, "hedgehog"));
// 16
```

* `square` is defined with one parameter but when we call with three it doesn't complain. The program just uses the first one and ignores the other two
* JS is extremely broad-minded about the # of arguments you pass to a function
* Pass to many, the extra ones are ignored
* Pass too few, the missing parameters get assigned with the value `undefined`
* The downside of this leniency is that you'll accidentally pass the wrong number of arguments to functions. JS won't even tell you about it
* The upside is that it can allow a function to be called with diff amount of arguments

```
function minus(a,b) {
	if ( b === undefined ) return -a;
	else return a - b;
}

console.log(minus(10));
// - 10

console.log(minus(10,5));
// 5
```

* When you omit some arguments, those will get default values when not given
* If you write `=` operator, you can set your own default value

```
function power(base, exponent = 2) {
	let result = 1;
	for ( let count = 0; count < exponent; count++ ) {
		result *= base;
	}
	return result;
}

console.log(power(4));
// 16

console.log(power(2,6));
// 64
```

#### Closure

* There is the ability to treat functions as values, including the way a local binding can be re-created
* A function can return a function
* What happens to local bindings when the function call that created them is no longer active?

```
function wrapValue(n) {
	let local = n;
	return () => local;
}

let wrap1 = wrapValue(1);
let wrap2 = wrapvalue(2);

console.log(wrap1());
// 1

console.log(wrap2());
// 2
```

* Local bindings are created anew for every call
* Different calls can't overwrite another call's local binding
* The feature of referencing a local binding in an enclosing scope is called `closure`
* A function that `closes over` local bindings is called a `closure`

```
function multiplier(factor) {
	return number => number * factor;
}

let twice = multiplier(2);
console.log( twice(5) );
// 10
```

* When `multiplier()` is called, it creates an environment where `factor` parameter is set to `2`
* The function value it returns is stored in `twice` and remembers the environment
* When called, it multiplies its argument by `2` 🤔

#### Recursion

* It's okay for a function to call itself, but not too often that it overflows the stack
* A function that calls itself is called `recursive`

```
function power(base, exponent) {
	if (exponent == 0) {
		return 1;
	} else {
		return base * power(base, exponent - 1);
	}
}

console.log(power(2,3));
// 8
```

* Function calls itself multiple times with smaller exponents
* Three times slower than the looping version
* Running through simple loop is generally cheaper than calling a func multiple times
* Speed vs elegance, Human friendliness vs machine friendliness
* Worrying about efficiency can be a distraction
* Always start by writing something that's correct and easy to understand
* Recursion is not always an inefficient alternative to looping. Some problems easier to solve with recursion than loops.

https://medium.com/@zfrisch/understanding-recursion-in-javascript-992e96449e03

* When constructing a recursive function in JS, there must always be a leave event
* Leave event is a control statement that allowed the func to exit recursive loop
* Leave event can be an if statement, ternary argument, switch statement, etc
* Recursive function

```
function countDown(n) {
	console.log(n);
	if (n >= 1) countDown(n-1);
}
countDown(5);
```

* Function with for-loop

```
function countDown(n) {
	for (let i=n; i>=0; i--) {
		console.log(i);
	}
}
countDown(5);
```

* Most of the time, it doesn't matter if you use recursion or loops. Up to the programmer
* Though, there are some cases where recursion is the better option
* There was a time where a lot of JS libraries would cache the DOM for easier access
* Recursion made traversing the DOM easier

```
function Traverse(ele, callback) {
	callback(ele);
	ele = ele.firstChild;
	while (ele) {
		Traverse(ele, callback);
		ele = ele.nextSibling;
	}
}
```

#### Growing Functions

* If you find yourself writing similar code multiple times, create a function
* Try make the function have a single concept

```
function printFarmInventory(cows, chickens) {
	let cowString = String(cows);
	while (cowString.length < 3) {
		cowString = "0" + cowString;
	}
	console.log(`${cowString} Cows`);

	let chickenString = String(chickenS);
	while (chickenString.length < 3) {
		chickenString = "0" + chickenString;
	}
	console.log(`${chickenString} Chickens`);
}
printFarmInventory(7, 11);
```

* While loop will keep adding zeros until the number is 3 digits long
* Let the function allow you to add more animals

```
function printZeroPaddedWithLabel(number, label) {
	let numberString = String(number);
	while (numberString.length < 3) {
		numberString = "0" + numberString;
	}
	console.log(`${numberString} ${label}`);
}

function printFarmInventory(cows, chickens, pigs) {
	printZeroPaddedWithLabel(cows, "Cows");
	printZeroPaddedWithLabel(chickens, "Chickens");
	printZeroPaddedWithLabel(pigs, "Pigs");
}

printFarmInventory(7, 11, 3);
```

* Works better but the name `printZeroPaddedWithLabel` is awkward
* Try pick out single concept

```
function zeroPad(number, width) {
	let string = String(number);
	while (string.length < width) {
		string = "0" + string;
	}
	return string;
}

function printFarmInventory(cows, chickens, pigs) {
	console.log(`${zeroPad(cows, 3)} Cows`);
	console.log(`${zeroPad(chickens, 3)} Chickens`);
	console.log(`${zeroPad(pigs, 3)} Pigs`);
}

printFarmInventory(7, 16, 3);
```

* Another principle is not to add cleverness unless you are sure you will need it
* Tempting to write general frameworks for every bit of func. Resist.


#### Functions and Side Effects

* Functions can be divided into those called for side effects vs for their return value
* Though def possible for a function to have both
* The first helper function `printZeroPaddedWithLabel` is called for side effect
* The second version of the function `zeroPad` is called for its return value
* Functions that create values are easier to combine in new ways
* A pure function is a specific kind of value producing function that has no side effects but doesn't reply on side effects from other code
* A pure function doesn't read global bindings
* A pure function, when called with same arguments would produce same values
* A pure function works in any context
* Nonpure functions require more scaffolding to test
* Don't feel bad when writing functions that are not pure. Side effects are often useful.


#### Summary

* Functions when used as expression can create function value
* When used as a statement, can be used to declare a binding
* Arrow functions are another way to create functions
* Key aspect to functions is understanding scope
* Each block creates a new scope
* Parameters and bindings declared in given scope are local, not visible outside of it
* Seperating tasks your program performs into different functions is useful
* Functions help organise program by grouping code into pieces that do specific things


#### Exercises

##### Minimum

```
function min(num1, num2) {
	if ( num1 > num2 ) {
		return num2;
	} else {
		return num1;
	}
}
```

##### Recursion

```
Check if number is even without using %
```

```
function isEven(n) {
	if (n == 0) return true;
	else if (n == 1) return false;
	else if (n < 0) return isEven(-n);
	else return isEven(n - 2);
}

console.log(isEven(75));
```

##### Bean counting

```
function countBs(string) {
	let count = 0;

	for ( let i=0; i<string.length; i++ ) {
		if ( string[i] == 'B' ) {
			count++;
		}
	}

	return count;
}
```

```
function countChar(string, letter) {
	let counter = 0;

	for ( let i=0; i<string.length; i++ ) {
		if ( string[i] == letter ) {
			counter++;
		}
	}

	return counter;
}

function countBs(string) {
	return countChar(string, 'B');
}

console.log(countBs('Baby Got Back'));
```



















