import UIKit

// Method
struct Student {
    var name: String
    var major: String
    var knowledge: Double
    
    func didFinalTest() -> Int {
        let howMuchIDontKnow = (1 - knowledge) * 100
        let score = 100 - Int(howMuchIDontKnow)
        return score
    }
}

var student = Student(name: "Jason", major: "CS", knowledge: 0.5)
let score = student.didFinalTest()

print(score)


// Mutaitng Method
struct Student2 {
    let name: String
    var major: String
    var knowledge: Double
    
    func didFinalTest() -> Int {
        let howMuchIDontKnow = (1 - knowledge) * 100
        let score = 100 - Int(howMuchIDontKnow)
        return score
    }
    
    mutating func didStudy() {
        if knowledge >= 1 {
            knowledge = 1
        } else {
            knowledge += 0.1
        }
    }
}

var student2 = Student2(name: "Jason", major: "CS", knowledge: 0.5)

let score2 = student2.didFinalTest()

student2.didStudy()
student2.didStudy()

let score3 = student2.didFinalTest()

print(score3)

