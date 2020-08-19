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

//SWITCH/CASE

let someCharacter: Character = "Z"
switch someCharacter {
case "a", "A":
    print("Es la primera letra del alfabeto")
case "z", "Z":
    print("Es la ultima letra del afabeto")
default:
    print("Es alguna letra")
}

let aLetter = "z"
switch aLetter {
case "a", "e", "i", "o", "u":
    print("La letra introducida es una vocal, la vocal es: \(aLetter)")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "ñ", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("La letra introducida es una consonante, la consonante es: \(aLetter)")
default:
    print("Error, por favor introduzca un caracter valido.")
}

let moons = 99
let phrase = "Lunas en Saturno"
let naturalCount: String
switch moons {
case 0:
    naturalCount = "No hay"
case 1..<5:
    naturalCount = "Hay unas pocas"
case 5..<12:
    naturalCount = "Hay bastantes"
case 12..<100:
    naturalCount = "Hay decenas de"
case 100..<100:
    naturalCount = "Hay centenares"
    
default:
    naturalCount = "Hay infinitas"
}
print("\(naturalCount) \(phrase) ")

let borrowMoney = 100
let reply : String
switch borrowMoney {
case 0:
    print("wtf?")
case 1..<101:
    reply = "Te los presto sin problemas"
case 101..<201:
    reply = "Esta bien, pero me los pagas la proxima semana"
case 201..<501:
    reply = "Me los pagas mañana."
default:
    reply = "No, ya es mucho"
}

let somePoint = (8.9,9)
switch somePoint {
case (0,0):
    print("El punto \(somePoint) es en el origen")
case (_, 0):
    print("El punto \(somePoint) se halla en el eje x")
case (0, _):
    print("El punto \(somePoint) se halla en el eje y")
case (-2...2, -2...2):
    print("El punto \(somePoint), se halla en el interior del lado 4")
default:
    print("El punto \(somePoint), esta en algun otro lado")
}
//LA _ EN LOS CASOS, SIGNIFICA QUE EN ESA CASILLA PUEDE SER CUALQUIER VALOR...

let anotherPoint = (9, -9)
switch anotherPoint {
case (let x, 0):
    print("Sobre el eje de las x, con valor \(x)")
case (0, let y):
    print("Sobre el eje de las y, con valor \(y)")
case let (x, y) where x == y:
    print("El punto se halla sobre la recta x=y")
case let (x,y) where x == -y:
    print("El punto se halla sobre la recta x=-y")
case let (x,y):
    print("En algun otro lugar del plano en (\(x), \(y))")
}

let anotherSomeCharacter : Character = "z"
switch anotherSomeCharacter {
case "a", "e", "i", "o", "u":
    print("Es una vocal")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "ñ", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("Consonante")
default:
    print("Caracter raro")
}

let sitillAnotherPoint = (9, 0)
switch sitillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("Se halla sobre el eje, a dsitancia \(distance) del origen")
default:
    print("No esta en el eje")
}

//Control transfer sentences
let sentence = "Las mentes grandes piensan igual"
var filteredSentence = " "
let charactersToRemove:[Character] = ["a", "e", "i", "o", "u"]
for ch in sentence {
    if charactersToRemove.contains(ch){
       continue
    }
    filteredSentence.append(ch)
    if ch == "d"{
        break
    }
}
filteredSentence

let integerToDeescribe = 19
var description = "El numero \(integerToDeescribe) es:"
switch integerToDeescribe {
case 2,3,5,7,11,13,17,19:
    description += " un numero primo y"
    fallthrough
default:
    description += " un numero entero"
}

print(description)

var people = ["name" : "Benjamin", "age" : 31, "isMale" : true] as [String : Any]

func testUserValidation(person:[String : Any]){
guard let surname = people["surname"] else{
    return
}
    //aqui existe surname
    print(surname)
    guard let age = person ["age"] else{
        return
    }
    print("La edad de la persona es \(age)")
}

testUserValidation(person: people)

if #available(iOS 13, macOS 10.12, *){
    //   Ejecutar las acciones
}else{
    //    Mantener el codigo cpn versiones anteriores
}

