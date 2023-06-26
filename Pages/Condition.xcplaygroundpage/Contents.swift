import UIKit

let num1 = 3
let num2 = 5

let sum1 = num1 + num2

if sum1 > 10 {
    print("over 10")
} else {
    print("not over 10")
}

let age1 = 15
let age2 = 22

if age1 > 19 && age2 > 19 {
    print("19세 이상 영화를 같이 볼 수 있겠네요.")
} else {
    print("19세 이상 영화를 같이 볼 수 없습니다.")
}

if age1 > 20 || age2 > 20 {
    print("20세 이상 보호자가 있으면 놀이공원에 들어갈 수 있어요.")
}


// Condition using Tenary Opertor
let age3 = 30
let age4 = 40

    //let text1: String
    //
    //if age3 == age4 {
    //    text1 = "same"
    //} else {
    //    text1 = "not same"
    //}

    //print(text1)

let text1 = age3 == age4 ? "same" : "not same"
print(text1)


// Switch
enum Direction {
    case up
    case down
    case left
    case right
}

let direction = Direction.down

switch direction {
case .up:
    print("up")
case .down:
    print("down")
case .left:
    print("left")
case .right:
    print("right")
}
