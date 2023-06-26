import UIKit

func printHello() {
    print("Hello Swift!")
}

printHello()


// Input Parameter
func printName(name: String) {
    print("My name is \(name)")
}

printName(name: "Jason")


// Input Parameter Label -> 내/외부 parameter label 변경 -> 호출할때 읽기 쉬움
func printName2(of name: String) {
    print("My name is \(name)")
}

printName2(of: "Jamie")


// 외부 Parameter 생략
func printName3(_ name: String) {
    print("My name is \(name)")
}

printName3("Joy")


// Output Parameter
func makeDouble(num: Int) -> Int {
    return num * 2
}

let result = makeDouble(num: 3)
print(result)
