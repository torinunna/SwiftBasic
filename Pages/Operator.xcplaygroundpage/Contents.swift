import UIKit

//Arithmetic Opertor: 산술 연산자
let first = 10
let second = 3

let sum = first + second
let diff = first - second

let multiple = first * second
let divide = first / second

let remainder = first % second

let str1 = "aaa"
let str2 = "bbb"

let str = str1 + str2
print(str)

let names1 = ["April", "Bob"]
let names2 = ["Chuck", "David"]

let names = names1 + names2
print(names)


// Compound Operator
var price1 = 10
price1 += 1
print(price1)

var price2 = 7
price2 -= 5
print(price2)

var price3 = 2
price3 *= 7
print(price3)

var price4 = 16
price4 /= 2
print(price4)

var quote = "Hello, Swift"
quote += " Playground"
print(quote)


// Comparison operator: 비교연산자
let score1 = 6
let score2 = 4

print(score1 == score2)
print(score1 != score2)

print(score1 > score2)
print(score1 >= score2)

print(score1 < score2)
