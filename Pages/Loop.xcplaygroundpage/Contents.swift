import UIKit

// Range
let numRange = 1...10

for num in numRange {
    print("num is \(num)")
}

// Array
let names = ["John", "Kevin", "Jason"]

for name in names {
    print("name is \(name)")
}


// While: 조건 먼저
var num1 = 1

while num1 <= 20 {
    print(num1)
    num1 += 1
}

print("탈출")


// Repeat: 수행 먼저
var num2 = 1

repeat {
    print(num2)
    num2 += 1
} while num2 <= 20

print("탈출")


// Exit
print("--> Exit")

for i in 0...10 {
    if i == 4 {
        break
    }
    print(i)
}

var countDown1 = 10
while countDown1 > 0 {
    countDown1 -= 1
    if countDown1 == 3 {
        break
    }
    print(countDown1)
}


// Skip

print("--> Skip")

for i in 0...10 {
    if i == 4 {
        continue
    }
    print(i)
}

var countDown2 = 10
while countDown2 > 0 {
    countDown2 -= 1
    if countDown2 == 3 {
        continue
    }
    print(countDown2)
}
