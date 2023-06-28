import UIKit

// Static Method & Properties
struct FCLecture {
//    Type Property
    static var academyName: String = "Fast Campus"
    
    var name: String
}

var iOSLecture = FCLecture(name: "iOS 강의")
var backendLecture = FCLecture(name: "Backend 강의")

print(iOSLecture.name)
print(backendLecture.name)
print(FCLecture.academyName)


// Access Control: 외부 접근 가능 > public > internal(default) > filePrivate > private > 내부 접근 가능
// Access Control X
struct UserAccount {
    var id: String
    var bill: Int
    var name: String
    
    init(id: String, bill: Int, name: String) {
        self.id = id
        self.bill = bill
        self.name = name
    }
    
    func billDescription() -> String {
        return "\(id)'s billing amount: \(bill)"
    }
}

var user01 = UserAccount(id: "1234", bill: 400, name: "Mike")

user01.id = "2345"
user01.bill = 200

let billDescription01 = user01.billDescription()

print(billDescription01)

// Access Control O
struct UserAccount2 {
    private var id: String
    private var bill: Int
    internal var name: String
    
    init(id: String, bill: Int, name: String) {
        self.id = id
        self.bill = bill
        self.name = name
    }
    
    func billDescription() -> String {
        return "\(id)'s billing amount: \(bill)"
    }
}

var user02 = UserAccount2(id: "5678", bill: 500, name: "James")

// Compile Error
    //user02.bill = 100
    //user02.id = "1234"

let billDescription02 = user02.billDescription()

print(billDescription02)
