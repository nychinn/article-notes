
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



















