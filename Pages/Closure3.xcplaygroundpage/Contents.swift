import UIKit

func validate(id: String, checking: (String) -> Bool) -> Bool {
    print("Validation 준비중...")
    let isValid = checking(id)
    return isValid
}

let validationResult = validate(id: "User001", checking: { (id: String) -> Bool in
    if id == "User000" {
        return false
    }
    
    return true
})

print(validationResult)

// ⬇️
let validationResult2 = validate(id: "User001", checking: { id in
    let isValid = id != "User000"
    return isValid
})

print(validationResult2)

// ⬇️
let validationResult3 = validate(id: "User001", checking: { $0 != "User000" })

print(validationResult3)


// ⬇️ Trailing Closure
let validationResult4 = validate(id: "User001") { $0 != "User000" }

print(validationResult4)
