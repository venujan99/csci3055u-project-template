import Foundation 

//initializing a dictionary
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

//updating a value in a dictionary
var oldVal = someDict.updateValue("New One", forKey: 1)
var someVar = someDict[1]

//printing the dictionray
print( "Old value of key = 1 is \(oldVal)" )
print( "Value of key = 1 is \(someVar)" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )