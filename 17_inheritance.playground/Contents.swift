import UIKit

class Veicle{
    var currentSpeed = 0.0
    var description: String{
        return "Viajando a \(currentSpeed) km/h"
    }
    func makeNoise(){
        //do nothing, porque cada vehiculo tiene su propia froma de hacer ruido
        print("El ruido depende del vehiculo")
    }
}

let someVeicle = Veicle()
print(someVeicle.description)

class Bicycle : Veicle{
    var hasBasket = false
    override func makeNoise() {
        print("Ring!!")
    }
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
    final var currentSpeed = 0 //EL FINAL EVITA QUE SEA SOBREESCRITOO (OVERRIDE)
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

class Train : Veicle{
    var numberOfWagons = 0
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()

tandem.makeNoise()
bicycle.makeNoise()

class Car : Veicle{
    var gear = 1
    override var description: String{
        return super.description + "en la marcha \(gear)"
    }
}

let car = Car()
car.currentSpeed = 55
car.gear = 3
print(car.description)
print(tandem.description)

class AutomaticCar : Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed/15.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 88
print(automatic.description)
