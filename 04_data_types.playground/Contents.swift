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
