import UIKit
import CoreGraphics

// Tuple -> 여러 데이터를 하나의 값으로 표현
var phone = (os: "iOS", model: "iPhone14")

print(phone.0)
print(phone.os)

print(phone.1)
print(phone.model)

var rawPhone = ("iOS", "iPhone14")
print(rawPhone.0)
print(rawPhone.1)


// Enum -> 관계 값끼리 모아서 표현
enum Weekday {
    case mon
    case tue
    case wed
    case thu
    case fri
}

var today: Weekday = .mon
    //var today: Weekday = Weekday.mon
    //var today = Weekday.mon
print(today)

enum MediaType {
    case audio
    case video
}

var mediaType: MediaType = .audio
    //var mediaType: MediaType = MediaType.audio
    //var mediatype = MediaType.audio
print(mediaType)


enum MediaType2 {
    case audio(String)
    case video(String)
}

var mp3: MediaType2 = .audio("mp3")
var h264: MediaType2 = .video("h264")
print(mp3)
print(h264)

enum MasterLevel: Int {
    case beginner
    case intermediate
    case professional
}

var beginner: MasterLevel = .beginner
print(beginner.rawValue)

let pro = MasterLevel(rawValue: 2)
let otherLevel = MasterLevel(rawValue: 5)
print(pro)
print(otherLevel)

enum Direction: String {
    case up
    case down = "ddd"
    case leftRight = "left_right"
}

var dir: Direction = .down
print(dir.rawValue)
print(dir)

let up = Direction(rawValue: "up")
let otherDirecction = Direction(rawValue: "left")
print(up)
print(otherDirecction)
