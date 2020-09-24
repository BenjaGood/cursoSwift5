import UIKit

class Veicle{
    var currentSpeed = 0.0
    var description: String{
        return "Viajando a \(currentSpeed) km/h"
    }
    func makeNoise(){
        //do nothing, porque cada vehiculo tiene su propia froma de hacer ruido
    }
}

let someVeicle = Veicle()
print(someVeicle.description)

class Bicycle : Veicle{
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print(bicycle.description)

class Tandem : Bicycle{
    var currentNumberOfPassengers = 0
}
 let tandem = Tandem()
tandem.currentNumberOfPassengers = 2
tandem.hasBasket = true
tandem.currentSpeed = 22.0
print(tandem.description)

class Tesla : Veicle{
    var battery : Int = 0
}

let teslaModelS = Tesla()
teslaModelS.battery = 100
teslaModelS.currentSpeed = 250

class Ship{
    var currentSpeed = 0
    var color : String = ""
    var typeGasoline : String = ""
}

class WarBoat : Ship{
    var ammunition : Int8 = 0
    var armor : Bool = false
}

let warBoatBlinded = WarBoat()
warBoatBlinded.armor = true
warBoatBlinded.ammunition = 100
warBoatBlinded.currentSpeed = 130
warBoatBlinded.color = "black"
warBoatBlinded.typeGasoline = "special"

let typicalBoat = Ship()
typicalBoat.color = "withe"
typicalBoat.currentSpeed = 150
typicalBoat.typeGasoline = "normal"



