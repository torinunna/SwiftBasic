import UIKit

// property: stored/computed
struct Movie {
    //    stored property
    var name: String
    var director: String
    
    //    computed property
    var description: String {
        return "\(name) is \(director)'s best movie ever."
    }
}

var movie = Movie(name: "인셉션", director: "놀란")
print(movie.description)


// Property Observers
struct Task {
    var name: String
    var progress: Int {
        didSet {
            var str = ""
            for i in 1...10 {
                if progress >= i * 10 {
                    str += "*"
                } else {
                    str += "-"
                }
            }
            print("Current Progres: \(str)")
        }
    }
    
    var isdone: Bool {
        return progress == 100
    }
}

var task = Task(name: "Very Important Task", progress: 0)

task.progress = 30
task.progress = 50
task.progress = 90
