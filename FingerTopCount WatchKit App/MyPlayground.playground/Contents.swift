//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


var myText = "This is my playground"


var wholeNumber = 7
var number = 7 + 5 - 2 * 3

number += 5
print(number)
print("The value stored in the variable number is \(number)")

var myNewText = myText + ", kids"

var numbers = ["one", "two", "three", "four", "five"]
numbers[0]
numbers[1]

for number in numbers {
    print(number)
}


numbers += ["six"]

numbers.append("seven")

for number in numbers {
    print(number)
}

numbers.removeRange(0...3)


var y = 2

for var x = 0; x <= 5; ++x {
    y += y + x * x
    
}






