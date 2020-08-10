import UIKit

let b = 10
var a = 5
a = b

let (x,y) = (1,2)

if a == b {
    print("Los valores de a y b son iguales")
}

1+2
5-3
2*3
10.0/2.5

"Hello " + "World"

9/4 //division
9%4 //residuo

9 == 4*2+1

let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = -minusSix

var number = 5
number += 3 // number = number + 3
number -= 2 // number = number - 2
number *= 5 // number = number * 5
number /= 6 // number = number / 6
number %= 2 // number = number % 2

//DECIMALES
9.0/4.0

1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1

let name = "Ricardo Celis"

if name == "Juan Gabriel"{
    print("Bienvenido \(name), eres invitado a la fiesta")
}
else{
    print("Lo siento \(name), no puedes pasar...")
}

(1, "Juan Gabriel") < (2, "Ricardo Celis")

(3, "Juan Gabriel") < (3, "Ricardo Celis") //La nomenclatura es de abeceradio, agarra J y R y por orden alfabetico.
(3, "Ricardo Celis") < (3, "Juan Gabriel")

(18, "Benjamin Gutierrez") <= (31, "Juan Gomilla")
(18, "Benjamin Gutierrez") >= (31, "Juan Gomilla")

//OPERACIONES TERNARIAS
/*
 if question {
    amswer 1
 }
 else{
    answer 2
 }
 */

let contentHeight = 40
var hasImage = true
var rowHeight = 8

/*if hasImage {
    rowHeight = contentHeight + 50
}
else {
    rowHeight = contentHeight + 10
}*/
    
rowHeight = contentHeight + (hasImage ? 50 : 10)

//Nil Coalescing
var userAge: Int?
let defaultAge = 18

userAge = 31

var ageToBeUsed = userAge ?? defaultAge

//ageToBeUsed = (userAge != nill ? userAge! : defaultAge)

let defaultColorName = "red"
var userColorName: String?

var colorNameToUse = userColorName ?? defaultColorName

let defaultUserName = "John Wick"
var userName: String?

var userNameToUse = userName ?? defaultUserName
//Si la constante "userNameToUse, es igual a que "userName" tenga un VALOR, usar user name, de lo contrario, "usar defaultUserName".

//RANGOS

for idx in 1...5 {
    print(idx)
}

for idx in 1..<5 {
    print(idx)
}
let names = ["Ricardo", "Juan Gabriel", "Pedro"]
for i in 0..<names.count {
    print("La persona \(i+1) se llama \(names[i])")
}

for name in names[1...]{
    print(name)
}

for name in names[..<2] {
    print(name)
}

//RETO
var numberOne = 5, numberTwo = 50

let oneToEnd = numberOne...
let oneToTwo = numberOne...numberTwo
let oneToEndButNotTwo = numberOne..<numberTwo
let toTwo = ...numberTwo

//Operadores logicos
let allowEntry = false

if !allowEntry{
    print("ACCESO DENEGADO")
}
//AL AGREGAR UN ! CAMBIA LAS REGLAS DEL IF

let enterDoorCode = false
let passRetinaScan = false

if enterDoorCode && passRetinaScan {
    print("Puede pasar")
}else{
    print("NO PUEDE PASAR")
}
//&& es una dependecia de ambas situaciones que se deben de cumplir

let hasMoney = false
let hasInvitation = true

if hasMoney || hasInvitation {
    print("Bienvenido a la fiesta")
}else{
    print("No puedes pasar")
}
//||, "or", es indepediente cada uno, se puede cumplir ambos

if (enterDoorCode && passRetinaScan) || hasMoney || hasInvitation {
    print("Puedes pasar")
}else{
    print("NO PUEDE PASAR")
}

let haveAMac = true
let knowMath = false
let knowSwift = false
let knowObjetiveC = true

if (knowMath && knowSwift && haveAMac) || (knowObjetiveC && haveAMac){
    print("Puedes desarollar apps para iOS!")
}else{
    print("No puedes desarollar para iOS :(")
}

