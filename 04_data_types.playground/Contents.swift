import UIKit

let orangesAreOragne = true
let foodIsDelicious = false

var isAged : Bool

isAged = true

if isAged {//Solo entramos aquí, si isAged == true
    print("Puedes entrar")
}else{//Solo entramos aquí, si isAged == false
    print("No puedes pasar")
}

var age = 18
if age >= 18 {
    print("Puedes entrar")
}
else{
    print("No puedes entrar")
}


//TUPLAS
let http404Error = (404, "Pagina no encontrada")
let (statusCode, statusMessage) = http404Error
print("El codigo del estado es \(statusCode)")
print("El mansaje del servior es \(statusMessage)")

let (justStatusCode, _) = http404Error
print("El codigo del estado es \(justStatusCode)")

print("El codigo del error es \(http404Error.0) y el mesnaje es  \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("El codigo del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")

//EJERCICIO TUPLA
let myCompleteDates = (name: "Benjamin", lastName: "Gutierrez Mendoza", age: "18", born: "Mexico")
print("Mi nombre completo es \(myCompleteDates.name) \(myCompleteDates.lastName), tengo \(myCompleteDates.age) y naci en \(myCompleteDates.born).")

let possibleAge = "31"
let convertedAge = Int(possibleAge) //Int?

var serverResponseCode : Int? = 404
serverResponseCode = nil

var surveyAnswer : String?
surveyAnswer = "42"


if convertedAge != nil {
    print("La edad del usuario no es nula \(convertedAge!)")
}
else{
    print("La edad del usuario es nula")
}


if let actualAnswer = surveyAnswer {
    //Al llegara aqui, survey Answer != nil
    print("Tiene el valor \(actualAnswer)")
}
else{
    print("es nil...")
}


if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber<100{
    print("\(firstNumber) < \(secondNumber) < 100")
}


let possibleString: String? = "Un string opcional"
let forcedString: String = possibleString!

let assumedString: String! = "Un string unwrapped de forma implicita apartir de un optional"
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString!)
}

if let definitiveString = assumedString{
    print(definitiveString)
}


