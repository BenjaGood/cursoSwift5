import UIKit

let someString = "Soy un string cualquiera"

let multiLineString = """
 Soy Benjamin Gutierrez\
 Estamos haciendo el curso de Swift\
 xd
"""
// EL \ SIRVE PARA QUITAR EL "\N"

print(multiLineString)

let wiseWords = "\"La imaginacion es las importante que el saber\" -Albert Einstein"
let dolarSing = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

//Reto
let name = "Benjamin"
let flagMex = "\u{1F1F2}" + "\u{1F1FD}"
let text = """
 Hola, me llamo \(name)\
 Soy de Mexico \(flagMex)\
 y estoy tomando el curso de Swift 5 en platzi!
"""
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("El string esta vacio")
}else{
    print("El string tiene valor")
}

var newSomeString = "Un caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"

let aString = "Juan Gabriel"
//aString += " y Ricardo Celis" <-- ERROR, PORQUE ES UNA LET (CONSTANTE)

var a = "A"
var b = "B"
print("a vale \(a), b vale \(b)")
b = a
print("a vale \(a), b vale \(b)")
b = "C"
print("a vale \(a), b vale \(b)")
a = "D"
print("a vale \(a), b vale \(b)")

let myName = "Benjamin"
for ch in name {
    print(ch)
}
print(name.count)

let exclamationMark : Character = "!"

let nameChars: [Character] =  ["B", "e", "n", "j", "a", "m", "i", "n"]
var nameString = String(nameChars)
nameString.append(flagMex)
print("\(nameString)")

let compoundName = "Ben" + "jamin" + "."

nameString.append(exclamationMark)
//APEND JUNTA STRINGS

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)"
message.append(exclamationMark)


