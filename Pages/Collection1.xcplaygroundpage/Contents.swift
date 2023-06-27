import UIKit

// Array [] -> 순서(index)
let yoo = "유재석"
let ji = "지석진"
let ha = "하하"
let so = "전소민"
let song = "송지효"
let kim = "김종국"

let runningMen = [yoo, ji, ha, so, song, kim]

print(runningMen[0])
print(runningMen[1])
print(runningMen[5])

// Create an empty array
var emptyArr: [Int] = []
    //var emptyArr = [Int]()


// Dictionary [Key : Value]
let languageCode: [String: String] = [
    "한국": "ko",
    "미국": "en",
    "일본": "ja"
]

print(languageCode["한국"])
print(languageCode["베트남"])

// Create an empty dictionary
var emptyDic: [String: Any] = [:]
    //var emptyDic = [String: Any]()


// Set -> 순서/중복 X
var primes: Set<Int> = [2, 3, 5, 7]
var evens = Set<Int>([2, 4, 6, 8, 2, 4])

print(primes)
print(evens)

// Create an empty set
var emptySet: Set<Int> = []
    //var emptySet = Set<Int>()
