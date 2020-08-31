import UIKit

enum someEnumeration{
    //aquí iria la definición del enumerado
}

enum compassPoint: String{
    case north
    case south
    case east
    case west
}

enum solarSistem: Int{
    case mercury = 1, vernus, earth, mars, jupiter, sturn, uranus, neptune
}

var directionToGo = compassPoint.north
directionToGo = .north

switch directionToGo {
case .north:
    print("Al norte")
case .south:
    print("Al sur")
case .east:
    print("Al este")
case.west:
    print("Al oeste")
}

let somePlanet = solarSistem.mars
switch somePlanet {
case .earth:
    print("Es seguro ir a la tierra")
default:
    print("No es seguro ir allá")
}

enum Beverage: CaseIterable {
    case coffe, tea, juice, redbull
}
let numberOfChoices = Beverage.allCases.count

for beverage in Beverage.allCases{
    print(beverage)
}

//RETO
enum closet: CaseIterable{
    case jeans, tshirts, shoes, sneakers, underwear, eveningdress
}
let thingsInTheCloset = closet.allCases.count
for closet in closet.allCases{
    print(closet)
}

enum barCode{
    case upc(Int, Int, Int, Int), qrCode(String)
}

var productBarCode = barCode.upc(3, 85909, 51226, 3)
//productBarCode = .qrCode("https://youtu.be")

switch productBarCode {
case .upc(let numberSystem, let manufacter, let product, let check):
    print("UPC: \(numberSystem), \(manufacter), \(product), \(check)")
case let .qrCode(productCode):
    print("QR: \(productCode)")
}

enum ASCIIControlCaracter: Character{
    case tab = "\t", lineFeed = "\n", carriageReturn = "\r"
}

let earthOrder = solarSistem.earth.rawValue
let northDirection = compassPoint.north.rawValue
let possiblePlanet = solarSistem(rawValue: 5)
