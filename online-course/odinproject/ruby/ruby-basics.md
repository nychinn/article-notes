
## Ruby Basics

Source: https://www.theodinproject.com/courses/web-development-101/lessons/ruby-basics?ref=lnav

* Language designed for programmer happiness
* What take dozens of lines in Java or hundred in C could take a couple in Ruby
* Ruby prepackages a lot of sneaky functions into easy to use methods
* Ruby is close to Python
* Sort of resemble romance languages - once you learn one, not hard to pick up another
* Python used more for data-intensive and processor heavy apps
* Ruby secret weapon - Ruby on Rails
* Rails has been optimised to write code faster, and iterate more frequently
* Quirks and nifty tricks you don't see in JS
* Learn new terminology that will pop up in pretty much any other language





## Ruby in 100 Minutes

Source: http://tutorials.jumpstartlab.com/projects/ruby_in_100_minutes.html

### Ruby History

* Ruby was released in 1994 by a developer known as Matz
* Matz was a self-described "language geek" and big fan of Perl
* His idea was to create language flexible/powerful like Perl but more expressive in syntax
* Ruby grew an audience quickly in Japan
* No docs not in Japanese until 2000
* Back then, if you wanted to learn Ruby you had to learn Japanese first
* Dave Thomas created Ruby doc for the English speaking world https://pragprog.com/book/ruby/programming-ruby
* US Ruby Community numbered in the 100s from 2000-2005
* In 2004-2005 a Chicago company 37Singals hired a young dev to build a web app. Gave him freedom for the implementation so David (DHH) decided to use Ruby.
* 37Signals is now Basecamp. Relied on core library and handful of helper libs. This approach was a hit and helped grow the Ruby popularity.

### 1. Instructions & Interpreters

* Ruby is an interpreted language - can't run on your processor directly
* Ruby has to be fed into a middleman called the "virtual machine"
* The VM takes in Ruby code on one side and speaks natively to the OS and processor on the other
* You can write Ruby code once and execute on diff OS
* Two ways to execute: through IRB and through command line
* Run Ruby from command line: ruby my_program.rb

#### Run Ruby from IRB

* One of the first lang to popularise "REPL" - Read, Evaluate, Print, Loop
* IRB - Interactive Ruby Shell
* Sort of like a calculator - every time you input an intruction, IRB executes it and shows the result
* IRB best used as scratch pad for experimenting
* Start IRB by typing `irb` in the terminal

### 2. Variables

* declare variable: `a = 5`
* Ruby evalutes right to left
* Ruby variables can hold any kind of data and even change data they hold
* Ruby variables always start with lowercase letter, no spaces, no special characters
* Snake case where each word is lowercase and connected by underscore
* Named after meaning of their contents, not type of contents
* Generally aren't abbreviated

#### Good Variable Names

* `count`, `students_in_class`, `first_lesson`

#### Bad Variable Names

* `studentsInClass` - uses camel case; should be `students_in_class`
* `1st_lesson` - variables can't start first a number; should be `first_lesson`
* `students_array` - includes data type; should be `students`
* `sts` - abbreviates; should be `students`

#### Exercises

* `time_machine` - good name
* `student_count_integer` - bad name; should be `student_count`
* `homeworkAssignment` - bad name; should be `homework_assignment`
* `3_sections` - bad name; should be `three_sections`
* `top_ppl` - bad name; should be `top_people`

### 3. Strings

* Ruby string always uses double quotes
* Programming strings are used to store collections of letters and numbers
* `greeting = "Hello World"`
* Get substring by writing `greeting[0..4]` This will get `Hello` (0,1,2,3,4)
* Ruby interprets negative positions to count from end of string
* `greeting[6..-2]` will get `Everyone` cos `E` is in position 6 and `e` is -2 from the end

#### Common String Methods

* `greeting.length` will bring back length of string
* `sentence.split` will break a sentence stored into a string into words
* `sentence.split(",")` will split where the argument is in the string
* `.gsub` and `.sub` are like using Find and replace in a word processor
* `.sub` replaces one single occurance
* `.gsub` replaces all occurances
* Both need two arguments - first the substring, second the string you want to replace it with
* `greeting.gsub("Everyone!", "Friends!")`

#### Combining Strings and Variables

* String concatenation: Join strings together with a plus sign (like JS)
* String interpolation: Stick data in middle of string 

```
name = "Frank"
puts "Good morning, #{name}!"
```

* Can put any Ruby code inside brackets when interpolating
* All interpolated variables are evaluated first

### 4. Symbols

* Symbols are halfway between a string and a number
* Symbol starts with a colon then one or more letters, `:flag` or `:best_friend`
* Symbols are a stripped down string with no methods and no string interpolation
* A symbol is like a named integer. Any value within the VM will give same value. Like a constant?

### 5. Numbers

* For loop in JS would be like

```
for ( var i = 0; i < 5; i++ ) {
	console.log("Hello, World");
}
```

* For loop in Ruby (we're using `times` method and a block)

```
5.times do
	puts "Hello World!"
end
```

### 5. Blocks

* A block starts with the keyword `do` and ends with `end`
* When a block contains a single instruction - `5.times{ puts "Hello World!" }`
* Blocks are a parameter passed into a method call
* Many methods accept blocks, like the `.gsub` method
* If you need to reference a value you can specify inside pipe characters

```
5.times do |i|
	puts "Hello, World!"
end
```

```
5.times do |i|
	puts "#{i}: Hello, World!"
end
```

* Uppercase every e: `"this is a sentence".gsub("e"){|letter| letter.upcase}`


### 7. Arrays

* When we're writing a program, we need to deal with a collection of data
* `meals = ["Breakfast", "Lunch", "Dinner"]`
* `meals << "Dessert` - shovel operator to add to end of array
* `meals[2]` - square brackets to fetch elements at a specific position
* `meals.last` - convenience method

#### Common Array Methods

* one = ["this", "is", "an", "array"]
* `.sort` - return a new array in alphabetical or ascending value order
* `.each` - iterate through each element one.each `one.each{|x|print x, " "}`
* `one.collect{|x| x + "!"}` - creates new array
* `one.first` - first element in array
* `one.last` - last element in array
* `one.shuffle` - shuffles array elements


### 8. Hashes

* Hash is a collection of data where each element of data is addressed by a name
* Analogy - fridge, keep track of product in the fridge. don't care about the shelf its on, just the name of it

#### Key/Value pairs

```
produce = {"apples" => 3, "oranges" => 1, "carrots" => 12}
puts "There are #{produce['oranges']} oranges in the fridge"
```

```
produce["grapes"] = 221
produce
produce["oranges"] = 6
produce
produce.keys
produce.values
```

* Shorthand syntax

```
produce = {apples: 3, oranges: 1, carrots: 12}
puts "There are #{produce[:oranges]} oranges in the fridge."
```

### 9. Conditionals

* Conditional statements evaluate to `true` or `false` statements
* Common conditional operators `==`, `>`, `>=`, `<` and `<=`

```
def water_status(minutes)
	if minutes < 7
		puts "The water is not boiling yet"
	elsif minutes == 7
		puts "It's just barely boiling"
	elsif minutes == 8
		puts "It's boiling!"
	else
		puts "Hot! Hot! Hot!"
	end
end

water_status(5)
```

### 10. Nil or Nothingness

* `nil` is Ruby's way of referring to "nothingness"
* `0` is still a number, and its not nothing
* If you delete all the words in a string, you have an empty string. It's still something.
* `nil` encountered when something doesn't exist at all

### 11. Objects, Attributes, and Methods

* Ruby is an object-oriented language
* All things we interact with inside the VM are objects
* Objects hold information called `attributes` and can perform actions called `methods`
* Human being has attributes like height, weight, eye colour. Methods like walk, run, wash dishes, daydream
* Different types of objects have diff attributes and methods

#### Classes and Instances

* In OOP, we define classes
* `attr_accesor` is used to define attributes for instances of a class
* The class itself doesn't represent a student, its the idea of what a student is like
* To represent an actual student, we create an instance of the class

```
class Student
	attr_accessor : first_name, :last_name, :primary_phone_number

	def introduction
		puts "Hi, I'm #{first_name}!"
	end
end
```

#### Running Ruby from a file

* IRB is more like a scratchpad, but we can run Ruby from a file





## Ruby - Learn to program

Source: https://pine.fm/LearnToProgram/chap_04.html

* `.to_s` - convert to string
* `.to_i` - to integer
* `.to_f` - to float
* If you try convert string to float or integer, it just returns 0
* There are many kinds of objects in Ruby, and can even learn to make your own
* `puts` means to spit out strings
* `.to_i` ignores the first thing it doesn't understand and the rest of the string afterwards
* `puts` means to put string
* `gets` means to get string (sort of like prompt in javascript)
* `gets` got all the letters of the name and Enter! Use `chomp` to take any Enters off end of string
* `.reverse` - backwards version of a string, doesn't reverse actual string, makes new copy
* `.length` - number of characters in a string
* `.upcase` - make letters in a string uppercase
* `.downcase` - make letters in string lowercase
* `.swapcase` - make letters in a string swap capitalisation
* `.capitalize` - make first letter of every word uppercase
* `.center(lineWidth)` - visually format string to be centered
* `.ljust` - left justify
* `.rjust` - right justify
* `.abs` - takes absolute value of the number
* `random(100)` - will give you random integer greater than/equal to 0 and less than 100
* Has Math object. `.Math::PI`

### Flow Control

* when strings are compared, they use lexicographical ordering (dictionary ordering)
* uppercase letters come before lowercase letters
* The keyword `or` means either or or both

### Write Method

```
def sayMoo
	puts 'mooooooo...'
end

# call it
sayMoo
```

* Add parameter

```
def sayMoo numberOfMoos
	puts 'mooooo...' * numberOfMoos
end

sayMoo 3
```

* Add return value

```
def sayMoo numberOfMoos
	puts 'mooooo...' * numberOfMoos
	'yellow submarine'
end

x = sayMoo 3
puts x
```


### The Time Class

* `Time` objects represent moments in time
* Can add or subtract numbers to or from times to get new times
* Adding 1.5 to a time makes a new time one and a half seconds later
* When calculating time, you will gets the seconds back



### The Hash Class

* Hashes are a lot like arrays
* Hashes have a bunch of slots which can point to various objects
* In an array, the slots are lined up in a row and numbered, but hashes aren't in a row
* Hashes are kinda jumbled together and you can use any object to refer to a slot, not just number
* Good to have hashes when you have a bunch of things to keep track of but doesn't need to be ordered
* eg) Can use it to store colours
* Arrays are for keeping things in order, not hashes
* People usually use strings to name the slots, but you can use any kind of object



### Extending classes

* You can define a new method for an existing class, such as `class Integer`
* Add englishNumber to it (seen in the calc.rb file)
* Use `self` to refer to the object (the integer)

```
class Integer
	def to_eng
		if self == 5
			english = 'five'
		else
			english = 'fifty-eight'
		end

		english
	end
end
```



### Creating Classes

* Creating a new class is as easy as extending an old one

```
class Die
	def roll
		1 + rand(6)
	end
end

# make dice
dice = [die.new, Die.new]

# ... roll them
dice.each do |die|
	puts die.roll
end
```

* We can roll the dice, and each time it would give a new number
* If we wanted to keep the value, you would have to attach it to a variable



### Instance Variables

* When we wanna talk about a string, we just call it a string
* But we can also refer to it as a 'string object'
* Sometimes programmers will call it 'and instance of the class `String`'
* An 'instance of a class' is just an object of that class
* A method's local variables last until the method is finished
* To tell instance variables from local variables, they have @ in front

```
class Die
	def initialize
		roll
	end

	def roll
		@numberShowing = 1 + rand(6)
	end

	def showing
		@numberShowing
	end
end

die = Die.new
die.roll
puts die.showing
puts die.showing
```

* When an object is created, its `initialize` method is always called
* From Line 424-549 on calc.rb
* `private` in the class enforces the idea that certain methods can work under the hood
* `exit` is to end the program

### Blocks and Procs
https://pine.fm/LearnToProgram/chap_10.html

* Other languages call this sorta thing 'closures'
* Ability to take a block of code, and wrap it up in an object (proc), store in variable, or pass to a method
* It's kind of like a method itself but not bound to an object (it is an object)
* Proc - supposed to be short for 'procedure'

```
toast = Proc.new do
	puts 'Cheers!'
end

toast.call
```

* Blocks can take parameters

```
doYouLike = Proc.new do |aGoodThing|
	puts 'I *really* like '+aGoodThing+'!'
end

doYouLike.call 'chocolate'
doYouLike.call 'ruby'
```

* Why not use methods?
* There's some things you can't do with methods
* Methods can't pass methods into other methods, but you can pass procs into methods
* Methods can't return other methods but they can return procs
* Procs are objects, methods aren't

### Methods which take Procs

* When we pass a proc into a method, we control how, if, how many times we call the proc

```
def doSelfImportantly someProc
	puts 'Everybody just HOLD ON! I have something to do...'
	someProc.call
	puts 'Ok everyone, I\'m done. Go on with what you were doing.'
end

sayHello = Proc.new do
	puts 'hello'
end

sayGoodbye = Proc.new do
	puts 'goodbye'
end

doSelfImportantly sayHello
doSelfImportantly sayGoodbye
```

* Doesn't look like much but is
* If you wanna save a file, you have to open file, write info you want, then close it
* If you forget a step, it might not run smoothly
* Write methods that will determine how many times or even 'if' you should call a proc























