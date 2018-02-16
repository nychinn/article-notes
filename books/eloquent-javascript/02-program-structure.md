
## Eloquent JavaScript

Date notes written: Feb 15, 2017

Source: https://eloquentjavascript.net/3rd_edition/

### Notes

* This chapter is when we start `programming`
* Expand command of JS beyond nouns and sentence fragments

#### Expressions and statements

* Creating values in the main substance of any JS program
* A fragment of code that produces a value is called an `expression`
* Every value that is written literally is an expression
* An expression between parentheses is also an expression, as well as binary and unary operators
* Expressions can contain other expressions like how subsentences are nested in human language
* A subsentence is defined as `a part of a sentence which can stand by itself as a sentence`
* Can allow us to build expressions that can become quite complex
* If an expression == sentence fragment, JS statement == full sentence
* A program is a list of statements
* Simplest statement is expression with semicolon: `!false;` (though useless)
* An expression is content just producing a value
* A statement needs to have some kind of purpose ie) displaying content on the screen, leaves some impression in the world

#### Bindings

* To catch or hold values, JS provides a thing called `binding` or `variable`
* `let caught = 5 * 5` - kind of statement, as it keeps the value inside the program
* The special word `let` defines a binding, and if we want to give it a value we use the operator `=` and an expression it should equal
* Creates a binding called `caught` and uses it to grab hold of the number produced by the expression `5 * 5`. Now you can use the keyword `caught` to express the binding in other parts of the program
* When a binding points to a value, it doesn't mean its tied to that value forever
* The `=` operator can be used on existing bindings to assign a new value
* Imagine bindings as tentacles, rather than boxes. They don't contain values, they grasp them.
* Two bindings can refer to the same value
* When you need to remember something, you grow a tentacle to hold on to it, or you reattach one of your existing tentacles to it
* A single `let` statement can define multiple bindings seperated by commas
* `var` and `const` can also be used to create bindings
* `var` is the way bindings were declared in pre-2015 JS
* `const` stands for constant. Cannot be pointed to a new thing. Useful for bindings that will never change

#### Binding names

* Can be any word that isn't reserved for some other purpose
* Digits can be part of binding names, but must not start with a digit
* Can include dollar signs ($) or underscores but no other punctuation or special charas
* Words with a special meaning such as `const` are keywords and cannot be used
* There are also a number of words that are `reserved for use` in future versions of JS
* Special words: `break case catch class const continue debugger default delete do else enum export extends false finally for function if implements import interface in instanceof let new package private protected public return static super switch this throw true try typeof var void while with yield`

#### The environment

* Collection of bindings and values that exist at one time is called the `environment`
* By default, the environment contains bindings that are part of the language standard .. gives way to interact with the system
* In a browser, there are functions already there to interact the current loaded website to read mouse and keyboard input

#### Functions

* Lots of values in default environment have the type `function`
* A function is a piece of program wrapper in a value
* eg) The binding `prompt` holds a function to show a dialog box asking for user input
* Excecuting a function is called `invoking`, `calling` or `applying` it
* Values given to functions are called `arguments`
* Different functions may need a different number or types of arguments
* `prompt` isn't really used in modern programming because you can't control the visual but its good for debugging

#### The console.log function

* `console.log` isn't a simple binding
* It's actually an expression that retrieves the `log` property from the value held by the `console` binding

#### Return values

* Showing a dialog box or writing text to the screen is a `side effect`
* Lots of functions are useful because of the side effects
* Functions may product values, so this one would not need to have a side effect to be useful
* eg) `Math.max` takes any amount of number arguments and gives back the greatest
* When a function produces a value, it is said to `return` that value

#### Control flow

* When a program has more than one statement, the statements are executed like a story
* `Number(x)` converts a value to a number. Need to use it in `prompt()` because it takes a string
* You can use similar functions for `String(x)` or `Boolean(x)` to convert values to those types

#### Conditional execution

* Not all programs are straight roads
* Branching roads == conditional execution
* Conditional execution is created with the `if` keyword in JS .. will only run if condition is true, or ignore if not
* `isNan` returns true only if argument given is `NaN`
* 
```let theNumber = Number(prompt("Pick a number"));
if (!isNaN(theNumber)) {
	console.log("Your number is the square root of " + theNumber * theNumber);	
}
```
* It would skip the statement if you entered a string like "parrot" because its not a Number
* Each section between the curly braces `{` and `}` is a `block`
* If there's only one condition, you could omit the curly braces
* eg) `if (1 + 1 == 2) console.log('It\'s true'); // True!`
* Use `else` or `else if` to give two or more alternative paths to the condition. These can be 'chained'

#### While and do loops

* Consider a program that outputs all even number from 0 to 12
* The idea of writing a program is to make something less work, not more
* Need a way to repeat code to save time
* This form of control flow is called a `loop`
* Looping control flow allows us to go back to some point in the program to repeat until it meets a condition
* A statement starting with `while` creates a loop
* 
```
let result = 1;
let counter = 0;
while (counter < 10) { 
	result * 2; 
	counter = counter + 1; 
}
console.log(result);
// 1024
```
* Keeps running the loop as long as the expression within the parentheses is `true`
* A do loop is similar to a while loop
*
```
let yourName;
do {
	yourName = prompt("Who are you?");
} while (!yourName);
console.log(yourName);
```
* Keep looping until it gets something that is not an empty string

#### Indenting Code

* Role of indentation inside blocks is to make the structure of the code stand out

#### for loops

* Many loops follow the same pattern as seen in the while examples
* Common in many languages
* 
```
for ( let number = 0; number <= 12; number = number + 2 ) {
	console.log(number);
}
```
* All the statements within the parentheses after `for` are related to the state of the loop
* Must contain two semicolons
* First part before first semicolon initialises the loops
* Second part is the expression that checks if loop should continue
* Final part updates the state of the loop after every iteration

#### Breaking out of the loop

* Having the loop condition equal to false isn't the only way a loop can end
* You can use the special statement `break` to immediately jump out of the enclosing loop
* The `for` loop will never stop unless `break` inside is executed
* The `continue` keyword is similar to `break` in how it influences the progress of a loop
* When `continue` is encountered, control jumps out of the body and into the next iteration

#### Updating bindings succintly

* When looping, a program often needs to 'update' a binding
* Shortcut to add to existing value `counter += 1;`
* Can use similar shortcuts with other arithmetic operators

#### Dispatching on a value with switch

* JS code can look like this too
* 
```
if (x == "value1") action1();
else if (x == "value2") action2(); 
else if (x == "value3") action3(); 
else defaultAction();
```
* There's a construct called `switch` to express a 'dispatch' in a more direct way
* A chain of statements may look better
*
```
switch (prompt("What is the weather like?")) { 
	case "rainy":
		console.log("Remember to bring an umbrella.");
		break;
	case "sunny":
		console.log("Dress lightly."); case "cloudy":
		console.log("Go outside.");
		break; 
	default:
		console.log("Unknown weather type!");
		break; 
}
```
* Can put any number of `case` labels inside the block opened by `switch`

#### Capitalization

* Binding names not not contain spaces, but helpful to use multiple words to describe it
* 
```
fuzzylittleturtle
fuzzy_little_turtle
FuzzyLittleTurtle
fuzzyLittleTurtle
```

#### Comments

* Sometimes you want to include some related thoughts as part of your program
* This is what comments are for
* A comment is a piece of text that are completely ignored by the computer


#### Summary

* A program is built out of statements, which may contain more statements
* Statements tend to contain expressions, which may be built out of smaller expressions
* Putting statements one after another gives you a program excecuted from top to bottom
* You can introduce disturbances in the flow by using conditionals and looping statements
* Bindings are used to file pieces of data under a name, and for tracking states in the program
* JS has useful standard bindings by default
* Functions are special values that encapsulate a program

#### Exercise: Looping a triangle

```
# 
## 
###
#### 
##### 
###### 
#######
```

##### Answer

```
var counter = 0;
var text = '';
while ( counter < 7 ) {
	console.log(text);
	counter ++;
	text += '#';
}
```

#### Exercise: FizzBuzz




















