import UIKit

let names = ["Ricardo Celis", "Juan Gabriel", "Edgar"]

for name in names {
    print("Hola \(name)")
}

let numberOfLegs = ["spider" : 8, "ant" : 6, "dog" : 4]

for (animalName, legCount) in numberOfLegs{
    print("Animal: \(animalName), número de patas: \(legCount)")
}

for idx in 1...5{
    print("\(idx) x 3 = \(idx*3)")
}

let base = 2
let power = 10
var answer = 1
for _ in 1...power{
    answer *= base
    print("El resultado es \(answer)")
}

var hour = 9
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(hour): \(tickMark)")
}
//EN UN FOR, EL TICKMARK O EL IDX, SE QUEDA SOMO EN EL BUCLE, YA QUE SOLAMENTE LO AGREGAN LOS CORCHETES...

//Bucle While

var i = 0
while i<=10 {
    i += 1
}
print(i)

repeat{
    i+=1
} while i<=10
//EL REPEAT FUERZAN EL CONTEO
print(i)

let endCount = 100
var start = 2
var prime: [Int] = []
while start <= 100{
var isPrime = true
for idx in 2..<start {
    if start % idx == 0{
        if idx != i && idx != start{
            isPrime = false
        }
    }
}
    if isPrime {
        prime.append(start)
    }
    start += 1
}

// if y else
var temperature = 30
if temperature <= 15{
    print("Hace frio!, enciende la calefaccion")
}else if temperature >= 21{
    print("Mucho calor, falta el aire aconidiconado")
}else{
    print("Todo bien, el clima esta perfecto")
}

var money = 501
if money <= 200 {
    print("Perfecto!, te doy el dinero 😉")
}else if money <= 300{
    print("Ok, ten el dinero")
}else if money <= 500{
    print("Es mucho, ¿no?, pero te los presto")
}else{
    print("No tengo dinero, lo siento")
}
