import UIKit

//Stored Properties
struct FixedLengthRange{
    var firstValue : Int
    let lenght : Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, lenght: 3)
rangeOfThreeItems.firstValue = 6
let rangeOfFourItems = FixedLengthRange(firstValue: 0, lenght: 4)
//rangeOfFourItems.firstValue = 5 <- Esto da error


//Lazy Properties
class DataImporter{
    var fileName = "data.txt"
}

class DataManager{
   lazy var importer = DataImporter()
    var data = [String()]
}
 let manager = DataManager()
manager.data.append("Algo de datos")
manager.data.append("Mas datos")
manager
//Hasta esa línea, el importer no ah sido creado...
manager.importer.fileName
//Aquí la variable importer ya fue creada
manager


//COMPUTED PROPETIES
struct Point{
    var x = 0.0, y = 0.0
}

struct Size{
    var width = 0.0, height = 0.0
}

struct Rect{
    var origin = Point()
    var size = Size()
    var center : Point{
        get{
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center
let initialSquareCenter = square.center
square.center = Point(x: 20, y: 20)
struct Cuboid{
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double{
            return width * height * depth
    }
}
let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
cuboid.volume
//cuboid.volume = 57.0 error, puesto que la variable es solo lectura

//ACOMPLETA EL RETO 
/* struct user{
    var name : String, isMale : Bool, language : String
    var greet : String{
        switch language {
        case "spanish":
            return "Hola!"
        case "chinese":
            return "嗨!"
        case "swedish":
            return "Hej!"
        case "italian":
            return "Ciao!"
        case "english":
            return "Hi!"
        default:
            return "Please write one of the languages aviable (spanish, chinese, wedish, italian or english)"
        }
    }
    var message : String{
        switch isMale {
        case true:
           return "Mr."
        default:
            return "Mrs."
        }
        return language + self.message + name
    }
}
*/

