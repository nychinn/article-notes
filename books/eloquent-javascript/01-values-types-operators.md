
## Eloquent JavaScript

Date notes written: Feb 14, 2017

Source: https://eloquentjavascript.net/3rd_edition/

### Notes

* There's only data in the computer's world
* You can read data, modify data, create new data
* Data is stored in long sequences of bits
* Bits are any kind of two-valued things ie) zeros and ones
* Binary! 1 = 1, 2 = 10, 3 = 11, 4 = 100, 5 = 101, 6 = 110, 7 = 111, 8 = 1000, 9 = 1001, 10 = 1010
* Binary number: 00001101, or 8+4+1, or 13

#### Values

* Typical modern computer has more than 30 million bits in its volatile data storage (working memory)
* Non volatile storage (hard disk, etc) tends to have a few orders of magnitude more
* Bits are seperated into chunks that represent pieces of info
* In the JS environment, these chunks are called values
* Values can be numbers, text, functions, etc

#### Numbers

* Values of the 'number' type are numeric values
* JavaScript uses 64 bits to store a single number value
* Computer memory used to be a lot smaller so people used to use 8 or 16 bits to represent numbers

#### Arithmetic

* `+` and `*` symbols are called operators
* Follows order of operations
* When in doubt, use parentheses
* `%` is used to represent the remainder operation aka modulo

#### Special numbers

* `Infinity` or `-Infinity`
* `NaN` is 'not a number'

#### Strings

* Strings are used to represent text
* Use single quotes, double quotes or backticks to mark strings
* Use backslash to escape quote character inside a string
* Strings cannot be divided, multiplied or subtracted but the `+` operator can be used to concatenate strings
* Backquoted strings are usually called template literals
* Template literals can embed other values eg) `half of 100 is ${100 / 2}`
* Something inside `${}` in a template literally will be computer, converted to string and included at that position

#### Unary operators

* Not all operators are symbols
* One example is the `typeof` operator, tells you the type of value it is
* `console.log(typeof 4.5) // number`
* `console.log(typeof "x") // string`
* Operators that use two values are called binary operators
* Operators that take one value are called unary operators
* The minus operator can be use both as a binary operator or as a unary operator

#### Boolean values

* Has just two values: `true` or `false`
* `console.log(3 > 2) // true`
* `console.log(3 < 2) // false`
* `>` and `<` are binary operators
* Similar operators are `>=`, `<=`, `==`, `!=`
* Strings can also be compared
* Uppercase letters are always 'less' than lowercase ones
* There is only one value in JavaScript that is not equal to itself
* `console.log(NaN == NaN) // false`
* `NaN` is supposed to denote nonsensical computation

#### Logical operators

* There are some operations that can be applied to Boolean values themselves
* JS supports three logical operators `and`, `or`, and `not`
* `&&` represents `and`
* `||` represents `or`
* `!` represents `not` - flips the value given to it
* Ternary operators operate on three values
* `console.log(true ? 1 : 2) // 1`
* `console.log(false ? 1 : 2) // 2`
* This is also called the conditional operator
* The value on the left of the question mark 'picks' which of the other two values will come out. When true, it picks middle value. When false, it picks right value.

#### Empty values

* Two special values `null` and `undefined` that are used to denote the absence of a meaningful value
* These carry no info
* The difference in these two don't matter most of the time
* Treat them as mostly interchangeable

#### Automatic type conversion

* JavaScript goes out of its way to accept almost any program you give it
* `console.log(8 * null) // 0` - automatically changes null to 0
* `console.log("5" - 1) // 4` - automatically changes the string to number
* `console.log("5" + 1) // 51` - automatically changes the number to string
* `console.log("five" * 2) // NaN`
* `console.log(false == 0) // true`
* When operator is applied to 'wrong' type of value, JS will silently convert to the type it needs
* This is called `type coercion`
* When you don't want automatic type conversions, you can use `===` and `!==`
* Use three-character comparison operators to prevent unexpected type conversions

#### Short-circuiting of logical operators
















