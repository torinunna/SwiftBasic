import UIKit

// Closure as Parameter
let checking = { (id: String) -> Bool in
    if id == "User000" {
        return false
    }
    return true
}

let isValid = checking("User000")

func validate(id: String, checking: (String) -> Bool) -> Bool {
    print("Validation 준비중...")
    let isValid = checking(id)
    return isValid
}

let validationResult = validate(id: "User002", checking: checking)
print(validationResult)


// Closure 미리 만들지 않고 함수 수행시 작성
let validationResult2 = validate(id: "User001", checking: { (id: String) -> Bool in
    if id == "User000" {
        return false
    }
    
    return true
})

validate(id: "User001", checking: { (id: String) -> Bool in
    if id == "User000" {
        return false
    }
    return true
})


// Return X
let printHello = {
    print("Hello Swift")
}

func doSomeClosure(_ action: () -> Void) {
    action()
}

doSomeClosure(printHello)

// 함수 수행시 작성
doSomeClosure({
    print("Hello Swift")
})
