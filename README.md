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

> _Organize your report according to the project description
document_.


