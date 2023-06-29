import UIKit

protocol Purchasable {
    var name: String { get set }
}

func buy(_ item: Purchasable) {
    print("I bought \(item.name)")
}

struct Book: Purchasable {
    var name: String
    var author: String
}

struct Movie: Purchasable {
    var name: String
    var actors: [String]
}

struct Car: Purchasable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchasable {
    var name: String
    var strength: Int
}

let harryPotter = Book(name: "Harry Potter", author: "J.K. Rowling")
let topgun = Movie(name: "Top Gun", actors: ["Tom Cruise"])
let modelX = Car(name: "modelX", manufacturer: "TSLA")
let americano = Coffee(name: "americano", strength: 5)

buy(harryPotter)
buy(topgun)
buy(modelX)
buy(americano)
