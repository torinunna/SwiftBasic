import UIKit

// Default Parameter: 파라미터에 기본값
func discount(price: Double, ratio: Double = 0.2) -> Double {
    return price * (1 - ratio)
}

let defaultRatioApplied = discount(price: 2000)
print(defaultRatioApplied)

let customtRatioApplied = discount(price: 2000, ratio: 0.5)
print(customtRatioApplied)


// Variadic Function: 정해지지 않은 수의 파라미터를 받을 수 있는 함수
func printNames(_ names: String...) {
    for name in names {
        print("My name is \(name)")
    }
}

printNames("Jason", "Roy", "Jake")


// Throwing Function: 예외 상황
enum DividedError: Error {
    case cannotZero
}

func divide(dividend: Int, divisor: Int) throws -> Int {
    if divisor == 0 {
        throw DividedError.cannotZero
    }
    return Int(dividend / divisor )
}

do {
    //    let result = try divide(dividend: 80, divisor: 6)
    let result = try divide(dividend: 80, divisor: 0)
    print(result)
} catch {
    print(error.localizedDescription)
}


// In-Out Parameter
func makeTriple(num: inout Int) {
    num *= 3
}

var num = 8
makeTriple(num: &num)

print(num)
