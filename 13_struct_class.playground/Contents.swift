import UIKit

//Struct vs Class

struct SomeStruct{
    //Definición de la estructura aquí
}
class SomeClass{
    //La definicion de la clase aquí
}

struct Resolution{
    var width = 0
    var height = 0
}

class videoMode{
    var resolution = Resolution()
    var interlaced = false
    var framerate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = videoMode()

print(someResolution.width)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

someVideoMode.framerate = 60
print(someVideoMode.framerate)

let vga = Resolution(width: 640, height: 480)
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")
print("\(hd.width) x \(hd.height)")

enum CompassPoint{
    case north, south, east, west
}

var currentDirection = CompassPoint.north
let oldDirection = currentDirection
currentDirection = .south

print(currentDirection)
print(oldDirection)

let tenEighty = videoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.framerate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.framerate = 30.0

if tenEighty === alsoTenEighty{ //!== para decir diferente
    print("Son el mismo objeto")
}else{
    print("Son diferentes")
}
