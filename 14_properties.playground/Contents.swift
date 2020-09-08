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
