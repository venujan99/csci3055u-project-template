# CSCI 3055 Final Project (Swift)

- Venujan Satchithanantham
- venujan.satchithanantham@uoit.net

## About the language

>
> - History:

Swift is a general purpose, open source programming lanuage that was developed by Apple for iOS, macOS, and Linux. Swift is a fairly new language as it was started by Chris Lattner in 2010. This language got its ideas from Objective-C, Rust, Haskell, Ruby, Python and C# to name a few. The language was officially used with the first app written in Swift in 2014. Prior to Swift, Apple was using Objective-C as their preferred language.

> - Some Interesting Features:

Swift has a "playground", which is where you can see the result of your code without completely compiling it. This is done through the web browser. It is a live interactive document, which the code executes and results are displayed step-by-step as they are executed. 
A safety feature that is introduced in Swift, it that by default a Swift object cannot be nil. This makes coding cleaner and safer for developers.

## About the syntax

Swift is an alternative language to Objective-C, but has simpler syntax. They say its Obective-C without the "C". Swift was designed to eliminate classes of unsafe code. Variables are always initialized before use, arrays and integers are checked for overflow, and memory is managed automatically. This simplifies the coding procedure for developers. 

> Sample Snippets of Basic Code

*Creating a Variable*

```swift
var sample_string: String = "Hello World"
```

*Creating an immutable variable*

```swift
let sample_string = "Hello World"
```

*Creating an Array*

```swift
var items = ["Pencil", "Eraser"]
```

*Adding an Item to an Exisiting Array*
```swift
items += "Crayons"
```

## About the tools

### Compiler/Interpreter

> The compiler for Swift has a couple of phases, which include Lexical Analysis, Parsing, Semantic Analyser, Opimization and Code Generaion. It also has two dimensions, Front-End and Back-End.

> - Lexical Analysis: 
> The task of the lexical analyzer is to take the program text and covert it into words and tokens. Once this is complete, it will take everything and pass it to the next phase which is parsing.

>- Parsing:
> The task of the parsers is to take everything from the the lexical analyser, and group the words and tokens together so that the code makes sense. THe parser then passes the code to the semantic analyser.

>- Semantic Analyzer:
> This process is important as it may identify types and logic of the program, it may also execute some progam bindings. Once all of this is complete, it will pass on to the optimization phase.

>- Optimization:
> During optimization, the code you typed is being cleaned up. This phase will decide whether to perform optimization to certain parts of your code. At the end of this phase, your code will be optimized for performance and any memory related issues it may face.

>- Code Generation:
> During this final phase of the compiler, code is turned into a binary file, which is also known as an executable file. 

## About the standard library

Examples of functions in the standard library:

* print(_:separator:terminator:)
```swift
func print(_ items: Any..., separator: String = default, terminator: String = default)
```
> _The items are the items to print._ <br />
> _Separator is a string to print in between each item (default is a single space)._ <br />
> _Terminator is the string to print after all items have been printed._ <br />

Example: 

```swift
print(1, 2, 3, 4, 5, separator: " ... ")
// Prints the following:  "1 ... 2 ... 3 ... 4 ... 5"
```

* An array of Int elements 
```swift
let numbers = [1, 2, 40, 12, 32, 11, 19, 52]
```
* An array of String elements 
```swift
let names = ["John", "Mary", "Sam"]
```

## About open source library

> _Describe at least one contribution by the open source
community written in the language._

# Analysis of the language

## Style of Programming

Swift supports functional porgramming. Below are some examples of how Swift supports functional programming.

> Immutatibility:
```swift
let num = 1
```
> Immutability means that once a value is set, it cannot be altered in any way. This is done in swift by using the let keyword when creating values. Immutability is used because it allows developers to wriete thread-safe code.

> Value Types:
```swift
struct CGRect { }

var box = CGRect.zero
var square = box.size

box.size.height = 10

// square: width: 0, height: 0
// box.size: width: 0, height: 10
```

> When passing around values instead of references to values, you are ceating safer code. Structs do exactly that, also almost everything inside the Swift standard libray is a struct such as; Array, Int, Bool. 

> Pure Functions: 

```swift
func sum(_ a: Int, _ b: Int) -> Int { 
    return a + b 
}
````
> A pure function is where its return value is only determined by its input value(s). It does only one thing which is compute its return value. The purpose of writing pure functions is to eliminate all possibilites of side-effects, which can increase the chance for bugs.

> First-Class Functions

```swift
func sayHello() {
    print("Hi!")
}
let greeting = sayHello
greeting()
// prints: Hi!
```

> First class functions means you can assign functions to variables, just like you would with an integer or string. This allows developers to write functions that can take other functions as arguments, as well as return them.

## Meta-Programming

An Example:

```swift
struct Car {
  
  let model: String
  let numberOfSeats: Int
  let color: UIColor
  
}
```

Now in order to use this code in various places, you must extend it...

```swift
extension Car : Equatable {
  
  func ==(lhs: Car, rhs: Car) -> Bool {
    return lhs.model == rhs.model &&
        lhs.numberOfSeats == rhs.numberOfSeats &&
        lhs.color == rhs.color
  }
}
```


## Symbol Resolution (Support for Closure)

Closures in Swift are similar to blocks in C and Objective-C, and similar to lambdas in other languages. Closures can capture and store references to any constants and variables from the context in which they were defined. Swift handles all of the memory management of capturing. Closures can take one of three forms: <br />

- Global Functions
- Nested Functions
- Closure Expressions

An Example of sorting closure below:

```swift
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
// reversedNames is equal to ["Gold", "Ruby", "Sapphire", "Emerald", "Pearl"]
```

## Lexical vs Dynamic Scoping



## Type System (Static vs Dynamic)



## Pros and Cons of Swift

> _Organize your report according to the project description
document_.


