import UIKit

// String Struct
let str = "Hello Swift"

print(str.count)

print(str.sorted())

print(str.split(separator: " "))

print(str.uppercased())

print(str.hasPrefix("Hi"))


// Initializer
struct iPhone {
    var model: String
    
    init() {
        model = "iPhone 13"
    }
}

let iphone13 = iPhone()

// struct -> memberwise intializer 기본
struct iPhone2 {
    var model: String
}

let iPhone14 = iPhone2(model: "iPhone 14")


// self -> 현재 객체 지칭(initalizer에서 파라미터와 내부 파라미터간 이름 구분)
struct iPhone3 {
    var model: String
    
    init(model: String = "iPhone15") {
        self.model = model
    }
}

let iphone15 = iPhone3()


// Lazy Property
struct Transactions {
    init() {
        print("Loading self history..")
    }
}
struct SecondHandItems {
    var name: String
    lazy var history: Transactions = Transactions()
    
    init(name: String) {
        self.name = name
    }
}

var usedMacbook = SecondHandItems(name: "Intel Macbook")

usedMacbook.history
