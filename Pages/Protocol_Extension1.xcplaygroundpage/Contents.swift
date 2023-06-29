import UIKit

// Protocol Conforming
protocol ClassPresident {
    var name: String { get }
    var className: String { get }
    
    func sayHello()
    func checkClassMember()
}

struct UniPresidentStudent: ClassPresident {
    var uniName: String
    var name: String
    var className: String
    
    func sayHello() {
        print("대학생: 교수님 안녕하세요")
    }
    
    func checkClassMember() {
        print("대학생: 알아서 인원 체크해")
    }
}

struct HighSchoolPresidentStudent: ClassPresident {
    var highName: String
    var name: String
    var className: String
    
    func sayHello() {
        print("고등학생: 선생님 안녕하세요")
    }
    
    func checkClassMember() {
        print("고등학생: \(highName)학교 \(className)반 다 왔니?")
    }
}

let jason = UniPresidentStudent(uniName: "K" , name: "Jason", className: "공대")
let jake = HighSchoolPresidentStudent(highName: "KH", name: "Jake", className: "이과")

jason.sayHello()
jason.checkClassMember()

jake.sayHello()
jake.checkClassMember()
