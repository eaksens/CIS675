/*
Homework 1
By Mai and Recodeo
*/
import UIKit


/*
 Problem  1
a constant myString that has implicit type String and value “hello”.
a variable cost that has implicit type Double and value 3.14.
a constant cnt that has explicit type Int and value 2.
a variable shouldWe that is typed as a boolean value and set to true.
an integer constant assigned the value of 11 hexadecimal.
an integer constant assigned the binary equivalent of decimal 10.
*/
let myString = "hello"
var cost = 3.14
let cnt:Int = 2
var shouldWe:Bool = true
var hexInt = 0xb
var binInt = 0b1010

/*
Problem 2:
 Use the \() operator to form a string from string literal data and a floating point calculation.
*/
var v = 5.2
var str = "Combining str and floating point \(v * 2)"

/*
Problem 3
Use arrays in Swift to accomplish the following:
Define an array that consists of 3 string values: “queen”, “worker” and “drone”.
Use the print function to printout the first entry in the array.
Use the append() method to add an addition entry of “honey” to the array.
Use the += operator to add the [“are”, “us”] to the array.
*/

var myArray = ["qeen", "worker", "drone"]
print(myArray[0])
myArray.append("honey")
myArray += ["are", "us"]

/*
 Problem 4
 Write two different style for loops (e.g. for item in, and for (index,value) in enumerate())
 that iterate through the array created in problem 3 and prints the values.
 
 In the first example print only the value, for the second each index should be printed with
 the value.  e.g. “Item #0 is queen” …
*/
for item in myArray {
    print(item)
}

for (idx, item) in myArray.enumerated() {
    print("Item #\(idx) is \(item)")
}

/*
Problem 5
Create a variable that is explicitly typed as a dictionary that maps strings to
floating point numbers.  Initialize the variable to the data shown in the table below which lists
an author name and their comprehensibility score.
*/

var myDict: [String : Float] = [
    "Mark Twain": 8.9,
    "Nathaniel Hawthorn" : 5.1,
    "John Steinbeck": 2.3,
    "C.S Lewis": 9.9,
    "Jon Krakaur": 6.1
]

/*
Problem 6:
Using the dictionary created in the previous problem, do the following:
Print out the floating-point score for “John Steinbeck”.
Add an additional author named “Erik Larson” with an assigned score of 9.2.
Write an if/else statement that compares the score of Jon Krakaur with Mark Twain.  Print out the name of the author with the highest score.
*/
print(myDict["John Steinbeck"]!)
myDict["Erik Larson"] = 9.2

if(myDict["Jon Krakaur"]! > myDict["Mark Twain"]!) {
    print("Jon Krakaur");
} else if(myDict["Jon Krakaur"]! < myDict["Mark Twain"]!) {
    print("Mark Twain");
} else {
    print("Same score");
}

/*
Problem 7
Use a for loop to iterate through the dictionary created in problem #5 and print out the content in the form of key: value, one entry per line.
*/
for item in myDict {
    print("\(item.key) : \(item.value)")
}

/*
Problem 8
Write a for loop where the index variable ranges from 1 to 10.  Print the index variable during each iteration.
*/
for idx in 1...10 {
    print(idx)
}

/*
 Problem 9
 Write a for loop where the index variable ranges from 10 down to 1.  Print the index variable during each iteration.
*/

for idx in (1...10).reversed() {
    print(idx)
}


/*
 Problem 10
 Underscore notation can be used to craft a for loop where the index variable is not needed.  Use this notation to write a for loop that computes the product of x * y using only the + operator.
*/
let x = 2
let y = 3
var p = 0
for _ in 1...y {
    p += x
}
print(p)